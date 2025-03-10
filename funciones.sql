GO
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
GO

--Subtotal
CREATE FUNCTION dbo.GetSubTotal (@facturaId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @subTotal DECIMAL(10,2);
    DECLARE @esOrdenOnline BIT = CASE WHEN EXISTS (SELECT 1 FROM OrdenOnline WHERE facturaId = @facturaId) THEN 1 ELSE 0 END;

    IF @esOrdenOnline = 1
        SELECT @subTotal = SUM(od.cantidad * od.precioPor)
        FROM OrdenOnline oo
        JOIN OrdenDetalle od ON oo.id = od.ordenId
        WHERE oo.facturaId = @facturaId;
    ELSE
        SELECT @subTotal = SUM(fd.cantidad * fd.precioPor)
        FROM FacturaDetalle fd
        WHERE fd.facturaId = @facturaId;

    RETURN ISNULL(@subTotal, 0);
END;
GO

--Descuento
CREATE FUNCTION dbo.GetMontoDescuentoTotal (@facturaId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @montoDescuentoTotal DECIMAL(10,2);
    DECLARE @esOrdenOnline BIT = CASE WHEN EXISTS (SELECT 1 FROM OrdenOnline WHERE facturaId = @facturaId) THEN 1 ELSE 0 END;
    DECLARE @esVentaFisica BIT = CASE WHEN EXISTS (SELECT 1 FROM VentaFisica WHERE facturaId = @facturaId) THEN 1 ELSE 0 END;
    DECLARE @fechaEmision DATE;

    -- Obtener la fecha de emisión de la factura
    SELECT @fechaEmision = fechaEmision
    FROM Factura
    WHERE id = @facturaId;

    IF @esOrdenOnline = 1
        SELECT @montoDescuentoTotal = SUM(
            CASE 
                WHEN p.tipoDescuento = 'Porcentaje' 
                     AND (pe.promoId IS NULL OR pe.productoId = od.productoId OR pe.categoriaId = pr.categoriaId)
                THEN (od.cantidad * od.precioPor * p.valorDescuento / 100)
                WHEN p.tipoDescuento = 'Fijo' 
                     AND (pe.promoId IS NULL OR pe.productoId = od.productoId OR pe.categoriaId = pr.categoriaId)
                THEN p.valorDescuento
                ELSE 0
            END
        )
        FROM OrdenOnline oo
        JOIN Factura f ON oo.facturaId = f.id
        JOIN FacturaPromo fp ON f.id = fp.facturaId
        JOIN Promo p ON fp.promoId = p.id
        JOIN OrdenDetalle od ON oo.id = od.ordenId
        JOIN Producto pr ON od.productoId = pr.id
        LEFT JOIN PromoEspecializada pe ON p.id = pe.promoId
        WHERE oo.facturaId = @facturaId
        AND p.fechaFin >= @fechaEmision 
        AND p.tipoPromocion IN ('Online', 'Ambos');
    ELSE IF @esVentaFisica = 1
        
        SELECT @montoDescuentoTotal = SUM(
            CASE 
                WHEN p.tipoDescuento = 'Porcentaje' 
                     AND (pe.promoId IS NULL OR pe.productoId = fd.productoId OR pe.categoriaId = pr.categoriaId)
                THEN (fd.cantidad * fd.precioPor * p.valorDescuento / 100)
                WHEN p.tipoDescuento = 'Fijo' 
                     AND (pe.promoId IS NULL OR pe.productoId = fd.productoId OR pe.categoriaId = pr.categoriaId)
                THEN p.valorDescuento
                ELSE 0
            END
        )
        FROM Factura f
        JOIN FacturaPromo fp ON f.id = fp.facturaId
        JOIN Promo p ON fp.promoId = p.id
        JOIN FacturaDetalle fd ON f.id = fd.facturaId
        JOIN Producto pr ON fd.productoId = pr.id
        LEFT JOIN PromoEspecializada pe ON p.id = pe.promoId
        WHERE f.id = @facturaId
        AND p.fechaFin >= @fechaEmision -- Usar fechaEmision
        AND p.tipoPromocion IN ('Fisica', 'Ambos');

    RETURN ISNULL(@montoDescuentoTotal, 0);
END;
GO

--Monto IVA
CREATE FUNCTION dbo.GetmontoIVA (@facturaId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @montoIVA DECIMAL(10,2);
    DECLARE @subtotalProductosNoExentos DECIMAL(10,2);
    DECLARE @descuentoTotal DECIMAL(10,2);
    DECLARE @tasaIVA DECIMAL(5,2); 

    SELECT @tasaIVA = COALESCE(porcentajeIVA, 16.00) / 100.0 
    FROM Factura
    WHERE id = @facturaId;

    -- Obtener el descuento total usando la función existente
    SET @descuentoTotal = dbo.GetMontoDescuentoTotal(@facturaId);

    -- Calcular el subtotal de productos no exentos desde FacturaDetalle
    SELECT @subtotalProductosNoExentos = ISNULL(SUM(fd.cantidad * fd.precioPor), 0)
    FROM FacturaDetalle fd
    JOIN Producto p ON fd.productoId = p.id
    WHERE fd.facturaId = @facturaId
    AND p.esExentoIVA = 0; -- Solo productos no exentos

    SET @montoIVA = CASE 
        WHEN (@subtotalProductosNoExentos - @descuentoTotal) < 0 
        THEN 0 
        ELSE (@subtotalProductosNoExentos - @descuentoTotal) * @tasaIVA 
    END;

    
    RETURN ISNULL(@montoIVA, 0);
END;
GO

--Total
CREATE FUNCTION dbo.GetMontoTotal (@facturaId INT)
RETURNS DECIMAL(10,2)
AS
BEGIN
    DECLARE @subTotal DECIMAL(10,2) = dbo.GetSubTotal(@facturaId);
    DECLARE @montoDescuentoTotal DECIMAL(10,2) = dbo.GetMontoDescuentoTotal(@facturaId);
    DECLARE @montoIVA DECIMAL(10,2) = dbo.GetMontoIVA(@facturaId);
    DECLARE @costoEnvio DECIMAL(10,2) = dbo.GetCostoEnvio(@facturaId);
    
    RETURN ISNULL((@subTotal - @montoDescuentoTotal) + @montoIVA + @costoEnvio, 0);
END;
GO

--Promo valida
CREATE FUNCTION dbo.esPromoValida (@facturaId INT, @promoId INT)
RETURNS BIT
AS
BEGIN
    DECLARE @esValida BIT = 0;
    DECLARE @fechaEmision DATE; -- Fecha de la factura
    DECLARE @tipoPromocion VARCHAR(50);
    DECLARE @fechaFin DATE;
    DECLARE @esOrdenOnline BIT;
    DECLARE @esVentaFisica BIT;

    -- Obtener la fecha de emisión de la factura
    SELECT @fechaEmision = fechaEmision
    FROM Factura
    WHERE id = @facturaId;

    -- Obtener datos de la promoción
    SELECT @tipoPromocion = tipoPromocion, @fechaFin = fechaFin
    FROM Promo
    WHERE id = @promoId;

    SET @esOrdenOnline = (SELECT COUNT(*) FROM OrdenOnline WHERE facturaId = @facturaId);
    SET @esVentaFisica = (SELECT COUNT(*) FROM VentaFisica WHERE facturaId = @facturaId);

    IF @fechaFin >= @fechaEmision
    BEGIN
        IF (@esOrdenOnline = 1 AND @tipoPromocion IN ('Online', 'Ambos'))
            OR (@esVentaFisica = 1 AND @tipoPromocion IN ('Fisica', 'Ambos'))
        BEGIN
            SET @esValida = 1;
        END
    END

    RETURN @esValida;
END;
GO