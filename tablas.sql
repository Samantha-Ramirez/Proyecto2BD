-- Orden online 
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

-- Detalles de orden 
CREATE TABLE OrdenDetalle (
    id INT PRIMARY KEY,
    ordenId INT,
    productoId INT,
    cantidad INT CHECK (cantidad >= 0),
    precioPor DECIMAL(10,2) CHECK (precioPor >= 0),
    FOREIGN KEY (ordenId) REFERENCES OrdenOnline(id),
    FOREIGN KEY (productoId) REFERENCES Producto(id)
);

-- Venta fisica 
CREATE TABLE VentaFisica (
    facturaId INT,
    sucursalId INT, 
    empleadoId INT, 
	PRIMARY KEY (facturaId, sucursalId, empleadoId)
    FOREIGN KEY (facturaId) REFERENCES Factura(id),
    FOREIGN KEY (sucursalId) REFERENCES Sucursal(id),
    FOREIGN KEY (empleadoId) REFERENCES Empleado(id)
);

-- Factura
CREATE TABLE Factura (
    id INT PRIMARY KEY,
    fechaEmision DATE,
    clienteId INT,
    subTotal DECIMAL(10,2) CHECK (subTotal >= 0),
    montoDescuentoTotal DECIMAL(10,2) CHECK (montoDescuentoTotal >= 0),
    porcentajeIVA DECIMAL(10,2) CHECK (porcentajeIVA >= 0),
    montoIVA DECIMAL(10,2) CHECK (montoIVA >= 0),
    montoTotal DECIMAL(10,2) CHECK (montoTotal >= 0),
    FOREIGN KEY (clienteId) REFERENCES Cliente(id)
);

-- Detalle de factura
CREATE TABLE FacturaDetalle (
    id INT PRIMARY KEY,
    facturaId INT,
    productoId INT, 
    cantidad INT CHECK (cantidad >= 0),
    precioPor DECIMAL(10,2) CHECK (precioPor >= 0),
    FOREIGN KEY (facturaId) REFERENCES Factura(id),
    FOREIGN KEY (productoId) REFERENCES Producto(id)
);

-- Pago
CREATE TABLE Pago (
    facturaId INT PRIMARY KEY,
    nroTransaccion VARCHAR(50),
    metodoPagoId INT,
    FOREIGN KEY (facturaId) REFERENCES Factura(id),
    FOREIGN KEY (metodoPagoId) REFERENCES FormaPago(id)
);

-- Forma de pago
CREATE TABLE FormaPago (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(50)
);

-- Promocion
CREATE TABLE Promo (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    slogan VARCHAR(50),
    codigo VARCHAR(50),
    tipoDescuento VARCHAR(50) CHECK (tipoDescuento IN ('Porcentaje', 'Fijo')),
    valorDescuento DECIMAL(10,2) CHECK (valorDescuento >= 0),
    fechaInicio DATE,
    fechaFin DATE,
    tipoPromocion VARCHAR(50) CHECK (tipoPromocion IN ('Online', 'Fisica', 'Ambos'))
);

-- Promocion especializada
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

-- Factura promocion 
CREATE TABLE FacturaPromo (
    facturaId INT,
    promoId INT,
    PRIMARY KEY (facturaId, promoId),
    FOREIGN KEY (facturaId) REFERENCES Factura(id),
);

-- Pais
CREATE TABLE Pais (
    id INT,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

-- Estado
CREATE TABLE Estado (
    id INT,
    nombre VARCHAR(50) NOT NULL,
    paisId INT,
    FOREIGN KEY(paisId) REFERENCES Pais(id),
    PRIMARY KEY(id)
);

-- Ciudad
CREATE TABLE Ciudad (
    id INT,
    nombre VARCHAR(50) NOT NULL,
    estadoId INT,
    FOREIGN KEY(estadoId) REFERENCES Estado(id),
    PRIMARY KEY(id)
);

-- Sucursal
CREATE TABLE Sucursal (
    id INT,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(50),
    telefono VARCHAR(50),
    horaAbrir INT CHECK (horaAbrir >= 0 AND horaAbrir <= 23),
    horaCerrar INT CHECK (horaCerrar >= 0 AND horaCerrar <= 23),
    ciudadId INT,
    FOREIGN KEY(ciudadId) REFERENCES Ciudad(id),
    PRIMARY KEY(id)
);

-- Empleado
CREATE TABLE Empleado (
    id INT,
    CI VARCHAR(50) UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50),
    sexo CHAR(1) CHECK (sexo IN ('M', 'F')),
    direccionCorta VARCHAR(50),
    cargoId INT,
    empleadoSupervisorId INT,
    sucursalId INT,
    fechaContrato DATE,
    bonoFijoMensual DECIMAL(10,2) CHECK (bonoFijoMensual >= 0),
    horalnicio INT CHECK (horaInicio >= 0 AND horaInicio <= 23),
    horaFin INT CHECK (horaFin >= 0 AND horaFin <= 23),
    cantidadDiasTrabajoPorSemana INT CHECK (cantidadDiasTrabajoPorSemana >= 1 AND cantidadDiasTrabajoPorSemana <= 7),
    FOREIGN KEY(cargoId) REFERENCES Cargo(id),
    FOREIGN KEY(empleadoSupervisorId) REFERENCES Empleado(id),
    FOREIGN KEY(sucursalId) REFERENCES Sucursal(id),
    PRIMARY KEY(id)
);

-- Cargo
CREATE TABLE Cargo (
    id INT,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT,
    salarioBasePorHora DECIMAL(10,2) CHECK (salarioBasePorHora >= 0),
    PRIMARY KEY(id)
);

-- Inventario 
CREATE TABLE Inventario (
    id INT,
    productoId INT,
    cantidad INT CHECK (cantidad >= 0),
    FOREIGN KEY(productoId) REFERENCES Producto(id),
    PRIMARY KEY(id)
);

-- Proveedor
CREATE TABLE Proveedor (
    id INT,
    RIF VARCHAR(50) UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    contacto VARCHAR(50),
    telefono VARCHAR(50),
    correo VARCHAR(50),
    ciudadId INT,
    FOREIGN KEY(ciudadId) REFERENCES Ciudad(id),
    PRIMARY KEY(id)
);

-- Proveedor provee Producto 
CREATE TABLE ProveedorProducto (
    id INT,
    proveedorId INT,
    productoId INT,
    fechaCompra DATE,
    precioPor DECIMAL(10,2) CHECK (precioPor >= 0),
    cantidad INT CHECK (cantidad >= 0),
    FOREIGN KEY(proveedorId) REFERENCES Proveedor(id),
    FOREIGN KEY(productoId) REFERENCES Producto(id),
    PRIMARY KEY(id)
);

-- Cliente
CREATE TABLE Cliente (
    id INT PRIMARY KEY,
    CI VARCHAR(20) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    correo VARCHAR(50) NOT NULL,
    sexo VARCHAR(1) NOT NULL CHECK (sexo IN ('M', 'F')),
    fechaNacimiento DATE NOT NULL,
    fechaRegistro DATETIME NOT NULL
);

-- ClienteDirección
CREATE TABLE ClienteDirección (
    id INT PRIMARY KEY,
    clienteld INT NOT NULL,
    tipoDireccion VARCHAR(50) NOT NULL CHECK (tipoDireccion IN ('Facturación', 'Envío')),
    dirLinea1 VARCHAR(50) NOT NULL,
    ciudadId INT NOT NULL,
    FOREIGN KEY (clienteld) REFERENCES Cliente(id),
    FOREIGN KEY (ciudadId) REFERENCES Ciudad(id)
);

-- Categoria
CREATE TABLE Categoria (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripción VARCHAR(50)
);

-- Marca
CREATE TABLE Marca (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripción VARCHAR(50)
);

-- Producto
CREATE TABLE Producto (
    id INT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    codigoBarra VARCHAR(50) NOT NULL,
    descripción VARCHAR(50),
    tipoPrecio VARCHAR(50) NOT NULL CHECK (tipoPrecio IN ('PorUnidad', 'PorPesoKg')),
    precioPor DECIMAL(10, 2) NOT NULL CHECK (precioPor >= 0),
    esExentoIVA BIT NOT NULL,
    categoriald INT NOT NULL,
    marcald INT NOT NULL,
    FOREIGN KEY (categoriald) REFERENCES Categoria(id),
    FOREIGN KEY (marcald) REFERENCES Marca(id)
);

-- ProductoRecomendadoParaProducto
CREATE TABLE ProductoRecomendadoParaProducto (
    productold INT NOT NULL,
    productoRecomendadold INT NOT NULL,
    mensaje VARCHAR(50),
    PRIMARY KEY (productold, productoRecomendadold),
    FOREIGN KEY (productold) REFERENCES Producto(id),
    FOREIGN KEY (productoRecomendadold) REFERENCES Producto(id)
);

-- ProductoRecomendadoParaCliente
CREATE TABLE ProductoRecomendadoParaCliente (
    clienteId INT NOT NULL,
    productoRecomendadold INT NOT NULL,
    fechaRecomendacion DATETIME NOT NULL,
    mensaje VARCHAR(50),
    PRIMARY KEY (clienteId, productoRecomendadold),
    FOREIGN KEY (clienteId) REFERENCES Cliente(id),
    FOREIGN KEY (productoRecomendadold) REFERENCES Producto(id)
);



-- HistoriaClienteProducto
CREATE TABLE HistoriaClienteProducto (
    clienteId INT NOT NULL,
    productold INT NOT NULL,
    fecha DATETIME NOT NULL,
    tipoAccion VARCHAR(50) NOT NULL CHECK (tipoAccion IN ('Búsqueda', 'Carrito', 'Compra')),
    PRIMARY KEY (clienteId, productold, fecha),
    FOREIGN KEY (clienteId) REFERENCES Cliente(id),
    FOREIGN KEY (productold) REFERENCES Producto(id)
);

-- Carrito
CREATE TABLE Carrito (
    clienteId INT NOT NULL,
    productold INT NOT NULL,
    fechaAgregado DATETIME NOT NULL,
    cantidad INT NOT NULL CHECK (cantidad >= 0),
    precioPor DECIMAL(10, 2) NOT NULL CHECK (precioPor >= 0),
    PRIMARY KEY (clienteId, productold, fechaAgregado),
    FOREIGN KEY (clienteId) REFERENCES Cliente(id),
    FOREIGN KEY (productold) REFERENCES Producto(id)
);

-- TipoEnvio
CREATE TABLE TipoEnvio (
    id INT PRIMARY KEY,
    nombreEnvío VARCHAR(50) NOT NULL,
    tiempoEstimadoEntrega INT NOT NULL CHECK (tiempoEstimadoEntrega >= 0 AND tiempoEstimadoEntrega <= 23),
    costoEnvío DECIMAL(10, 2) NOT NULL CHECK (costoEnvío >= 0)
);
