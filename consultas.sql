-- Obtener productos marca Gama
SELECT P.*, Pr.nombre, Pre.id
FROM Producto P
JOIN Marca M ON M.id = P.marcaId
LEFT JOIN PromoEspecializada Pre ON Pre.productoId = P.id
LEFT JOIN Promo Pr ON Pr.id = Pre.promoId
LEFT JOIN ProveedorProducto PP ON PP.productold = P.id
WHERE M.nombre = 'Gama' 
AND LOWER(P.nombre) = LOWER('Verano EN GaMa')
AND MONTH(PP.fechaCompra) IN (6, 8) 

-- Calcular porcentaje de clientes
SELECT
FROM Cliente C, HistorialClienteProducto H
WHERE C.id = H.clienteId
AND DAY(H.fecha) = SOME(
    SELECT DAY(H.fecha)+30
    FROM Cliente C, HistorialClienteProducto H
    WHERE C.id = H.clienteId 
)

-- Identificar productos

-- Obtener presupuesto de productos al mayor categoría Chucherías