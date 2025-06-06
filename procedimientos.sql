-- Procedimiento A 
CREATE PROCEDURE RealizarCompraOnline
    @ClienteId INT
AS
BEGIN
    -- Declaración de variables
    DECLARE @NroOrden INT;
    DECLARE @ordenId INT;
    DECLARE @FacturaId INT;
    DECLARE @ProductoId INT;
    DECLARE @Cantidad INT;
    DECLARE @PrecioPor DECIMAL(10, 2);

    BEGIN TRANSACTION;

    -- Obtener el próximo número de orden
    SELECT @NroOrden = ISNULL(MAX(nroOrden), 0) + 1 FROM OrdenOnline WITH (UPDLOCK, SERIALIZABLE);

    -- Crear la orden
    INSERT INTO OrdenOnline (ClienteId, FechaCreacion, TipoEnvioId, nroOrden)
    VALUES (@ClienteId, GETDATE(), 1, @NroOrden);

    SET @ordenId = SCOPE_IDENTITY();


    -- Declarar cursor para recorrer los elementos del carrito
    DECLARE cur CURSOR FOR
    SELECT ProductoId, Cantidad, PrecioPor
    FROM Carrito
    WHERE ClienteId = @ClienteId;

    OPEN cur;

    FETCH NEXT FROM cur INTO @ProductoId, @Cantidad, @PrecioPor;

    -- Recorrer los elementos del carrito e insertar en OrdenDetalle
    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Insertar en OrdenDetalle
        INSERT INTO OrdenDetalle (OrdenId, ProductoId, Cantidad, PrecioPor)
        VALUES (@ordenId, @ProductoId, @Cantidad, @PrecioPor);

        FETCH NEXT FROM cur INTO @ProductoId, @Cantidad, @PrecioPor;
    END;

    CLOSE cur;
    DEALLOCATE cur;

    -- Insertar pago
	Select @FacturaId = FacturaId from OrdenOnline WHERE id = @ordenId;
    INSERT INTO Pago (FacturaId, MetodoPagoId)
    VALUES (@FacturaId, 1);

    -- Eliminar carrito
    DELETE FROM Carrito WHERE ClienteId = @ClienteId;

    -- Confirmar transacción
    COMMIT TRANSACTION;
END;
GO
	
-- Procedimiento B
    create PROCEDURE RealizarCompraAProveedor
    @ProveedorId INT,
    @ProductoId INT,
    @PrecioPor DECIMAL(10, 2),
    @Cantidad INT
AS
BEGIN

    BEGIN TRANSACTION;
    BEGIN TRY

        -- Actualizar el ProveedorProducto
		INSERT INTO ProveedorProducto (proveedorId, productoId, fechaCompra, precioPor, cantidad)
        VALUES (@ProveedorId, @ProductoId, GETDATE(), @PrecioPor, @Cantidad);
		-- Usa el trigger para actualizar el inventario(A)
		-- Se considera que el id de producto existe y que en caso de un nuevo producto se debe agregar ese producto a la tabla producto manualmente


        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH

        ROLLBACK TRANSACTION;


        THROW;
    END CATCH
END;
GO
-- Procedimiento C 
CREATE PROCEDURE CrearFacturaFisica (
    @idCliente INT,
    @idEmpleado INT)
AS
BEGIN
    SET NOCOUNT ON; 

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
CREATE PROCEDURE AgregarProductoAFactura (
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


-- Procedimiento E
GO
CREATE PROCEDURE ReporteEfectividadPromo
    @promoId INT
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @fechaInicio DATE;
    DECLARE @fechaFin DATE;
    DECLARE @fechaInicioPrevia DATE;
    DECLARE @cantidadVentasPrevia INT;
    DECLARE @montoIngresoPrevio DECIMAL(10, 2);
    DECLARE @cantidadVentasPromo INT;
    DECLARE @montoIngresoPromo DECIMAL(10, 2);

    DECLARE @porcentajeCambioVentas DECIMAL(10, 2);
    DECLARE @porcentajeCambioIngresos DECIMAL(10, 2);

    DECLARE @MediaVentasP DECIMAL(10, 2); 
    DECLARE @MediaMontosP DECIMAL(10, 2); 
    DECLARE @MediaVentas DECIMAL(10, 2); 
    DECLARE @MediaMontos DECIMAL(10, 2); 

    -- Obtener fechas de la promoción
    SELECT @fechaInicio = fechaInicio, @fechaFin = fechaFin
    FROM Promo
    WHERE id = @promoId;

    -- Validar si las fechas de la promoción son válidas
    IF @fechaInicio IS NULL OR @fechaFin IS NULL
    BEGIN
        RAISERROR('No se encontró la promoción con el ID especificado.', 16, 1);
        RETURN;
    END

    -- Calcular fecha de inicio del período previo (3 meses antes)
    SET @fechaInicioPrevia = DATEADD(MONTH, -3, @fechaInicio);

    -- Calcular ventas y montos del período previo
    SELECT
        @cantidadVentasPrevia = COUNT(DISTINCT f.id),
        @montoIngresoPrevio = SUM(f.montoTotal)
    FROM Factura f
    WHERE f.fechaEmision >= @fechaInicioPrevia AND f.fechaEmision < @fechaInicio;

    -- Calcular ventas y montos del período de promoción
    SELECT
        @cantidadVentasPromo = COUNT(DISTINCT fp.facturaId),
        @montoIngresoPromo = SUM(f.montoTotal)
    FROM FacturaPromo fp
    JOIN Factura f ON fp.facturaId = f.id
    WHERE f.fechaEmision >= @fechaInicio AND f.fechaEmision <= @fechaFin;


	--- Se saca es la media por mes de las ventas y montos
    -- Calcular medias previas (por mes)
    SELECT
        @MediaVentasP = COALESCE(CAST(@cantidadVentasPrevia AS DECIMAL(10, 2)) / NULLIF(DATEDIFF(MONTH, @fechaInicioPrevia, @fechaInicio), 0), 0),
        @MediaMontosP = COALESCE(@montoIngresoPrevio / NULLIF(DATEDIFF(MONTH, @fechaInicioPrevia, @fechaInicio), 0), 0);

    -- Calcular medias durante la promoción (por mes)
    SELECT
        @MediaVentas = COALESCE(CAST(@cantidadVentasPromo AS DECIMAL(10, 2)) / NULLIF(DATEDIFF(MONTH, @fechaInicio, @fechaFin), 0), 0),
        @MediaMontos = COALESCE(@montoIngresoPromo / NULLIF(DATEDIFF(MONTH, @fechaInicio, @fechaFin), 0), 0);

    -- Calcular porcentajes de cambio
	-- N/A sinifica que es idefinido
    IF @MediaVentasP = 0 OR @MediaMontosP = 0
    BEGIN
        SELECT
            @MediaVentasP AS 'Media Ventas Previa',
            @MediaMontosP AS 'Media Monto Previa',
            @MediaVentas AS 'Media Ventas Promo',
            @MediaMontos AS 'Media Ingresos Promo',
            'N/A' AS 'Cambio Ventas (%)',
            'N/A' AS 'Cambio Ingresos (%)';
    END
    ELSE
    BEGIN
	--- se saca el cambio porcentual de las medias si es positivo es incremento y si es negativo es decremento
        SET @porcentajeCambioVentas = COALESCE(((@MediaVentas - @MediaVentasP) * 100.0 / NULLIF(@MediaVentasP, 0)), 0);
        SET @porcentajeCambioIngresos = COALESCE(((@MediaMontos - @MediaMontosP) * 100.0 / NULLIF(@MediaMontosP, 0)), 0);

        -- Generar el reporte
        SELECT
            @MediaVentasP AS 'Media Ventas Previa',
            @MediaMontosP AS 'Media Monto Previa',
            @MediaVentas AS 'Media Ventas Promo',
            @MediaMontos AS 'Media Ingresos Promo',
            @porcentajeCambioVentas AS 'Cambio Ventas (%)',
            @porcentajeCambioIngresos AS 'Cambio Ingresos (%)';
    END
END;
