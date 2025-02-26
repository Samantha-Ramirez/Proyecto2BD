-- Trigger A
CREATE TRIGGER ProveedorProductoinsertarInventario
ON ProveedorProducto
AFTER INSERT, UPDATE -- Al tener datos nuevos
AS
BEGIN
    -- Si el producto no existe: crea el registro
    IF NOT EXISTS(SELECT 1 FROM inserted JOIN Inventario I ON I.productoId = inserted.productoId)
        BEGIN 
            INSERT INTO Inventario (productoId, cantidad)
            SELECT inserted.productoId, inserted.cantidad
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

[WITH <opciones_trigger>]
{FOR | AFTER | INSTEAD OF} {[INSERT], [UPDATE], [DELETE]}