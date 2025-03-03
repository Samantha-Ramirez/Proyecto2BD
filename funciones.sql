--Funciones
-- Función para obtener el costo de envío
CREATE FUNCTION dbo.costoEnvio(@ordenId INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @costo DECIMAL(10, 2);
    
    SELECT @costo = te.costoEnvio
    FROM OrdenOnline oo 
    JOIN TipoEnvio te ON oo.tipoEnvioId = te.id
    WHERE oo.id = @ordenId;
    
    RETURN ISNULL(@costo, 0);
END;
GO

-- Función para obtener el subtotal
CREATE FUNCTION dbo.subTotal(@facturaId INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @subtotal DECIMAL(10, 2);
    
    SELECT @subtotal = f.subTotal
    FROM Factura f
    WHERE f.id = @facturaId;
    
    RETURN ISNULL(@subtotal, 0);
END;
GO

-- Función para obtener el monto de descuento total
CREATE FUNCTION dbo.montoDescuentoTotal(@facturaId INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @descuento DECIMAL(10, 2);
    
    SELECT @descuento = f.montoDescuentoTotal
    FROM Factura f
    WHERE f.id = @facturaId;
    
    RETURN ISNULL(@descuento, 0);
END;
GO

-- Función para obtener el monto IVA
CREATE FUNCTION dbo.montoIVA(@facturaId INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @iva DECIMAL(10, 2);
    
    SELECT @iva = f.montoIVA
    FROM Factura f
    WHERE f.id = @facturaId;
    
    RETURN ISNULL(@iva, 0);
END;
GO

-- Función para obtener el monto total
CREATE FUNCTION dbo.montoTotal(@facturaId INT, @ordenId INT)
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @total DECIMAL(10, 2);
    
    SET @total = (dbo.subTotal(@facturaId) - dbo.montoDescuentoTotal(@facturaId)) 
                  + dbo.montoIVA(@facturaId) 
                  + dbo.costoEnvio(@ordenId);
    
    RETURN @total;
END;
GO

-- Función para verificar si una promoción es válida
CREATE FUNCTION dbo.esPromoValida(@facturaId INT)
RETURNS BIT
AS
BEGIN
    DECLARE @esValida BIT = 0;
    DECLARE @fechaFin DATE;
    DECLARE @tipoPromocion VARCHAR(50);
    DECLARE @tipoCompra VARCHAR(50);

    -- Obtener la fechaFin y el tipoPromocion de la factura relacionada con la promo
    SELECT TOP 1 @fechaFin = p.fechaFin, @tipoPromocion = p.tipoPromocion
    FROM FacturaPromo fp
    JOIN Promo p ON fp.promoId = p.id
    WHERE fp.facturaId = @facturaId;

    -- Obtener el tipo de compra (online o física)
    SELECT @tipoCompra = CASE 
                             WHEN oo.id IS NOT NULL THEN 'Online' 
                             ELSE 'Fisica' 
                         END
    FROM Factura f
    LEFT JOIN OrdenOnline oo ON f.id = oo.facturaId
    WHERE f.id = @facturaId;

    -- Verificar si la promo es válida
    IF (GETDATE() <= @fechaFin) AND (@tipoPromocion = @tipoCompra)
    BEGIN
        SET @esValida = 1; -- TRUE
    END

    RETURN @esValida;
END;
GO