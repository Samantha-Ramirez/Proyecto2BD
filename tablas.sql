-- Paises 
CREATE TABLE Pais(
    id INT,
    nombre VARCHAR(50),
    PRIMARY KEY(id)
);

-- Estados 
CREATE TABLE Estado(
    id INT,
    nombre VARCHAR(50),
    paisId INT,
    FOREIGN KEY(paisId) REFERENCES Pais(id)
    PRIMARY KEY(id)
);

-- Ciudades 
CREATE TABLE Ciudad(
    id INT,
    nombre VARCHAR(50),
    estadoId INT,
    FOREIGN KEY(estadoId) REFERENCES Estado(id)
    PRIMARY KEY(id)
);

-- Sucursales 
CREATE TABLE Sucursal(
    id INT,
    nombre VARCHAR(50),
    direccion VARCHAR(100),
    telefono VARCHAR(20),
    horaAbrir TIME,
    horaCerrar TIME,
    ciudadId INT,
    FOREIGN KEY(ciudadId) REFERENCES Ciudad(id)
    PRIMARY KEY(id)
);

-- Empleados 
CREATE TABLE Empleado(
    id INT,
    CI VARCHAR(20) UNIQUE,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    sexo CHAR(1),
    direccionCorta VARCHAR(50),
    cargoId INT,
    empleadoSupervisorId INT,
    sucursalId INT,
    fechaContrato DATE,
    bonoFijoMensual DECIMAL(10,2),
    horalnicio TIME,
    horaFin TIME,
    cantidadDiasTrabajoPorSemana INT,
    FOREIGN KEY(cargoId) REFERENCES Cargo(id)
    FOREIGN KEY(empleadoSupervisorId) REFERENCES Empleado(id)
    FOREIGN KEY(sucursalId) REFERENCES Sucursal(id)
    PRIMARY KEY(id)
);

-- Cargos 
CREATE TABLE Cargo(
    id INT,
    nombre VARCHAR(50),
    descripcion TEXT,
    salarioBasePorHora DECIMAL(10,2)
    PRIMARY KEY(id)
);

-- Inventario 
CREATE TABLE Inventario(
    id INT,
    productoId INT,
    cantidad INT,
    FOREIGN KEY(productoId) REFERENCES Producto(id)
    PRIMARY KEY(id)
);

-- Proveedores 
CREATE TABLE Proveedor(
    id INT,
    RIF VARCHAR(20) UNIQUE,
    nombre VARCHAR(50),
    contacto VARCHAR(50),
    telefono VARCHAR(20),
    correo VARCHAR(100),
    ciudadId INT,
    FOREIGN KEY(ciudadId) REFERENCES Ciudad(id)
    PRIMARY KEY(id)
);

-- Proveedores proveen Producto 
CREATE TABLE ProveedorProducto(
    id INT,
    proveedorId INT,
    productoId INT,
    fechaCompra DATE,
    precioPor DECIMAL(10,2),
    cantidad INT,
    FOREIGN KEY(proveedorId) REFERENCES Proveedor(id)
    FOREIGN KEY(productoId) REFERENCES Producto(id)
    PRIMARY KEY(id)
);