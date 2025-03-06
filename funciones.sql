--Funciones
--Costo Envio
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'costoEnvio' AND type IN ('FN', 'IF', 'TF'))
    DROP FUNCTION dbo.costoEnvio;
GO

CREATE FUNCTION dbo.costoEnvio(@facturaId INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @costo DECIMAL(10, 2);
    
    SELECT @costo = te.costoEnvio
    FROM OrdenOnline oo
    JOIN TipoEnvio te ON oo.tipoEnvioId = te.id
    WHERE oo.facturaId = @facturaId;
    
    RETURN ISNULL(@costo, 0);
END;
GO

--Subtotal
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'subTotal' AND type IN ('FN', 'IF', 'TF'))
    DROP FUNCTION dbo.subTotal;
GO

CREATE FUNCTION dbo.subTotal(@facturaId INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @subtotal DECIMAL(10, 2);
    
    SELECT @subtotal = SUM(fd.cantidad * fd.precioPor)
    FROM FacturaDetalle fd
    WHERE fd.facturaId = @facturaId;
    
    RETURN ISNULL(@subtotal, 0);
END;
GO

--Monto descuento 
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'montoDescuentoTotal' AND type IN ('FN', 'IF', 'TF'))
    DROP FUNCTION dbo.montoDescuentoTotal;
GO

CREATE FUNCTION dbo.montoDescuentoTotal(@facturaId INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @descuentoTotal DECIMAL(10, 2);
    
    SELECT @descuentoTotal = SUM(
        CASE 
            WHEN p.tipoDescuento = 'Fijo' THEN p.valorDescuento
            WHEN p.tipoDescuento = 'Porcentaje' THEN (dbo.subTotal(@facturaId) * p.valorDescuento / 100)
            ELSE 0
        END
    )
    FROM FacturaPromo fp
    JOIN Promo p ON fp.promoId = p.id
    WHERE fp.facturaId = @facturaId;
    
    RETURN ISNULL(@descuentoTotal, 0);
END;
GO

-- Monto IVA
IF EXISTS (SELECT * FROM sys.objects WHERE name = 'montoIVA' AND type IN ('FN', 'IF', 'TF'))
    DROP FUNCTION dbo.montoIVA;
GO

CREATE FUNCTION dbo.montoIVA(@facturaId INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @iva DECIMAL(10, 2);
    DECLARE @porcentajeIVA DECIMAL(10, 2);
    
    SELECT @porcentajeIVA = f.porcentajeIVA
    FROM Factura f
    WHERE f.id = @facturaId;
    
    SELECT @iva = SUM(
        CASE 
            WHEN p.esExentoIVA = 0 THEN (fd.cantidad * fd.precioPor)
            ELSE 0
        END
    ) * (@porcentajeIVA / 100)
    FROM FacturaDetalle fd
    JOIN Producto p ON fd.productoId = p.id
    WHERE fd.facturaId = @facturaId;
    
    DECLARE @subtotalSinDescuento DECIMAL(10, 2) = dbo.subTotal(@facturaId);
    DECLARE @descuentoTotal DECIMAL(10, 2) = dbo.montoDescuentoTotal(@facturaId);
    IF @subtotalSinDescuento > 0
        SET @iva = @iva * (1 - @descuentoTotal / @subtotalSinDescuento);
    
    RETURN ISNULL(@iva, 0);
END;
GO

--Promocion valida 

