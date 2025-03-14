-- Trigger A
-- Inventario
CREATE TRIGGER ProductoInsertarInventario
    ON Producto
    AFTER INSERT -- Al tener datos nuevos
    AS BEGIN
        -- Crear registro en 0 para el producto
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
        -- Actualizar registros
        UPDATE Inventario
            SET cantidad = I.cantidad + InsAgrupado.cantidadTotal -- Sumar cantidad actual con cantidad total comprada
            FROM Inventario I
            JOIN -- Agrupar registros por producto y obtener cantidad total comprada
                (SELECT 
                    productoId, 
                    SUM(cantidad) AS cantidadTotal
                FROM inserted
                GROUP BY productoId
                ) AS InsAgrupado ON InsAgrupado.productoId = I.productoId;
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
        DECLARE @facturaUltimoId INT = SCOPE_IDENTITY(); -- Ultimo ID generado

        -- Asociar OrdenOnline y Factura
        UPDATE OrdenOnline
            SET facturaId = @facturaUltimoId
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
            @productoId = Ins.productoId, 
            @cantidad = Ins.cantidad, 
            @precioPor = Ins.precioPor
        FROM OrdenOnline OO
        JOIN inserted Ins ON Ins.ordenId = OO.id;

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
        SET @subTotal = dbo.GetsubTotal(@facturaId);
        SET @montoDescuentoTotal = dbo.GetmontoDescuentoTotal(@facturaId);
        SET @montoIVA = dbo.GetmontoIVA(@facturaId);
        SET @montoTotal = dbo.GetMontoTotal(@facturaId);

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
        -- Crear registro con cliente, producto, fecha agregado, de tipo Carrito
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
        -- Crear registro con cliente, producto, fecha emision, de tipo Compra
        INSERT INTO HistorialClienteProducto (clienteId, productoId, fecha, tipoAccion)
            SELECT 
                F.clienteId, 
                Ins.productoId, 
                F.fechaEmision, 
                'Compra'
            FROM inserted Ins
            JOIN Factura F ON F.id = Ins.facturaId;
    END;
    GO

-- ProductoRecomendadoParaCliente 
CREATE TRIGGER FacturaDetalleInsertarProductoRecomendadoParaCliente
    ON FacturaDetalle
    AFTER INSERT -- Al comprar un producto 
    AS BEGIN
        -- Tabla temporal
        CREATE TABLE #InsertedData (
            clienteId INT,
            productoId INT,
            cantidad INT
        );

        -- Crear registros con inserted
        INSERT INTO #InsertedData (clienteId, productoId, cantidad)
            SELECT
                F.clienteId,
                Ins.productoId,
                Ins.cantidad
            FROM inserted Ins
            JOIN Factura F ON F.id = Ins.facturaId;

        -- Procesar cada combinacion de clienteId y productoId
        INSERT INTO ProductoRecomendadoParaCliente (clienteId, productoRecomendadoId, fechaRecomendacion, mensaje) -- Recomendarlos al cliente
            SELECT
                id.clienteId,
                PRP.productoRecomendadoId,
                GETDATE(),
                PRP.mensaje
            FROM 
                SELECT clienteId, productoId, SUM(cantidad) AS cantidadComprasProducto
                FROM
                    (SELECT 
                        clienteId, 
                        productoId, 
                        SUM(cantidad) AS cantidadComprasProducto -- Obtener cantidad de compras del producto por el cliente
                    FROM 
                        (SELECT 
                            clienteId, 
                            productoId, 
                            cantidad
                        FROM FacturaDetalle FD
                        JOIN Factura F ON F.id = FD.facturaId
                        UNION ALL
                        SELECT 
                            clienteId, 
                            productoId, 
                            cantidad
                        FROM #InsertedData
                        ) AS Compras
                GROUP BY clienteId, productoId
            ) AS id
            JOIN ProductoRecomendadoParaProducto PRP ON PRP.productoId = id.productoId -- Buscar productos recomendados para ese producto 
            WHERE id.cantidadComprasProducto > 3; -- Verificar más de 3 veces

        -- Eliminar tabla temporal
        DROP TABLE #InsertedData;
    END;
    GO

-- ProductoRecomendadoParaCliente 
CREATE TRIGGER HistorialClienteProductoInsertarProductoRecomendadoParaCliente
    ON HistorialClienteProducto -- Al buscar un producto 
    AFTER INSERT
    AS BEGIN
        -- Tabla temporal
        CREATE TABLE #InsertedData (
            clienteId INT,
            productoId INT
        );

        -- Crear registros con inserted
        INSERT INTO #InsertedData (clienteId, productoId)
            SELECT 
                clienteId, 
                productoId
            FROM inserted;

        -- Procesar cada combinacion de clienteId y productoId
        INSERT INTO ProductoRecomendadoParaCliente (clienteId, productoRecomendadoId, fechaRecomendacion, mensaje) -- Recomendarlos al cliente
            SELECT
                id.clienteId,
                PRP.productoRecomendadoId,
                GETDATE(),
                PRP.mensaje
            FROM (
                SELECT
                    clienteId,
                    productoId,
                    COUNT(*) AS cantidadBusquedasProducto -- Obtener cantidad de busquedas del producto por el cliente
                FROM 
                    (SELECT clienteId, productoId
                    FROM HistorialClienteProducto
                    WHERE tipoAccion = 'Búsqueda'
                    UNION ALL
                    SELECT clienteId, productoId
                    FROM #InsertedData
                    WHERE tipoAccion = 'Búsqueda'
                    ) AS Busquedas
                GROUP BY clienteId, productoId
            ) AS id
            JOIN ProductoRecomendadoParaProducto PRP ON PRP.productoId = id.productoId -- Buscar productos recomendados para ese producto 
            WHERE id.cantidadBusquedasProducto > 3; -- Verificar más de 3 veces

        -- Eliminar tabla temporal
        DROP TABLE #InsertedData;
    END;
    GO

-- Trigger B
CREATE TRIGGER ProveedorProductoActualizarProducto
    ON ProveedorProducto
    AFTER INSERT -- Al comprar un producto al proveedor
    AS BEGIN
        -- Actualizar el precioPor del Producto
        UPDATE Producto
            SET precioPor = Ins.precioPor * 1.30 -- Tomar como base el precioPor el que se le compró al proveedor y sumarle un 30%
            FROM Producto P
            JOIN -- Agrupar registros por productoId y obtener ultimoId comprado
                (SELECT
                    productoId,
                    MAX(id) AS ultimoId
                FROM inserted
                GROUP BY productoId
                ) AS InsAgrupado ON InsAgrupado.productoId = P.id
                JOIN inserted Ins ON Ins.id = InsAgrupado.ultimoId;
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
                    SELECT 
                        facturaId, 
                        promoId
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
        -- Reintegrar automáticamente la cantidad al inventario para todas las filas eliminadas
        UPDATE Inventario
        SET cantidad = I.cantidad + DelAgrupado.cantidadTotal -- Sumar cantidad actual con cantidad total devuelta
        FROM Inventario I 
        JOIN -- Agrupar registros por producto y obtener cantidad total devuelta
            (SELECT 
                productoId, 
                SUM(cantidad) AS cantidadTotal
            FROM deleted
            GROUP BY productoId
            ) AS DelAgrupado ON DelAgrupado.productoId = I.productoId;
    END;
    GO