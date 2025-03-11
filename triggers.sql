-- Trigger A
-- Inventario
CREATE TRIGGER ProductoInsertarInventario
    ON Producto
    AFTER INSERT -- Al tener datos nuevos
    AS BEGIN
        -- Crear registro en 0
        INSERT INTO Inventario (productoId, cantidad)
            SELECT 
                id,
                0
            FROM inserted;
    END;
    GO

CREATE TRIGGER ProveedorProductoInsertarInventario
    ON ProveedorProducto
    AFTER INSERT -- Al tener datos nuevos
    AS BEGIN
        UPDATE Inventario
            SET cantidad = I.cantidad + inserted.cantidad
            FROM Inventario I
            JOIN inserted ON inserted.productoId = I.productoId;
    END;
    GO

-- Factura 
CREATE TRIGGER OrdenOnlineInsertarFactura
    ON OrdenOnline
    AFTER INSERT -- Al tener datos nuevos
    AS BEGIN
        DECLARE @ordenId INT, @facturaId INT, @clienteId INT, @subTotal DECIMAL(10,2), @montoDescuentoTotal DECIMAL(10,2), @porcentajeIVA DECIMAL(10,2), @montoIVA DECIMAL(10,2), @montoTotal DECIMAL(10,2);

        -- Obtener ordenId, clienteId
        SELECT 
            @ordenId = id,
            @clienteId = clienteId,
            @facturaId = facturaId
        FROM inserted;

        -- Si ya tiene una factura asociada
        IF (@facturaId IS NOT NULL)
            BEGIN
                RETURN;
            END;

        -- Crear Factura en NULL (exepto fechaEmision, clienteId, porcentajeIVA)
        SET @subTotal = NULL;
        SET @montoDescuentoTotal = NULL;
        SET @porcentajeIVA = 16;
        SET @montoIVA = NULL;
        SET @montoTotal = NULL;
        
        INSERT INTO Factura (fechaEmision, clienteId, subTotal, montoDescuentoTotal, porcentajeIVA, montoIVA, montoTotal) VALUES 
            (GETDATE(), @clienteId, @subTotal, @montoDescuentoTotal, @porcentajeIVA, @montoIVA, @montoTotal)
        
        -- Obtener lastId
        DECLARE @facturaLastId INT = SCOPE_IDENTITY(); -- Ultimo ID generado

        -- Asociar OrdenOnline y Factura
        UPDATE OrdenOnline
            SET facturaId = @facturaLastId
            WHERE id = @ordenId;
    END;
    GO

-- FacturaDetalle
CREATE TRIGGER OrdenDetalleInsertarFacturaDetalle
    ON OrdenDetalle
    AFTER INSERT -- Al tener datos nuevos
    AS BEGIN
        DECLARE @ordenId INT, @facturaId INT, @productoId INT, @cantidad INT, @precioPor DECIMAL(10,2), @subTotal DECIMAL(10,2), @montoDescuentoTotal DECIMAL(10,2), @montoIVA DECIMAL(10,2), @montoTotal DECIMAL(10,2);

        -- Obtener facturaId, productoId, cantidad, precioPor
        SELECT 
            @ordenId = OO.id,
            @facturaId = OO.facturaId,
            @productoId = inserted.productoId, 
            @cantidad = inserted.cantidad, 
            @precioPor = inserted.precioPor
        FROM OrdenOnline OO
        JOIN inserted ON inserted.ordenId = OO.id;

        -- Si ya tiene una factura detalle asociada
        IF EXISTS (SELECT 1 FROM FacturaDetalle FD WHERE FD.facturaId = @facturaId AND FD.productoId = @productoId)
            BEGIN
                RETURN;
            END;

        -- Crear FacturaDetalle y copiar contenido de OrdenDetalle
        INSERT INTO FacturaDetalle (facturaId, productoId, cantidad, precioPor) VALUES 
            (@facturaId, @productoId, @cantidad, @precioPor)

        -- Recalcular los valores totales de Factura
        -- Obtener subTotal, montoDescuentoTotal, porcentajeIVA, montoIVA, montoTotal
        SET @subTotal = dbo.GetsubTotal(@ordenId);
        SET @montoDescuentoTotal = dbo.GetmontoDescuentoTotal(@ordenId);
        SET @montoIVA = dbo.GetmontoIVA(@ordenId);
        SET @montoTotal = dbo.GetMontoTotal(@ordenId);

        UPDATE Factura
            SET subTotal = @subTotal, montoDescuentoTotal = @montoDescuentoTotal, montoIVA = @montoIVA, montoTotal = @montoTotal
            WHERE id = @facturaId;
    END;
    GO

-- HistorialClienteProducto 
CREATE TRIGGER CarritoInsertarHistorialClienteProducto
    ON Carrito
    AFTER INSERT -- Al agregar al carrito un producto
    AS BEGIN
        INSERT INTO HistorialClienteProducto (clienteId, productoId, fecha, tipoAccion)
            SELECT 
                clienteId, 
                productoId, 
                fechaAgregado, 
                'Carrito'
            FROM inserted;
    END;
    GO

-- HistorialClienteProducto 
CREATE TRIGGER FacturaDetalleInsertarHistorialClienteProducto
    ON FacturaDetalle
    AFTER INSERT -- Al comprar un producto
    AS BEGIN
        INSERT INTO HistorialClienteProducto (clienteId, productoId, fecha, tipoAccion)
            SELECT 
                F.clienteId, 
                inserted.productoId, 
                F.fechaEmision, 
                'Compra'
            FROM inserted 
            JOIN Factura F ON F.id = inserted.facturaId;
    END;
    GO

-- ProductoRecomendadoParaCliente 
CREATE TRIGGER FacturaDetalleInsertarProductoRecomendadoParaCliente
    ON FacturaDetalle
    AFTER INSERT -- Al comprar un producto 
    AS BEGIN
        DECLARE @productoId INT, @clienteId INT, @cantidadComprasProducto INT;
        SELECT 
            @clienteId = F.clienteId,
            @productoId = inserted.productoId
        FROM inserted
        JOIN Factura F ON F.id = inserted.facturaId;

        -- Obtener cantidad de compras del producto por el cliente
        SELECT
            @cantidadComprasProducto = SUM(cantidad)
        FROM FacturaDetalle FD
        JOIN Factura F ON F.id = FD.facturaId
        WHERE FD.productoId = @productoId
        AND F.clienteId = @clienteId;

        -- Verificar más de 3 veces
        IF (@cantidadComprasProducto <= 3)
            BEGIN
                RETURN;
            END;
        
         -- Buscar productos recomendados para ese producto 
        DECLARE @productoRecomendadoId INT, @mensaje VARCHAR(50);
        DECLARE cur CURSOR FOR
            SELECT 
                productoRecomendadoId, 
                mensaje
            FROM ProductoRecomendadoParaProducto
            WHERE productoId = @productoId;

        OPEN cur;
        FETCH NEXT FROM cur INTO @productoRecomendadoId, @mensaje;
        WHILE @@FETCH_STATUS = 0
        BEGIN
            -- Recomendarlos al cliente
            INSERT INTO ProductoRecomendadoParaCliente (clienteId, productoRecomendadoId, fechaRecomendacion, mensaje) VALUES 
                (@clienteId, @productoRecomendadoId, GETDATE(), @mensaje)

            FETCH NEXT FROM cur INTO @productoRecomendadoId, @mensaje;
        END;

        CLOSE cur;
        DEALLOCATE cur; 
    END;
    GO

-- ProductoRecomendadoParaCliente 
CREATE TRIGGER HistorialClienteProductoInsertarProductoRecomendadoParaCliente
    ON HistorialClienteProducto
    AFTER INSERT -- Al buscar un producto 
    AS BEGIN
        DECLARE @productoId INT, @clienteId INT, @cantidadBusquedasProducto INT;
        SELECT 
            @clienteId = clienteId,
            @productoId = productoId
        FROM inserted;

        -- Obtener cantidad de busquedas del producto por el cliente
        SELECT 
            @cantidadBusquedasProducto = COUNT(*)
        FROM HistorialClienteProducto 
        WHERE productoId = @productoId
        AND clienteId = @clienteId
        AND tipoAccion = 'Búsqueda';

        -- Verificar más de 3 veces
        IF (@cantidadBusquedasProducto <= 3)
            BEGIN
                RETURN;
            END;
        
         -- Buscar productos recomendados para ese producto 
        DECLARE @productoRecomendadoId INT, @mensaje VARCHAR(50);
        DECLARE cur CURSOR FOR
            SELECT 
                productoRecomendadoId, 
                mensaje
            FROM ProductoRecomendadoParaProducto
            WHERE productoId = @productoId;

        OPEN cur;
        FETCH NEXT FROM cur INTO @productoRecomendadoId, @mensaje;
        WHILE @@FETCH_STATUS = 0
        BEGIN
            -- Recomendarlos al cliente
            INSERT INTO ProductoRecomendadoParaCliente (clienteId, productoRecomendadoId, fechaRecomendacion, mensaje) VALUES 
                (@clienteId, @productoRecomendadoId, GETDATE(), @mensaje)

            FETCH NEXT FROM cur INTO @productoRecomendadoId, @mensaje;
        END;

        CLOSE cur;
        DEALLOCATE cur; 
    END;
    GO

-- Trigger B
CREATE TRIGGER ProveedorProductoActualizarProducto
    ON ProveedorProducto
    AFTER INSERT -- Al comprar un producto al proveedor
    AS BEGIN
        -- Actualizar el precioPor del Producto
        UPDATE Producto
            SET precioPor = inserted.precioPor * 1.30 -- Tomar como base el precioPor el que se le compró al proveedor y sumarle un 30%
            FROM Producto P
            JOIN inserted ON inserted.productoId = P.id;
    END;
    GO

-- Trigger C
CREATE TRIGGER FacturaPromoVerificarValida
    ON FacturaPromo
    INSTEAD OF INSERT -- Al insertar datos
    AS BEGIN
        DECLARE @facturaId INT, @promoId INT, @esPromoValida BIT;
        SELECT 
            @facturaId = facturaId, 
            @promoId = promoId
        FROM inserted;

        -- Llamar al verificador de promo válida 
        SET @esPromoValida = dbo.esPromoValida(@facturaId, @promoId);

        -- No aceptar el registro
        IF (@esPromoValida = 0)
            BEGIN
                RAISERROR('Registro no valido', 16, 1);
            END;
        -- Aceptar el registro
        ELSE
            BEGIN
                INSERT INTO FacturaPromo (facturaId, promoId)
                    SELECT facturaId, promoId
                    FROM inserted;
            END;     
    END;
    GO

-- Trigger D
-- Evitar compras de productos agotados en órdenes online
CREATE TRIGGER OrdenDetalleVerificarInventario
    ON OrdenDetalle 
    INSTEAD OF INSERT -- Antes de insertar un producto en una orden
    AS BEGIN
        DECLARE @productoId INT, @cantidadSolicitada INT, @cantidadStock INT;

        -- Cantidad solicitada del producto
        SELECT 
            @productoId = productoId, 
            @cantidadSolicitada = cantidad
        FROM inserted;

        -- Cantidad de stock del producto
        SELECT 
            @cantidadStock = cantidad
        FROM Inventario
        WHERE productoId = @productoId;

        -- Si no hay ni 1 unidad: La operación se cancelará diciendo que “El producto no está disponible por los momentos” 
        IF (@cantidadStock = 0)
            BEGIN 
                RAISERROR('El producto %d no está disponible por los momentos', 16, 1, @productoId);
                RETURN;
            END;
        -- Si no hay stock suficiente: La operación se cancelará diciendo que “No hay unidades suficientes del producto para esta compra”
        ELSE IF (@cantidadStock < @cantidadSolicitada)
            BEGIN
                RAISERROR('No hay unidades suficientes del producto %d para esta compra', 16, 1, @productoId);
                RETURN;
            END;

        -- Si hay suficiente stock
        INSERT INTO OrdenDetalle (ordenId, productoId, cantidad, precioPor)
            SELECT 
                ordenId, 
                productoId, 
                cantidad, 
                precioPor
            FROM inserted;
    END;
    GO

-- Evitar compras de productos agotados en órdenes físicas
CREATE TRIGGER FacturaDetalleVerificarInventario
    ON FacturaDetalle
    INSTEAD OF INSERT -- Antes de insertar un producto en una orden
    AS BEGIN
        DECLARE @productoId INT, @cantidadSolicitada INT, @cantidadStock INT;

        -- Cantidad solicitada del producto
        SELECT 
            @productoId = productoId, 
            @cantidadSolicitada = cantidad
        FROM inserted;

        -- Cantidad de stock del producto
        SELECT 
            @cantidadStock = cantidad
        FROM Inventario
        WHERE productoId = @productoId;

        -- Si no hay stock suficiente
        -- Si no hay ni 1 unidad: La operación se cancelará diciendo que “El producto no está disponible por los momentos” 
        IF (@cantidadStock = 0)
        BEGIN
            RAISERROR('El producto %d no está disponible por los momentos', 16, 1, @productoId);
            RETURN;
        END;
        -- else: La operación se cancelará diciendo que “No hay unidades suficientes del producto para esta compra”
        ELSE IF (@cantidadStock < @cantidadSolicitada)
        BEGIN
            RAISERROR('No hay unidades suficientes del producto %d para esta compra', 16, 1, @productoId);
            RETURN;
        END;

        -- Si hay suficiente stock
        INSERT INTO FacturaDetalle (facturaId, productoId, cantidad, precioPor)
            SELECT 
                facturaId, 
                productoId, 
                cantidad, 
                precioPor
            FROM inserted;
    END;
    GO

-- Trigger E
CREATE TRIGGER FacturaDetalleActualizarInventario
    ON FacturaDetalle
    AFTER DELETE -- Al eliminar un registro (devolución)
    AS BEGIN
        -- Reintegrar automáticamente la cantidad al inventario del producto correspondiente
        UPDATE Inventario
            SET cantidad = I.cantidad + deleted.cantidad
            FROM Inventario I
            JOIN deleted ON deleted.productoId = I.productoId;
    END;
    GO