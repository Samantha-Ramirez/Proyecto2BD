-- Paises 
CREATE TABLE Pais(
    id INT,
    nombre VARCHAR(50) NOT NULL,
    PRIMARY KEY(id)
);

-- Estados 
CREATE TABLE Estado(
    id INT,
    nombre VARCHAR(50) NOT NULL,
    paisId INT,
    FOREIGN KEY(paisId) REFERENCES Pais(id),
    PRIMARY KEY(id)
);

-- Ciudades 
CREATE TABLE Ciudad(
    id INT,
    nombre VARCHAR(50) NOT NULL,
    estadoId INT,
    FOREIGN KEY(estadoId) REFERENCES Estado(id),
    PRIMARY KEY(id)
);

-- Sucursales 
CREATE TABLE Sucursal(
    id INT,
    nombre VARCHAR(50) NOT NULL,
    direccion VARCHAR(100),
    telefono VARCHAR(20),
    horaAbrir INT CHECK (horaAbrir >= 0 AND horaAbrir <= 23),
    horaCerrar CHECK (horaCerrar >= 0 AND horaCerrar <= 23),
    ciudadId INT,
    FOREIGN KEY(ciudadId) REFERENCES Ciudad(id),
    PRIMARY KEY(id)
);

-- Empleados 
CREATE TABLE Empleado(
    id INT,
    CI VARCHAR(20) UNIQUE,
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
    cantidadDiasTrabajoPorSemana INT CHECK CHECK (cantidadDiasTrabajoPorSemana >= 1 AND cantidadDiasTrabajoPorSemana <= 7),
    FOREIGN KEY(cargoId) REFERENCES Cargo(id),
    FOREIGN KEY(empleadoSupervisorId) REFERENCES Empleado(id),
    FOREIGN KEY(sucursalId) REFERENCES Sucursal(id),
    PRIMARY KEY(id)
);

-- Cargos 
CREATE TABLE Cargo(
    id INT,
    nombre VARCHAR(50) NOT NULL,
    descripcion TEXT,
    salarioBasePorHora DECIMAL(10,2) CHECK (salarioBasePorHora >= 0),
    PRIMARY KEY(id)
);

-- Inventario 
CREATE TABLE Inventario(
    id INT,
    productoId INT,
    cantidad INT CHECK (cantidad >= 0),
    FOREIGN KEY(productoId) REFERENCES Producto(id),
    PRIMARY KEY(id)
);

-- Proveedores 
CREATE TABLE Proveedor(
    id INT,
    RIF VARCHAR(20) UNIQUE,
    nombre VARCHAR(50) NOT NULL,
    contacto VARCHAR(50),
    telefono VARCHAR(20),
    correo VARCHAR(100),
    ciudadId INT,
    FOREIGN KEY(ciudadId) REFERENCES Ciudad(id),
    PRIMARY KEY(id)
);

-- Proveedores proveen Producto 
CREATE TABLE ProveedorProducto(
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