-- Trigger A
-- Inventario
CREATE TRIGGER ProveedorProductoInsertarInventario
    ON ProveedorProducto
    AFTER INSERT -- Al tener datos nuevos
    AS BEGIN
        -- Si el producto no existe: crea el registro
        IF NOT EXISTS (SELECT 1 FROM Inventario I JOIN inserted ON inserted.productoId = I.productoId)
            BEGIN 
                INSERT INTO Inventario (productoId, cantidad)
                    SELECT 
                        productoId, 
                        cantidad
                    FROM inserted;
            END
        -- else: actualizar cantidad
        ELSE 
            BEGIN
                UPDATE Inventario
                    SET cantidad = I.cantidad + inserted.cantidad
                    FROM Inventario I
                    JOIN inserted ON inserted.productoId = I.productoId;
            END
    END;
    GO

-- Factura 
-- Solo para ordenes online
-- Obviar el pago
-- Venta fisica pasa directo a factura no tiene orden detalle pero si factura detalle 
-- Al crear ordenOnline crear Factura en NULL, luego ir actualizando los montos cada vez que entra un orden detalle 
-- TOFIX: si no hay ordenDetalle no crear facturaDetalle y crear factura con los montos en NULL
-- TOFIX: con los inserts  ya le damos una factura a ordenOnline pero se se activa el trigger y mete otra ?
-- Proceso
-- Factura se inicializa en nulo
-- Busca entradas en factura detalle y opera 
-- Llena factura con el calculo 
-- Funcion recibe id factura 
-- Excepto costo envio porque venta fisica no tiene y no aplica para ellas
CREATE TRIGGER OrdenOnlineInsertarFactura
    ON OrdenOnline
    AFTER INSERT -- Al tener datos nuevos
    AS BEGIN
        DECLARE @ordenId INT, @facturaId INT, @clienteId INT, @subTotal DECIMAL(10,2), @montoDescuentoTotal DECIMAL(10,2), @porcentajeIVA DECIMAL(10,2), @montoIVA DECIMAL(10,2), @montoTotal DECIMAL(10,2);

        -- Obtener ordenId, clienteId
        SELECT 
            @ordenId = id,
            @clienteId = clienteId,
        FROM inserted;

        -- Obtener subTotal, montoDescuentoTotal, porcentajeIVA, montoIVA, montoTotal
        SET @subTotal = dbo.subTotal(@ordenId);
        SET @montoDescuentoTotal = dbo.montoDescuentoTotal(@ordenId);
        SET @porcentajeIVA = 16.0; -- Asumir IVA 16%
        SET @montoIVA = dbo.montoIVA(@ordenId);
        SET @montoTotal = dbo.esPmontoTotal(@ordenId);

        -- Crear Factura
        -- TOFIX: Validacion de que no tenga ninguna factura asociada
        INSERT INTO Factura (fechaEmision, clienteId, subTotal, montoDescuentoTotal, porcentajeIVA, montoIVA, montoTotal) VALUES 
            (GETDATE(), @clienteId, @subTotal, @montoDescuentoTotal, @porcentajeIVA, @montoIVA, @montoTotal)
        
        -- Obtener facturaId
        SELECT 
            @facturaId = MAX(id),
        FROM Factura;

        -- Asociar OrdenOnline y Factura
        UPDATE OrdenOnline
            SET facturaId = @facturaId
            WHERE id = @ordenId;
    END;
    GO

-- FacturaDetalle
CREATE TRIGGER OrdenDetalleInsertarFacturaDetalle
    ON OrdenDetalle
    AFTER INSERT -- Al tener datos nuevos
    AS BEGIN
        DECLARE @facturaId INT, @productoId INT, @cantidad INT, @precioPor DECIMAL(10,2);

        -- Obtener facturaId, productoId, cantidad, precioPor
        SELECT 
            @facturaId = OO.facturaId,
            @productoId = inserted.productoId, 
            @cantidad = inserted.cantidad, 
            @precioPor = inserted.precioPor
        FROM OrdenOnline OO
        JOIN inserted ON inserted.ordenId = OO.id;

        -- Crear FacturaDetalle y copiar contenido de OrdenDetalle
        INSERT INTO FacturaDetalle (facturaId, productoId, cantidad, precioPor) VALUES 
            (@facturaId, @productoId, @cantidad, @precioPor)
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
        -- Verificar más de 3 veces
        DECLARE @productoId INT, @clienteId INT, @cantidadComprasProducto INT;
        SELECT 
            @clienteId = F.clienteId,
            @productoId = inserted.productoId
        FROM inserted
        JOIN Factura F ON F.id = inserted.facturaId;

        -- TOFIX: 3 compras o 3 cantidades?
        SELECT 
            @cantidadComprasProducto = COUNT(*)
        FROM FacturaDetalle FD
        JOIN Factura F ON F.id = FD.facturaId
        WHERE FD.productoId = @productoId
        AND F.clienteId = @clienteId;

        IF (@cantidadComprasProducto <= 3)
            BEGIN
                RETURN;
            END;
        
        DECLARE @productoRecomendadoId INT, @mensaje VARCHAR(50);
        DECLARE cur CURSOR FOR
        -- Buscar productos recomendados para ese producto 
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
        -- Verificar más de 3 veces
        DECLARE @productoId INT, @clienteId INT, @cantidadBusquedasProducto INT;
        SELECT 
            @clienteId = clienteId,
            @productoId = productoId
        FROM inserted;

        -- TOFIX: 3 busquedas o 3 cantidades?
        SELECT 
            @cantidadBusquedasProducto = COUNT(*)
        FROM HistorialClienteProducto 
        WHERE productoId = @
        AND clienteId = @clienteId
        AND tipoAccion = 'Búsqueda';

        IF (@cantidadBusquedasProducto <= 3)
            BEGIN
                RETURN;
            END;
        
        DECLARE @productoRecomendadoId INT, @mensaje VARCHAR(50);
        DECLARE cur CURSOR FOR
        -- Buscar productos recomendados para ese producto 
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
        SET @esPromoValida = dbo.esPromoValida(@facturaId);

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
                RAISERROR('El producto no está disponible por los momentos', 16, 1);
                RETURN;
            END;
        -- Si no hay stock suficiente: La operación se cancelará diciendo que “No hay unidades suficientes del producto para esta compra”
        ELSE IF (@cantidadStock < @cantidadSolicitada)
            BEGIN
                RAISERROR('No hay unidades suficientes del producto para esta compra', 16, 1);
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
            RAISERROR('El producto no está disponible por los momentos', 16, 1);
            RETURN;
        END;
        -- else: La operación se cancelará diciendo que “No hay unidades suficientes del producto para esta compra”
        ELSE IF (@cantidadStock < @cantidadSolicitada)
        BEGIN
            RAISERROR('No hay unidades suficientes del producto para esta compra', 16, 1);
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