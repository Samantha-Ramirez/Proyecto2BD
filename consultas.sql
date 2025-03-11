-- Consulta C
SELECT DISTINCT 
    P.nombre AS nombreProducto,
    C.nombre AS categoriaProducto,
    M.nombre AS marcaProducto
FROM 
    Producto P
JOIN 
    Categoria C ON P.categoriaId = C.id
JOIN 
    Marca M ON P.marcaId = M.id
JOIN 
    ProductoRecomendadoParaCliente PRC ON PRC.productoRecomendadoId = P.id
JOIN 
    HistorialClienteProducto HCP ON PRC.clienteId = HCP.clienteId AND HCP.productoId = P.id
JOIN 
    Carrito Ca ON Ca.productoId = P.id
WHERE 
    HCP.tipoAccion = 'Compra'
    AND HCP.fecha >= DATEADD(MONTH, -1, GETDATE())
    AND Ca.clienteId NOT IN (
        SELECT PRC2.clienteId 
        FROM ProductoRecomendadoParaCliente PRC2 
        WHERE PRC2.productoRecomendadoId = P.id
    );

-- Consulta F
SELECT 
    P.*, -- Informacion de los productos
    Pr.nombre, -- Nombre promo 'Verano EN GaMa'
    PE.* -- Informacion de las promos especializadas
FROM Producto P
JOIN Marca M ON M.id = P.marcaId -- Marca del producto
JOIN FacturaDetalle FD ON FD.productoId = P.id -- Factura detalle del producto
JOIN Factura F ON F.id = FD.facturaId -- Factura de la factura detalle
LEFT JOIN FacturaPromo FP ON FP.facturaId = F.id -- Promo de la factura
LEFT JOIN Promo Pr ON Pr.id = FP.promoId AND LOWER(Pr.nombre) = LOWER('Verano EN GaMa') -- Promo Verano EN GaMa (id=47)
LEFT JOIN PromoEspecializada PE ON PE.promoId = Pr.id AND (PE.productoId = P.id OR PE.marcaId = M.id) -- Promo especializada del producto o de su marca
WHERE M.nombre = 'Gama' -- Marca Gama (id=21)
AND MONTH(F.fechaEmision) IN (6, 8) -- Compra en junio y agosto

-- Consulta G
-- Ordenes válidas (condición b)
WITH OrdenesValidas AS (
    SELECT 
        f.id AS facturaId,
        f.clienteId,
        f.montoTotal,
        f.fechaEmision,
        fp.nombre AS metodoPago
    FROM Factura f
    INNER JOIN FacturaDetalle fd ON f.id = fd.facturaId
    INNER JOIN Producto p ON fd.productoId = p.id
    INNER JOIN Categoria c ON p.categoriaId = c.id
    LEFT JOIN Pago pg ON f.id = pg.facturaId
    LEFT JOIN FormaPago fp ON pg.metodoPagoId = fp.id
    WHERE f.fechaEmision >= DATEADD(MONTH, -6, '2025-03-03') -- Últimos 6 meses
    GROUP BY f.id, f.clienteId, f.montoTotal, f.fechaEmision, fp.nombre
    HAVING 
        SUM(CASE WHEN c.nombre = 'Electrónica' THEN 1 ELSE 0 END) >= 1
        AND SUM(CASE WHEN c.nombre = 'Hogar' THEN 1 ELSE 0 END) >= 1
),
-- Clientes que cumplen con las condiciones a y c
ClientesConCondiciones AS (
    SELECT 
        c.id AS clienteId,
        c.CI,
        c.nombre,
        c.apellido,
        c.correo,
        c.sexo,
        c.fechaNacimiento,
        c.fechaRegistro,
        COUNT(ov.facturaId) AS totalOrdenes,
        SUM(ov.montoTotal) AS totalGastado
    FROM Cliente c
    INNER JOIN OrdenesValidas ov ON c.id = ov.clienteId
    GROUP BY 
        c.id, c.CI, c.nombre, c.apellido, c.correo, c.sexo, c.fechaNacimiento, c.fechaRegistro
    HAVING 
        COUNT(ov.facturaId) >= 3 -- Condición a: al menos 3 órdenes
        AND SUM(CASE WHEN ov.metodoPago = 'Tarjeta de Crédito' THEN 1 ELSE 0 END) >= 1 -- Condición c
),
-- Calcular el promedio de gasto de todos los clientes
PromedioGasto AS (
    SELECT AVG(montoTotal) AS promedioGasto
    FROM Factura
    WHERE fechaEmision >= DATEADD(MONTH, -6, '2025-03-03')
)
SELECT 
    cc.*
FROM ClientesConCondiciones cc
CROSS JOIN PromedioGasto pg
WHERE cc.totalGastado > pg.promedioGasto -- Condición d
ORDER BY cc.totalGastado DESC;

-- Consulta H
WITH 
-- Primera compra de un cliente
PrimeraCompra AS (
    SELECT 
        clienteId,
        MIN(fechaEmision) AS fecha -- Fecha menor
    FROM Factura
    GROUP BY clienteId
),
-- Segunda compra del mismo cliente
SegundaCompra AS (
    SELECT 
        F.clienteId,
        F.fechaEmision AS fecha
    FROM Factura F
    JOIN PrimeraCompra PC ON PC.clienteId = F.clienteId -- Primera compra del cliente
    WHERE F.fechaEmision > PC.fecha -- Segunda compra despues de la primera compra
    AND DATEDIFF(day, PC.fecha, F.fechaEmision) <= 30 -- Segunda compra dentro de los 30 dias posteriores a la primera compra
)
SELECT 
    -- Clientes que han hecho segunda compra entre todos los clientes que hecho compra
    (COUNT(DISTINCT SC.clienteId) * 100/ COUNT(DISTINCT PC.clienteId)) AS porcentajeClienteSegCompra
FROM PrimeraCompra PC
LEFT JOIN SegundaCompra SC ON SC.clienteId = PC.clienteId

-- Consulta I
WITH
-- Total de ingresos en general
TotalIngresos AS (
    SELECT 
        SUM(montoTotal) AS total
    FROM Factura
),
-- Total de ingresos de un producto
TotalIngresosPorProducto AS (
    SELECT 
        FD.productoId,
        SUM(F.montoTotal) AS total
    FROM Factura F
    JOIN FacturaDetalle FD ON FD.facturaId = F.id
    GROUP BY FD.productoId
),
-- 10 productos mas vendidos
MasVendidos AS (
    SELECT TOP 10
        FD.productoId
    FROM FacturaDetalle FD
    GROUP BY FD.productoId
    ORDER BY SUM(FD.cantidad) DESC
)

SELECT
    P.*, -- Informacion de los productos
    (TP.total * 100/TI.total) AS porcentajeIngresos -- Contribución en porcentaje al total de ingresos
FROM Producto P
JOIN MasVendidos MV ON MV.productoId = P.id
JOIN TotalIngresosPorProducto TP ON TP.productoId = P.id
CROSS JOIN TotalIngresos TI

-- Consulta J
SELECT 
    P.nombre AS nombre, -- Nombre
    P.precioPor AS precioActual, -- Precio actual
    P.precioPor * 0.90 AS precioConDescuento, -- Precio con descuento del 10% por ser al mayor
    (CASE
        WHEN I.cantidad < 10 THEN 'Últimos disponibles'
        WHEN I.cantidad < 20 THEN 'Pocos disponibles'
        ELSE 'Disponible'
    END) AS stock
FROM Producto P
JOIN Categoria C ON C.id = P.categoriaId -- Categoria del producto
JOIN Inventario I ON I.productoId = P.id -- Inventario del producto
WHERE C.nombre = 'Chucherías' -- Categoria Chucherías (id=6)