--Orden Online 
CREATE TABLE OrdenOnline (
    id INT PRIMARY KEY,
    clienteId INT,
    nroOrden INT CHECK (nroOrden >= 0),
    fechaCreacion DATE,
    tipoEnvioId INT, 
    facturaId INT,
    FOREIGN KEY (clienteId) REFERENCES Cliente(id),
    FOREIGN KEY (tipoEnvioId) REFERENCES TipoEnvio(id),
    FOREIGN KEY (facturaId) REFERENCES Factura(id)
);

--Detalles de orden 
CREATE TABLE OrdenDetalle (
    id INT PRIMARY KEY,
    ordenId INT,
    productoId INT,
    cantidad INT CHECK (cantidad >= 0),
    precioPor FLOAT CHECK (precioPor >= 0),
    FOREIGN KEY (ordenId) REFERENCES OrdenOnline(id),
    FOREIGN KEY (productoId) REFERENCES Producto(id)
);

--Venta fisica 
CREATE TABLE VentaFisica (
    facturaId INT,
    sucursalId INT, 
    empleadoId INT, 
	PRIMARY KEY (facturaId, sucursalId, empleadoId)
    FOREIGN KEY (facturaId) REFERENCES Factura(id),
    FOREIGN KEY (sucursalId) REFERENCES Sucursal(id),
    FOREIGN KEY (empleadoId) REFERENCES Empleado(id)
);

--Factura
CREATE TABLE Factura (
    id INT PRIMARY KEY,
    fechaEmision DATE,
    clienteId INT,
    subTotal FLOAT CHECK (subTotal >= 0),
    montoDescuentoTotal FLOAT CHECK (montoDescuentoTotal >= 0),
    porcentajeIVA FLOAT CHECK (porcentajeIVA >= 0),
    montoIVA FLOAT CHECK (montoIVA >= 0),
    montoTotal FLOAT CHECK (montoTotal >= 0),
    FOREIGN KEY (clienteId) REFERENCES Cliente(id)
);

--Detalle de factura
CREATE TABLE FacturaDetalle (
    id INT PRIMARY KEY,
    facturaId INT,
    productoId INT, 
    cantidad INT CHECK (cantidad >= 0),
    precioPor FLOAT CHECK (precioPor >= 0),
    FOREIGN KEY (facturaId) REFERENCES Factura(id),
    FOREIGN KEY (productoId) REFERENCES Producto(id)
);

--Pago
CREATE TABLE Pago (
    facturaId INT PRIMARY KEY,
    nroTransaccion VARCHAR(50),
    metodoPagoId INT,
    FOREIGN KEY (facturaId) REFERENCES Factura(id),
    FOREIGN KEY (metodoPagoId) REFERENCES FormaPago(id)
);

--Forma de pago
CREATE TABLE FormaPago (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    descripcion VARCHAR(255)
);

--Promocion
CREATE TABLE Promo (
    id INT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    slogan VARCHAR(255),
    codigo VARCHAR(50),
    tipoDescuento VARCHAR(50) CHECK (tipoDescuento IN ('Porcentaje', 'Fijo')),
    valorDescuento FLOAT CHECK (valorDescuento >= 0),
    fechaInicio DATE,
    fechaFin DATE,
    tipoPromocion VARCHAR(50) CHECK (tipoPromocion IN ('Online', 'Física', 'Ambos'))
);

--Promocion Especializada
CREATE TABLE PromoEspecializada (
    id INT PRIMARY KEY,
    promoId INT,
    productoId INT,
    categoriaId INT, 
    marcaId INT, 
    FOREIGN KEY (promoId) REFERENCES Promo(id),
    FOREIGN KEY (productoId) REFERENCES Producto(id),
    FOREIGN KEY (categoriaId) REFERENCES Categoria(id),
    FOREIGN KEY (marcaId) REFERENCES Marca(id)
);

--Factura promocion 
CREATE TABLE FacturaPromo (
    facturaId INT,
    promoId INT,
    PRIMARY KEY (facturaId, promoId),
    FOREIGN KEY (facturaId) REFERENCES Factura(id),
);