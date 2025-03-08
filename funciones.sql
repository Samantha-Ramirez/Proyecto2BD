--Costo envio 
CREATE FUNCTION dbo.GetCostoEnvio (@ordenId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @costoEnvio DECIMAL(10,2);
    SELECT @costoEnvio = te.costoEnvio
    FROM OrdenOnline oo
    JOIN TipoEnvio te ON oo.tipoEnvioId = te.id
    WHERE oo.id = @ordenId;
    RETURN ISNULL(@costoEnvio, 0);
END;


--Subtotal
CREATE FUNCTION dbo.GetSubTotal (@ordenId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @subTotal DECIMAL(10,2);
    SELECT @subTotal = SUM(od.cantidad * od.precioPor)
    FROM OrdenOnline oo
    JOIN OrdenDetalle od ON oo.id = od.ordenId
    WHERE oo.id = @ordenId;
    RETURN ISNULL(@subTotal, 0);
END;

--Descuento
CREATE FUNCTION dbo.GetMontoDescuentoTotal (@ordenId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @montoDescuentoTotal DECIMAL(10,2);
    SELECT @montoDescuentoTotal = SUM(
        CASE 
            WHEN p.tipoDescuento = 'Porcentaje' THEN (od.cantidad * od.precioPor * p.valorDescuento / 100)
            WHEN p.tipoDescuento = 'Fijo' THEN p.valorDescuento
            ELSE 0
        END
    )
    FROM OrdenOnline oo
    JOIN Factura f ON oo.facturaId = f.id
    JOIN FacturaPromo fp ON f.id = fp.facturaId
    JOIN Promo p ON fp.promoId = p.id
    JOIN OrdenDetalle od ON oo.id = od.ordenId
    WHERE oo.id = @ordenId
    AND p.fechaFin >= GETDATE()
    AND p.tipoPromocion IN ('Online', 'Ambos');
    RETURN ISNULL(@montoDescuentoTotal, 0);
END;

--Monto IVA
CREATE FUNCTION dbo.GetMontoIVA (@ordenId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @montoIVA DECIMAL(10,2);
    SELECT @montoIVA = SUM(
        CASE 
            WHEN pr.esExentoIVA = 0 THEN 
                (od.cantidad * od.precioPor - 
                 ISNULL((
                     CASE 
                         WHEN p.tipoDescuento = 'Porcentaje' THEN (od.cantidad * od.precioPor * p.valorDescuento / 100)
                         WHEN p.tipoDescuento = 'Fijo' THEN p.valorDescuento
                         ELSE 0
                     END
                 ), 0)) * (f.porcentajeIVA / 100)
            ELSE 0
        END
    )
    FROM OrdenOnline oo
    JOIN Factura f ON oo.facturaId = f.id
    JOIN OrdenDetalle od ON oo.id = od.ordenId
    JOIN Producto pr ON od.productoId = pr.id
    LEFT JOIN FacturaPromo fp ON f.id = fp.facturaId
    LEFT JOIN Promo p ON fp.promoId = p.id
    WHERE oo.id = @ordenId;
    RETURN ISNULL(@montoIVA, 0);
END;


--Total
CREATE FUNCTION dbo.GetMontoTotal (@ordenId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @subTotal DECIMAL(10,2) = dbo.GetSubTotal(@ordenId);
    DECLARE @montoDescuentoTotal DECIMAL(10,2) = dbo.GetMontoDescuentoTotal(@ordenId);
    DECLARE @montoIVA DECIMAL(10,2) = dbo.GetMontoIVA(@ordenId);
    DECLARE @costoEnvio DECIMAL(10,2) = dbo.GetCostoEnvio(@ordenId);
    
    RETURN (@subTotal - @montoDescuentoTotal) + @montoIVA + @costoEnvio;
END;

--Promo valida
CREATE FUNCTION dbo.IsPromoValida (@facturaId INT, @promoId INT)
RETURNS BIT
AS
BEGIN
    DECLARE @esValida BIT = 0;
    DECLARE @fechaActual DATE = GETDATE();
    DECLARE @tipoPromocion VARCHAR(50);
    DECLARE @fechaFin DATE;
    DECLARE @esOrdenOnline BIT;
    DECLARE @esVentaFisica BIT;

    -- Obtener información de la promoción
    SELECT @tipoPromocion = tipoPromocion, @fechaFin = fechaFin
    FROM Promo
    WHERE id = @promoId;

    -- Verificar si la factura está asociada a una orden online o venta física
    SET @esOrdenOnline = (SELECT COUNT(*) FROM OrdenOnline WHERE facturaId = @facturaId);
    SET @esVentaFisica = (SELECT COUNT(*) FROM VentaFisica WHERE facturaId = @facturaId);

    -- Verificar validez
    IF @fechaFin >= @fechaActual
    BEGIN
        IF (@esOrdenOnline = 1 AND @tipoPromocion IN ('Online', 'Ambos'))
            OR (@esVentaFisica = 1 AND @tipoPromocion IN ('Fisica', 'Ambos'))
        BEGIN
            SET @esValida = 1;
        END
    END

    RETURN @esValida;
END;
