
--C 
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


  --D
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



--EXEC CrearFacturaFisica 2,2

--EXEC AgregarProductoAFactura @FacturaId= , @ProductoId=5, @cantidad=2 , @precioPor= 1
