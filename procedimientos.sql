-- Procedimiento A probar 
CREATE PROCEDURE RealizarCompraOnline
    @ClienteId INT
AS
BEGIN
    -- Declaración de variables


    DECLARE @NroOrden INT;
    DECLARE @FacturaId INT;
	DECLARE @ordenId INT;
    DECLARE @SubTotal DECIMAL(10, 2);
    DECLARE @MontoIVA DECIMAL(10, 2);
    DECLARE @MontoTotal DECIMAL(10, 2);
    DECLARE @ProductoId INT;
    DECLARE @Cantidad INT;
    DECLARE @PrecioPor DECIMAL(10, 2);
    DECLARE @PorcentajeIVA DECIMAL(5, 2);
    DECLARE @InventarioCantidad INT;
    DECLARE cursorCarrito CURSOR FOR
        SELECT ProductoId, Cantidad, PrecioPor FROM Carrito WHERE ClienteId = @ClienteId;
    -- Iniciar transacción
    BEGIN TRANSACTION;
    -- Crear orden
	Select @NroOrden = max(nroOrden)+1 from OrdenOnline;

    INSERT INTO OrdenOnline (ClienteId, FechaCreacion, TipoEnvioId, nroOrden)
    VALUES (@ClienteId, GETDATE(), 1,@NroOrden);

	SET @ordenId = SCOPE_IDENTITY();


    -- Recorrer carrito
    OPEN cursorCarrito;
    FETCH NEXT FROM cursorCarrito INTO @ProductoId, @Cantidad, @PrecioPor;
    WHILE @@FETCH_STATUS = 0
    BEGIN

		-- Insertar OrdenDetalle
        INSERT INTO OrdenDetalle (OrdenId, ProductoId, Cantidad, PrecioPor)
        VALUES (@ordenId, @ProductoId, @Cantidad, @PrecioPor);

    END
    CLOSE cursorCarrito;
    DEALLOCATE cursorCarrito;
    -- Calcular IVA y total

    -- Insertar pago
    INSERT INTO Pago (FacturaId, MetodoPagoId)
    VALUES (@FacturaId, 1);
    -- Eliminar carrito
    DELETE FROM Carrito WHERE ClienteId = @ClienteId;
    -- Confirmar transacción
    COMMIT TRANSACTION;
END;
GO

-- Procedimiento C 
Create PROCEDURE CrearFacturaFisica(
    @idCliente INT,
    @idEmpleado VARCHAR(20))
AS
BEGIN
    SET NOCOUNT ON; -- Evita que se devuelva el número de filas afectadas

    BEGIN TRY
        BEGIN TRANSACTION;

        -- Declarar variables
        DECLARE @idFactura INT;
        DECLARE @idSucursal INT;

        -- 1. Crear la Factura
        INSERT INTO Factura (fechaEmision, clienteId, subTotal, montoDescuentoTotal, porcentajeIVA, montoIVA, montoTotal)
        VALUES (GETDATE(), @idCliente, null, null, 16.00, null, null);

        -- Obtener el ID de la factura generada
        SET @idFactura = SCOPE_IDENTITY();

        -- 2. Obtener la sucursal del empleado
        SELECT @idSucursal = sucursalId FROM Empleado WHERE id = @idEmpleado;

        -- 3. Crear la VentaFisica
        INSERT INTO VentaFisica (facturaid, sucursalid, empleadoId)
        VALUES (@idFactura, @idSucursal, @idEmpleado);

        COMMIT TRANSACTION;

    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0 
            ROLLBACK TRANSACTION;

        -- Devolver el error
        THROW;
    END CATCH;
END;
GO

-- Procedimiento D
Create PROCEDURE AgregarProductoAFactura (
    @FacturaId INT,
    @ProductoId INT,
    @cantidad INT,
    @precioPor DECIMAL(10, 2)
)
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        BEGIN TRANSACTION;

        -- 1. Insertar el detalle de la factura
        INSERT INTO FacturaDetalle (facturaId, productoId, cantidad, precioPor)
        VALUES (@FacturaId, @ProductoId, @cantidad, @precioPor);

        -- 2. Actualizar los totales de la factura usando funciones
        UPDATE Factura 
        SET 
            subTotal = dbo.GetSubTotal(@FacturaId), 
            montoDescuentoTotal = dbo.GetMontoDescuentoTotal(@FacturaId), 
            montoIVA = dbo.GetmontoIVA(@FacturaId), 
            montoTotal = dbo.GetMontoTotal(@FacturaId) 
        WHERE id = @FacturaId;

        -- 3. Actualizar el inventario
        UPDATE Inventario 
        SET cantidad = cantidad - @cantidad 
        WHERE productoId = @ProductoId;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        IF @@TRANCOUNT > 0
            ROLLBACK TRANSACTION;
        THROW;
    END CATCH;
END;


-- E
GO
ALTER PROCEDURE ReporteEfectividadPromo (
    @promoId INT
)
AS
BEGIN
    SET NOCOUNT ON; -- Mejora el rendimiento al evitar el envío de mensajes de conteo de filas

    DECLARE @fechaInicio DATE;
    DECLARE @fechaFin DATE;
    DECLARE @fechaInicioPrevia DATE;
    DECLARE @cantidadVentasPrevia INT;
    DECLARE @montoIngresoPrevio DECIMAL(10, 2);
    DECLARE @cantidadVentasPromo INT;
    DECLARE @montoIngresoPromo DECIMAL(10, 2);
    DECLARE @porcentajeCambioVentas DECIMAL(10, 2);
    DECLARE @porcentajeCambioIngresos DECIMAL(10, 2);
    DECLARE @MediaVentasP DECIMAL(10, 2); -- Cambiado a DECIMAL para mayor precisión
    DECLARE @MediaMontosP DECIMAL(10, 2); -- Cambiado a DECIMAL para mayor precisión
    DECLARE @MediaVentas DECIMAL(10, 2); -- Cambiado a DECIMAL para mayor precisión
    DECLARE @MediaMontos DECIMAL(10, 2); -- Cambiado a DECIMAL para mayor precisión

    -- Obtener fechas de la promoción
    SELECT @fechaInicio = fechaInicio, @fechaFin = fechaFin
    FROM Promo
    WHERE id = @promoId;

    -- Calcular fecha de inicio del período previo (3 meses antes)
    SET @fechaInicioPrevia = DATEADD(MONTH, -3, @fechaInicio);

    -- Calcular ventas y montos del período previo
    SELECT
        @cantidadVentasPrevia = COUNT(DISTINCT fp.facturaId),
        @montoIngresoPrevio = SUM(f.montoTotal)
    FROM FacturaPromo fp
    JOIN Factura f ON fp.facturaId = f.id
    WHERE fp.promoId = @promoId
    AND f.fechaEmision >= @fechaInicioPrevia AND f.fechaEmision < @fechaInicio;

    -- Calcular ventas y montos del período de promoción
    SELECT
        @cantidadVentasPromo = COUNT(DISTINCT fp.facturaId),
        @montoIngresoPromo = SUM(f.montoTotal)
    FROM FacturaPromo fp
    JOIN Factura f ON fp.facturaId = f.id
    WHERE fp.promoId = @promoId
    AND f.fechaEmision >= @fechaInicio AND f.fechaEmision <= @fechaFin;

    -- Medias Previas
    SELECT
        @MediaVentasP = COALESCE(CAST(@cantidadVentasPrevia AS DECIMAL(10, 2)) / NULLIF(COUNT(DISTINCT f.Id), 0), 0),
        @MediaMontosP = COALESCE(@montoIngresoPrevio / NULLIF(COUNT(DISTINCT f.Id), 0), 0)
    FROM Factura f
    WHERE f.fechaEmision >= @fechaInicioPrevia AND f.fechaEmision < @fechaInicio;

    -- Medias durante la promo
    SELECT
        @MediaVentas = COALESCE(CAST(@cantidadVentasPromo AS DECIMAL(10, 2)) / NULLIF(COUNT(DISTINCT f.Id), 0), 0),
        @MediaMontos = COALESCE(@montoIngresoPromo / NULLIF(COUNT(DISTINCT f.Id), 0), 0)
    FROM Factura f
    WHERE f.fechaEmision >= @fechaInicio AND f.fechaEmision <= @fechaFin;

    -- Calcular porcentajes de cambio
    SET @porcentajeCambioVentas = COALESCE(((@cantidadVentasPromo - @cantidadVentasPrevia)* 100 / NULLIF(@cantidadVentasPrevia, 0)), 0);

    SET @porcentajeCambioIngresos = COALESCE(((@montoIngresoPromo - @montoIngresoPrevio)* 100 / NULLIF(@montoIngresoPrevio, 0)), 0);

    -- Generar el reporte
    SELECT
        @MediaVentasP AS 'Media Ventas Previa',
        @MediaMontosP AS 'Media Monto Previa',
        @MediaVentas AS 'Media Ventas Promo',
        @MediaMontos AS 'Media Ingresos Promo',
        @porcentajeCambioVentas AS 'Cambio Ventas (%)',
        @porcentajeCambioIngresos AS 'Cambio Ingresos (%)';

END;

--EXEC CrearFacturaFisica 2,2

--EXEC AgregarProductoAFactura @FacturaId= , @ProductoId=5, @cantidad=2 , @precioPor= 1
