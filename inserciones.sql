-- Pais
SET IDENTITY_INSERT Pais ON;
INSERT INTO Pais (id, nombre) VALUES
    (1, 'Mexico'),
    (2, 'Estados Unidos'),
    (3, 'Colombia'),
    (4, 'Argentina'),
    (5, 'Espana'),
    (6, 'Brasil'),
    (7, 'Chile'),
    (8, 'Peru'),
    (9, 'Francia'),
    (10, 'Venezuela');
SET IDENTITY_INSERT Pais OFF;

-- Estado
SET IDENTITY_INSERT Estado ON;
INSERT INTO Estado (id, nombre, paisId) VALUES
    -- Mexico (id=1)
    (1, 'Ciudad de Mexico', 1),
    (2, 'Jalisco', 1),
    (3, 'Nuevo Leon', 1),
    (4, 'Puebla', 1),
    (5, 'Veracruz', 1),

    -- Estados Unidos (id=2)
    (6, 'California', 2),
    (7, 'Texas', 2),
    (8, 'Nueva York', 2),
    (9, 'Florida', 2),
    (10, 'Illinois', 2),

    -- Colombia (id=3)
    (11, 'Bogota D.C.', 3),
    (12, 'Antioquia', 3),
    (13, 'Valle del Cauca', 3),
    (14, 'Santander', 3),
    (15, 'Cundinamarca', 3),

    -- Argentina (id=4)
    (16, 'Buenos Aires', 4),
    (17, 'Cordoba', 4),
    (18, 'Santa Fe', 4),
    (19, 'Mendoza', 4),
    (20, 'Tucuman', 4),

    -- Venezuela (id=10)
    (21, 'Distrito Capital', 10),    
    (22, 'Miranda', 10),               
    (23, 'Zulia', 10),                 
    (24, 'Carabobo', 10),               
    (25, 'Lara', 10);
SET IDENTITY_INSERT Estado OFF;

-- Ciudad
SET IDENTITY_INSERT Ciudad ON;
INSERT INTO Ciudad (id, nombre, estadoId) VALUES
    -- Ciudad de Mexico (id=1)
    (1, 'Ciudad de Mexico', 1),
    (2, 'Iztapalapa', 1),
    (3, 'Gustavo A. Madero', 1),

    -- Jalisco (id=2)
    (4, 'Guadalajara', 2),
    (5, 'Zapopan', 2),
    (6, 'Tlaquepaque', 2),

    -- Nuevo Leon (id=3)
    (7, 'Monterrey', 3),
    (8, 'San Pedro Garza Garcia', 3),
    (9, 'Guadalupe', 3),

    -- Puebla (id=4)
    (10, 'Puebla', 4),
    (11, 'Tehuacan', 4),
    (12, 'Cholula', 4),

    -- Veracruz (id=5)
    (13, 'Veracruz', 5),
    (14, 'Xalapa', 5),
    (15, 'Cordoba', 5),

    -- California (id=6)
    (16, 'Los Angeles', 6),
    (17, 'San Francisco', 6),
    (18, 'San Diego', 6),

    -- Texas (id=7)
    (19, 'Houston', 7),
    (20, 'Dallas', 7),
    (21, 'Austin', 7),

    -- Nueva York (id=8)
    (22, 'Nueva York', 8),
    (23, 'Buffalo', 8),
    (24, 'Rochester', 8),

    -- Florida (id=9)
    (25, 'Miami', 9),
    (26, 'Orlando', 9),
    (27, 'Tampa', 9),

    -- Illinois (id=10)
    (28, 'Chicago', 10),
    (29, 'Springfield', 10),
    (30, 'Peoria', 10),

    -- Bogota D.C. (id=11)
    (31, 'Bogota', 11),

    -- Antioquia (id=12)
    (32, 'Medellin', 12),
    (33, 'Envigado', 12),
    (34, 'Bello', 12),

    -- Valle del Cauca (id=13)
    (35, 'Cali', 13),
    (36, 'Palmira', 13),
    (37, 'Buenaventura', 13),

    -- Santander (id=14)
    (38, 'Bucaramanga', 14),
    (39, 'Floridablanca', 14),
    (40, 'Barrancabermeja', 14),

    -- Cundinamarca (id=15)
    (41, 'Soacha', 15),
    (42, 'Girardot', 15),
    (43, 'Facatativa', 15),

    -- Buenos Aires (id=16)
    (44, 'Buenos Aires', 16),
    (45, 'La Plata', 16),
    (46, 'Mar del Plata', 16),

    -- Venezuela: Distrito Capital (id=21)
    (47, 'Caracas', 21),

    -- Venezuela: Miranda (id=22)
    (48, 'Los Teques', 22),
    (49, 'Petare', 22),

    -- Venezuela: Zulia (id=23)
    (50, 'Maracaibo', 23),

    -- Venezuela: Distrito Capital (id=21)
    (51, 'El Junquito', 21),

    -- Venezuela: Miranda (id=22)
    (52, 'Charallave', 22),
    (53, 'Cua', 22),
    (54, 'Guarenas', 22),

    -- Venezuela: Zulia (id=23)
    (55, 'Cabimas', 23),
    (56, 'Santa Barbara del Zulia', 23),
    (57, 'Ciudad Ojeda', 23),

    -- Venezuela: Carabobo (id=24)
    (58, 'San Joaquin', 24),
    (59, 'Bejuma', 24),
    (60, 'Tocuyito', 24),

    -- Venezuela: Lara (id=25)
    (61, 'Quibor', 25),
    (62, 'El Tocuyo', 25),
    (63, 'Carora', 25),
    (64, 'Sanare', 25),
    (65, 'Cubiro', 25);
SET IDENTITY_INSERT Ciudad OFF;

-- Sucursal
-- Mínimo 20 sucursales
-- Lo que guarden los campos de direcciones es decisión de ustedes, ya sea parroquia, calle, avenida, edificio, etc.
SET IDENTITY_INSERT Sucursal ON;
INSERT INTO Sucursal (id, nombre, direccion, telefono, horaAbrir, horaCerrar, ciudadId) VALUES
    (1, 'Sucursal Centro', 'Av. Principal, Edificio A', '0212-1234567', 8, 20, 47),
    (2, 'Sucursal Este', 'Calle 5, Quinta B', '0212-9876543', 9, 21, 48),
    (3, 'Sucursal Oeste', 'Av. Libertador, Local 10', '0212-5551212', 7, 22, 49),
    (4, 'Sucursal Norte', 'Calle 2, Centro Comercial C', '0212-1112233', 8, 20, 50),
    (5, 'Sucursal Junquito', 'Carretera El Junquito km 19', '0212-1233212', 7, 19, 51),
    (6, 'Sucursal Charallave', 'Calle principal Charallave', '0239-1233212', 8, 20, 52),
    (7, 'Sucursal Cua', 'Calle Miranda Cua', '0239-1233212', 8, 20, 53),
    (8, 'Sucursal Guarenas', 'Av. principal Guarenas', '0239-1233212', 8, 20, 54),
    (9, 'Sucursal Cabimas', 'Av. Andres Bello Cabimas', '0239-1233212', 8, 20, 55),
    (10, 'Sucursal Santa Barbara', 'Calle Bolivar Santa Barbara', '0239-1233212', 8, 20, 56),
    (11, 'Sucursal Ciudad Ojeda', 'Av. 32 Ciudad Ojeda', '0239-1233212', 8, 20, 57),
    (12, 'Sucursal San Joaquin', 'Calle Sucre San Joaquin', '0239-1233212', 8, 20, 58),
    (13, 'Sucursal Bejuma', 'Calle Miranda Bejuma', '0239-1233212', 8, 20, 59),
    (14, 'Sucursal Tocuyito', 'Calle Carabobo Tocuyito', '0239-1233212', 8, 20, 60),
    (15, 'Sucursal Quibor', 'Calle Miranda Quibor', '0239-1233212', 8, 20, 61),
    (16, 'Sucursal El Tocuyo', 'Calle Bolivar El Tocuyo', '0239-1233212', 8, 20, 62),
    (17, 'Sucursal Carora', 'Av. Rotaria Carora', '0239-1233212', 8, 20, 63),
    (18, 'Sucursal Sanare', 'Calle Sucre Sanare', '0239-1233212', 8, 20, 64),
    (19, 'Sucursal Cubiro', 'Calle principal Cubiro', '0239-1233212', 8, 20, 65),
    (20, 'Sucursal Altamira', '5ta avenida con 5ta transversal Altamira', '0212-1234567', 8, 20, 47),
    (21, 'Sucursal Chacao', 'Av. Francisco de Miranda, Centro Comercial Sambil', '0212-9876543', 9, 21, 47),
    (22, 'Sucursal Baruta', 'Calle Principal de Baruta, Quinta La Esmeralda', '0212-5551212', 7, 22, 47),
    (23, 'Sucursal La Urbina', 'Calle 12 con Av. Santiago de León', '0212-1112233', 8, 20, 47);
SET IDENTITY_INSERT Sucursal OFF;

-- Cargo
-- Mínimo 10 cargos
SET IDENTITY_INSERT Cargo ON;
INSERT INTO Cargo (id, nombre, descripcion, salarioBasePorHora) VALUES
    (1, 'Cajero', 'Atencion al cliente en caja y cobro de productos', 12.00),
    (2, 'Reponedor', 'Encargado de reponer productos en estanterias', 10.00),
    (3, 'Gerente de Tienda', 'Responsable de la gestion general del supermercado', 25.00),
    (4, 'Auxiliar de Limpieza', 'Mantenimiento y limpieza de las instalaciones', 9.00),
    (5, 'Encargado de Almacen', 'Gestiona el inventario y almacen de productos', 15.00),
    (6, 'Carnicero', 'Preparacion y venta de productos carnicos', 14.00),
    (7, 'Panadero', 'Elaboracion y venta de productos de panaderia', 13.00),
    (8, 'Fruteria', 'Encargado de la seccion de frutas y verduras', 12.00),
    (9, 'Seguridad', 'Vigilancia y control de acceso en el supermercado', 11.00),
    (10, 'Atencion al Cliente', 'Resuelve dudas y quejas de los clientes', 12.00),
    (11, 'Promotor', 'Encargado de promociones y degustaciones', 10.00),
    (12, 'Operario de Montacargas', 'Maneja montacargas para mover mercancia', 13.00),
    (13, 'Tecnico de Refrigeracion', 'Mantenimiento de equipos de refrigeracion', 16.00),
    (14, 'Dependiente de Farmacia', 'Atencion en la seccion de farmacia', 14.00),
    (15, 'Analista de Inventarios', 'Control y gestion de inventarios', 18.00);
SET IDENTITY_INSERT Cargo OFF;

-- Empleado
-- Mínimo 40 empleados
SET IDENTITY_INSERT Empleado ON;
INSERT INTO Empleado (id, CI, nombre, apellido, sexo, direccionCorta, cargoId, empleadoSupervisorId, sucursalId, fechaContrato, bonoFijoMensual, horaInicio, horaFin, cantidadDiasTrabajoPorSemana) VALUES
    (1, 'V-12345678', 'Juan', 'Pérez', 'M', 'Calle 1, Casa 1', 3, NULL, 1, '2023-01-15', 500.00, 8, 17, 6),
    (2, 'V-87654321', 'María', 'Gómez', 'F', 'Av. Principal, Edificio 2', 1, 1, 2, '2023-02-01', 100.00, 9, 18, 5),
    (3, 'V-11223344', 'Pedro', 'Rodríguez', 'M', 'Calle 3, Local 3', 2, 1, 3, '2023-03-10', 150.00, 8, 16, 6),
    (4, 'V-44332211', 'Ana', 'López', 'F', 'Av. Libertador, Apartamento 4', 4, 1, 4, '2023-04-05', 80.00, 10, 19, 5),
    (5, 'V-55667788', 'Luis', 'Martínez', 'M', 'Calle 5, Quinta 5', 5, 1, 5, '2023-05-20', 200.00, 7, 15, 6),
    (6, 'V-88776655', 'Laura', 'Sánchez', 'F', 'Av. Principal, Edificio 6', 6, 1, 6, '2023-06-12', 180.00, 9, 17, 5),
    (7, 'V-99001122', 'Carlos', 'Ramírez', 'M', 'Calle 7, Local 7', 7, 1, 18, '2023-07-01', 160.00, 8, 16, 6),
    (8, 'V-22110099', 'Sofía', 'Torres', 'F', 'Av. Libertador, Apartamento 8', 8, 1, 13, '2023-08-15', 120.00, 10, 18, 5),
    (9, 'V-33445566', 'Diego', 'Díaz', 'M', 'Calle 9, Quinta 9', 9, 1, 15, '2023-09-01', 110.00, 7, 15, 6),
    (10, 'V-66554433', 'Valentina', 'Ruiz', 'F', 'Av. Principal, Edificio 10', 10, 1, 19, '2023-10-20', 130.00, 9, 17, 5),
    (11, 'V-77889900', 'Andrés', 'García', 'M', 'Calle 11, Local 11', 11, 1, 8, '2023-11-12', 90.00, 8, 16, 6),
    (12, 'V-00998877', 'Camila', 'Fernández', 'F', 'Av. Libertador, Apartamento 12', 12, 1, 7, '2023-12-01', 140.00, 10, 18, 5),
    (13, 'V-11224455', 'Ricardo', 'Jiménez', 'M', 'Calle 13, Quinta 13', 13, 1, 7, '2024-01-15', 170.00, 7, 15, 6),
    (14, 'V-55442211', 'Daniela', 'Moreno', 'F', 'Av. Principal, Edificio 14', 14, 1, 11, '2024-02-01', 190.00, 9, 17, 5),
    (15, 'V-66779988', 'Alejandro', 'Pérez', 'M', 'Calle 15, Local 15', 15, 1, 8, '2024-03-10', 210.00, 8, 16, 6),
    (16, 'V-88997766', 'Isabella', 'Soto', 'F', 'Av. Libertador, Apartamento 16', 1, 1, 1, '2024-04-05', 230.00, 10, 19, 5),
    (17, 'V-99002233', 'Gabriel', 'Vargas', 'M', 'Calle 17, Quinta 17', 2, 1, 9, '2024-05-20', 250.00, 7, 15, 6),
    (18, 'V-33220099', 'Valeria', 'Torres', 'F', 'Av. Principal, Edificio 18', 3, 1, 16, '2024-06-12', 270.00, 9, 17, 5),
    (19, 'V-44553322', 'Martín', 'Díaz', 'M', 'Calle 19, Local 19', 4, 1, 14, '2024-07-01', 290.00, 8, 16, 6),
    (20, 'V-22334455', 'Luciana', 'Ruiz', 'F', 'Av. Libertador, Apartamento 20', 5, 1, 10, '2024-08-15', 310.00, 10, 18, 5),
    (21, 'V-55668899', 'Nicolás', 'García', 'M', 'Calle 21, Quinta 21', 6, 1, 11, '2024-09-01', 330.00, 7, 15, 6),
    (22, 'V-99886655', 'Renata', 'Fernández', 'F', 'Av. Principal, Edificio 22', 7, 1, 11, '2024-10-20', 350.00, 9, 17, 5),
    (23, 'V-11225588', 'Santiago', 'Jiménez', 'M', 'Calle 23, Local 23', 8, 1, 12, '2024-11-12', 370.00, 8, 16, 6),
    (24, 'V-88552211', 'Antonella', 'Moreno', 'F', 'Av. Libertador, Apartamento 24', 9, 1, 12, '2024-12-01', 390.00, 10, 18, 5),
    (25, 'V-12341234', 'Andrea', 'Rojas', 'F', 'Calle 27, Casa 27', 1, 2, 14, '2025-05-18', 410.00, 8, 17, 6),
    (26, 'V-43214321', 'Fernando', 'Mendoza', 'M', 'Av. Principal, Edificio 28', 2, 2, 14, '2025-06-03', 430.00, 9, 18, 5),
    (27, 'V-56785678', 'Carolina', 'Chávez', 'F', 'Calle 29, Local 29', 3, 2, 15, '2025-06-21', 450.00, 8, 16, 6),
    (28, 'V-87658765', 'Jorge', 'Navarro', 'M', 'Av. Libertador, Apartamento 30', 4, 2, 15, '2025-07-08', 470.00, 10, 19, 5),
    (29, 'V-90129012', 'Mariana', 'Fuentes', 'F', 'Calle 31, Quinta 31', 5, 2, 16, '2025-07-26', 490.00, 7, 15, 6),
    (30, 'V-21092109', 'Daniel', 'Ortega', 'M', 'Av. Principal, Edificio 32', 6, 2, 16, '2025-08-13', 510.00, 9, 17, 5),
    (31, 'V-34563456', 'Valentina', 'Castillo', 'F', 'Calle 33, Local 33', 7, 2, 17, '2025-08-31', 530.00, 8, 16, 6),
    (32, 'V-65436543', 'Roberto', 'Herrera', 'M', 'Av. Libertador, Apartamento 34', 8, 2, 17, '2025-09-18', 550.00, 10, 18, 5),
    (33, 'V-78907890', 'Lucía', 'Romero', 'F', 'Calle 35, Quinta 35', 9, 2, 18, '2025-10-05', 570.00, 7, 15, 6),
    (34, 'V-09870987', 'Eduardo', 'Serrano', 'M', 'Av. Principal, Edificio 36', 10, 2, 18, '2025-10-23', 590.00, 9, 17, 5),
    (35, 'V-11112222', 'Gabriela', 'Ramos', 'F', 'Calle 37, Local 37', 11, 2, 19, '2025-11-10', 610.00, 8, 16, 6),
    (36, 'V-22221111', 'David', 'Iglesias', 'M', 'Av. Libertador, Apartamento 38', 12, 2, 19, '2025-11-28', 630.00, 10, 18, 5),
    (37, 'V-33334444', 'Sofía', 'Delgado', 'F', 'Calle 39, Quinta 39', 13, 2, 20, '2025-12-16', 650.00, 7, 15, 6),
    (38, 'V-44443333', 'Carlos', 'Giménez', 'M', 'Av. Principal, Edificio 40', 14, 2, 20, '2026-01-02', 670.00, 9, 17, 5),
    (39, 'V-55556666', 'Paula', 'Ortiz', 'F', 'Calle 41, Local 41', 15, 2, 21, '2026-01-20', 690.00, 8, 16, 6),
    (40, 'V-66665555', 'Alejandro', 'Vidal', 'M', 'Av. Libertador, Apartamento 42', 1, 2, 21, '2026-02-07', 710.00, 10, 19, 5),
    (41, 'V-77778888', 'Isabella', 'Sanz', 'F', 'Calle 43, Quinta 43', 2, 2, 22, '2026-02-25', 730.00, 7, 15, 6),
    (42, 'V-88887777', 'Gabriel', 'Castro', 'M', 'Av. Principal, Edificio 44', 3, 2, 22, '2026-03-14', 750.00, 9, 17, 5),
    (43, 'V-99990000', 'Valeria', 'León', 'F', 'Calle 45, Local 45', 4, 2, 23, '2026-04-01', 770.00, 8, 16, 6),
    (44, 'V-00009999', 'Martín', 'Rey', 'M', 'Av. Libertador, Apartamento 46', 5, 2, 23, '2026-04-19', 790.00, 10, 18, 5);    
SET IDENTITY_INSERT Empleado OFF;

-- Marca
-- Mínimo 40 marcas
SET IDENTITY_INSERT Marca ON;
INSERT INTO Marca (id, nombre, descripcion) VALUES
    (1, 'Coca-Cola', 'Bebidas gaseosas y refrescos'),
    (2, 'Pepsi', 'Bebidas y snacks'),
    (3, 'Nestle', 'Productos alimenticios y bebidas'),
    (4, 'Unilever', 'Productos de cuidado personal y alimentos'),
    (5, 'Kelloggs', 'Cereales y snacks'),
    (6, 'Danone', 'Productos lácteos y yogures'),
    (7, 'Heinz', 'Salsas y conservas'),
    (8, 'Colgate', 'Productos de higiene bucal'),
    (9, 'P&G', 'Productos de limpieza y cuidado personal'),
    (10, 'Lays', 'Snacks y papas fritas'),
    (11, 'Bimbo', 'Pan y productos de panadería'),
    (12, 'La Serenísima', 'Productos lácteos y derivados'),
    (13, 'Quilmes', 'Bebidas alcohólicas y cervezas'),
    (14, 'Arcor', 'Golosinas y productos alimenticios'),
    (15, 'Molinos', 'Harinas y productos alimenticios'),
    (16, 'Mondelez', 'Galletas y snacks'),
    (17, 'Knorr', 'Sopas y condimentos'),
    (18, 'Natura', 'Productos de belleza y cuidado personal'),
    (19, 'Fanta', 'Bebidas gaseosas'),
    (20, 'Sprite', 'Bebidas gaseosas'),
    (21, 'Gama', 'Consumo masivo, hogar y electronica'),
    (22, 'Oster', 'Electrodomésticos'),
    (23, 'LG', 'Electrodomésticos y electrónica'),
    (24, 'Panasonic', 'Electrónica y electrodomésticos'),
    (25, 'General Mills', 'Cereales y alimentos'),
    (26, 'Hershey’s', 'Chocolates y dulces'),
    (27, 'Dell', 'Computadoras y tecnología'),
    (28, 'Cadbury', 'Chocolates y dulces'),
    (29, 'Nescafé', 'Café y bebidas instantáneas'),
    (30, 'HP', 'Computadoras y tecnología'),
    (31, 'Gatorade', 'Bebidas deportivas'),
    (32, 'Red Bull', 'Bebidas energéticas'),
    (33, 'Lipton', 'Tés y bebidas'),
    (34, 'Nivea', 'Productos de cuidado personal'),
    (35, 'Dove', 'Productos de cuidado personal'),
    (36, 'Axe', 'Productos de cuidado personal'),
    (37, 'Head & Shoulders', 'Productos de cuidado capilar'),
    (38, 'Oral-B', 'Productos de higiene bucal'),
    (39, 'Pantene', 'Productos de cuidado capilar'),
    (40, 'Gillete', 'Productos de afeitado y cuidado personal');
SET IDENTITY_INSERT Marca OFF;

-- Categoria
-- Mínimo 30 categorías
SET IDENTITY_INSERT Categoria ON;
INSERT INTO Categoria (id, nombre, descripcion) VALUES
    (1, 'Bebidas', 'Refrescos, aguas, jugos y bebidas alcoholicas'),
    (2, 'Lacteos', 'Leche, yogures, quesos y derivados'),
    (3, 'Carnes', 'Carnes frescas y procesadas'),
    (4, 'Frutas y Verduras', 'Productos frescos de frutas y verduras'),
    (5, 'Panaderia', 'Pan, bollos y productos de reposteria'),
    (6, 'Chucherías', 'Papas fritas, frutos secos y golosinas'),
    (7, 'Congelados', 'Alimentos congelados y listos para cocinar'),
    (8, 'Limpieza', 'Productos de limpieza para el hogar'),
    (9, 'Cuidado Personal', 'Jabones, champus y productos de higiene'),
    (10, 'Despensa', 'Arroz, pasta, legumbres y conservas'),
    (11, 'Bebidas Alcoholicas', 'Cervezas, vinos y licores'),
    (12, 'Mascotas', 'Alimentos y accesorios para mascotas'),
    (13, 'Farmacia', 'Medicamentos y productos de salud'),
    (14, 'Hogar', 'Utensilios y articulos para el hogar'),
    (15, 'Electrodomesticos', 'Pequenos electrodomesticos'),
    (16, 'Bebes', 'Panales, leches y productos para bebes'),
    (17, 'Helados', 'Helados y postres congelados'),
    (18, 'Cafe e Infusiones', 'Cafe, te y bebidas calientes'),
    (19, 'Aceites y Vinagres', 'Aceites, vinagres y aderezos'),
    (20, 'Especias y Condimentos', 'Especias, sal y condimentos'),
    (21, 'Dulces y Chocolates', 'Chocolates, caramelos y dulces'),
    (22, 'Conservas', 'Conservas de pescado, carne y vegetales'),
    (23, 'Pastas Frescas', 'Pastas frescas y listas para cocinar'),
    (24, 'Salsas y Aderezos', 'Salsas, mayonesas y ketchup'),
    (25, 'Cereales', 'Cereales para el desayuno'),
    (26, 'Galletas', 'Galletas dulces y saladas'),
    (27, 'Enlatados', 'Productos enlatados y conservados'),
    (28, 'Huevos', 'Huevos frescos y derivados'),
    (29, 'Pescados y Mariscos', 'Pescados y mariscos frescos'),
    (30, 'Comida Preparada', 'Platos preparados y listos para consumir'),
    (31, 'Electronica', 'Equipos pequenos para hogar');
SET IDENTITY_INSERT Categoria OFF;

-- Producto
-- Mínimo 200 productos
SET IDENTITY_INSERT Producto ON;
INSERT INTO Producto (id, nombre, codigoBarra, descripcion, tipoPrecio, precioPor, esExentoIVA, categoriaId, marcaId) VALUES
    (1, 'Coca-Cola Original', '1234567890123', 'Refresco de cola', 'PorUnidad', 1.50, 0, 1, 1),
    (2, 'Pepsi Max', '2345678901234', 'Refresco de cola sin azúcar', 'PorUnidad', 1.40, 0, 1, 2),
    (3, 'Nescafé Clásico', '3456789012345', 'Café instantáneo', 'PorUnidad', 4.00, 0, 18, 3),
    (4, 'Leche Entera La Serenísima', '4567890123456', 'Leche entera pasteurizada', 'PorUnidad', 1.20, 0, 2, 12),
    (5, 'Yogur Danone Natural', '5678901234567', 'Yogur natural sin azúcar', 'PorUnidad', 0.80, 0, 2, 6),
    (6, 'Cereal Kelloggs Corn Flakes', '6789012345678', 'Cereal de maíz tostado', 'PorUnidad', 3.50, 0, 25, 5),
    (7, 'Salsa de Tomate Heinz', '7890123456789', 'Salsa de tomate', 'PorUnidad', 2.00, 0, 24, 7),
    (8, 'Galletas Oreo', '8901234567890', 'Galletas de chocolate con crema', 'PorUnidad', 2.50, 0, 26, 16),
    (9, 'Pan Bimbo Integral', '9012345678901', 'Pan de molde integral', 'PorUnidad', 1.80, 0, 5, 11),
    (10, 'Cerveza Quilmes', '0123456789012', 'Cerveza rubia', 'PorUnidad', 2.00, 0, 11, 13),
    (11, 'Manzanas', '1122334455667', 'Manzanas frescas', 'PorPesoKg', 3.00, 0, 4, 14),  -- Usando Arcor como marca
    (12, 'Carne de Res', '2233445566778', 'Carne de res fresca', 'PorPesoKg', 8.50, 0, 3, 15),  -- Usando Molinos como marca
    (13, 'Queso Gouda', '3344556677889', 'Queso Gouda', 'PorPesoKg', 12.00, 0, 2, 12),  -- Usando La Serenísima como marca
    (14, 'Pescado Fresco', '4455667788990', 'Pescado fresco', 'PorPesoKg', 10.00, 0, 29, 13),  -- Usando Quilmes como marca
    (15, 'Arroz Integral', '5566778899001', 'Arroz integral', 'PorUnidad', 2.50, 0, 10, 15),  -- Usando Molinos como marca
    (16, 'Agua Mineral', '6677889900112', 'Agua mineral sin gas', 'PorUnidad', 0.90, 0, 1, 1),  -- Coca-Cola
    (17, 'Jugo de Naranja', '7788990011223', 'Jugo de naranja natural', 'PorUnidad', 2.20, 0, 1, 3),  -- Nestlé
    (18, 'Yogur de Frutas', '8899001122334', 'Yogur con trozos de fruta', 'PorUnidad', 1.00, 0, 2, 6),  -- Danone
    (19, 'Queso Cheddar', '9900112233445', 'Queso cheddar', 'PorPesoKg', 15.00, 0, 2, 12),  -- La Serenísima
    (20, 'Filete de Pollo', '0011223344556', 'Filete de pollo fresco', 'PorPesoKg', 7.00, 0, 3, 15),  -- Molinos
    (21, 'Bananas', '1122334455667', 'Bananas frescas', 'PorPesoKg', 2.50, 0, 4, 14),  -- Arcor
    (22, 'Pan de Centeno', '2233445566778', 'Pan de centeno integral', 'PorUnidad', 2.00, 0, 5, 11),  -- Bimbo
    (23, 'Papas Fritas', '3344556677889', 'Papas fritas clásicas', 'PorUnidad', 1.80, 0, 6, 10),  -- Lays
    (24, 'Helado de Vainilla', '4455667788990', 'Helado de vainilla', 'PorUnidad', 3.50, 0, 17, 6),  -- Danone
    (25, 'Café Molido', '5566778899001', 'Café molido para filtro', 'PorUnidad', 5.00, 0, 18, 3),  -- Nestlé
    (26, 'Aceite de Oliva', '6677889900112', 'Aceite de oliva extra virgen', 'PorUnidad', 8.00, 0, 19, 7),  -- Heinz
    (27, 'Sal Marina', '7788990011223', 'Sal marina natural', 'PorUnidad', 1.50, 0, 20, 17),  -- Knorr
    (28, 'Chocolate Amargo', '8899001122334', 'Chocolate amargo 70% cacao', 'PorUnidad', 4.00, 0, 21, 16),  -- Mondelez
    (29, 'Atún en Lata', '9900112233445', 'Atún en lata al natural', 'PorUnidad', 2.20, 0, 22, 7),  -- Heinz
    (30, 'Ravioles de Ricotta', '0011223344556', 'Ravioles rellenos de ricotta', 'PorUnidad', 3.00, 0, 23, 15),  -- Molinos
    (31, 'Salsa Barbacoa', '1122334455667', 'Salsa barbacoa', 'PorUnidad', 2.80, 1, 24, 7),
    (32, 'Cereal de Avena', '2233445566778', 'Cereal de avena integral', 'PorUnidad', 3.20, 0, 25, 5),
    (33, 'Galletas de Avena', '3344556677889', 'Galletas de avena y miel', 'PorUnidad', 2.00, 1, 26, 16),
    (34, 'Maíz en Lata', '4455667788990', 'Maíz dulce en conserva', 'PorUnidad', 1.50, 0, 27, 7),
    (35, 'Huevos Frescos', '5566778899001', 'Huevos frescos de gallina', 'PorUnidad', 2.00, 1, 28, 12),
    (36, 'Leche Deslactosada', '6677889900112', 'Leche deslactosada', 'PorUnidad', 1.50, 0, 2, 12),
    (37, 'Yogur Griego', '7788990011223', 'Yogur griego natural', 'PorUnidad', 1.20, 1, 2, 6),
    (38, 'Jugo de Manzana', '8899001122334', 'Jugo de manzana natural', 'PorUnidad', 2.00, 0, 1, 3),
    (39, 'Queso Mozzarella', '9900112233445', 'Queso mozzarella', 'PorPesoKg', 10.00, 0, 2, 12),  -- La Serenísima
    (40, 'Pechuga de Pavo', '0011223344556', 'Pechuga de pavo fresca', 'PorPesoKg', 9.00, 0, 3, 15),  -- Molinos
    (41, 'Naranjas', '1122334455667', 'Naranjas frescas', 'PorPesoKg', 2.00, 0, 4, 14),  -- Arcor
    (42, 'Pan de Trigo', '2233445566778', 'Pan de trigo integral', 'PorUnidad', 1.80, 0, 5, 11),  -- Bimbo
    (43, 'Papas Fritas con Queso', '3344556677889', 'Papas fritas sabor queso', 'PorUnidad', 2.00, 0, 6, 10),  -- Lays
    (44, 'Helado de Chocolate', '4455667788990', 'Helado de chocolate', 'PorUnidad', 3.80, 0, 17, 6),  -- Danone  
    (45, 'Afeitadora Gillette', '5566778899001', 'Afeitadora de dos hojas', 'PorUnidad', 2.00, 1, 9, 40),  -- Gillette
    (46, 'Aceite de Girasol', '6677889900112', 'Aceite de girasol', 'PorUnidad', 5.00, 0, 19, 7),  -- Heinz
    (47, 'Pimienta Negra', '7788990011223', 'Pimienta negra molida', 'PorUnidad', 1.80, 0, 20, 17),  -- Knorr
    (48, 'Chocolate con Leche', '8899001122334', 'Chocolate con leche', 'PorUnidad', 3.50, 0, 21, 16),  -- Mondelez
    (49, 'Sardinas en Lata', '9900112233445', 'Sardinas en lata al natural', 'PorUnidad', 2.50, 0, 22, 7),  -- Heinz
    (50, 'Canelones de Espinaca', '0011223344556', 'Canelones rellenos de espinaca', 'PorUnidad', 3.50, 0, 23, 15),  -- Molinos
    (51, 'Salsa de Soja', '1122334455667', 'Salsa de soja', 'PorUnidad', 3.00, 0, 24, 7),  -- Heinz
	(52, 'Detergente Líquido Ariel', '554532211009', 'Detergente líquido para ropa', 'PorUnidad', 8.00, 0, 8, 9),  -- P&G (categoría Limpieza)
    (53, 'Jabón en Barra Dove', '4433521100998', 'Jabón en barra para piel sensible', 'PorUnidad', 2.50, 0, 9, 35),  -- Dove (categoría Cuidado Personal)
    (54, 'Limpiador Multiuso Cif', '3822110099887', 'Limpiador multiuso para superficies', 'PorUnidad', 4.00, 0, 8, 9),  -- P&G (categoría Limpieza)
	(55, 'Jabón en polvo Ariel', '5541332211009', 'Jabón en polvo para ropa', 'PorUnidad', 8.00, 0, 8, 9),  -- P&G (categoría Limpieza)
    (56, 'Jabón Facial Dove', '4433223100998', 'Jabón Facial para piel grasa', 'PorUnidad', 2.50, 0, 9, 35),  -- Dove (categoría Cuidado Personal)
    (57, 'Suavizante ', '3322110099877', 'Suavizante pra ropa', 'PorUnidad', 4.00, 0, 8, 9),  -- P&G (categoría Limpieza)
    (58, 'Jugo de Piña', '8899001122334', 'Jugo de piña natural', 'PorUnidad', 2.30, 0, 1, 3),  -- Nestlé
    (59, 'Queso Parmesano', '9900112233445', 'Queso parmesano', 'PorPesoKg', 18.00, 0, 2, 12),  -- La Serenísima
    (60, 'Lomo de Cerdo', '0011223344556', 'Lomo de cerdo fresco', 'PorPesoKg', 10.00, 0, 3, 15),  -- Molinos
    (61, 'Uvas', '1122334455667', 'Uvas frescas', 'PorPesoKg', 4.00, 0, 4, 14),  -- Arcor
    (62, 'Pan de Avena', '2233445566778', 'Pan de avena integral', 'PorUnidad', 2.20, 0, 5, 11),  -- Bimbo
    (63, 'Papas Fritas Light', '3344556677889', 'Papas fritas bajas en grasa', 'PorUnidad', 1.90, 0, 6, 10),  -- Lays
    (64, 'Helado de Fresa', '4455667788990', 'Helado de fresa', 'PorUnidad', 3.60, 0, 17, 6),  -- Danone
    (65, 'Té Negro', '5566778899001', 'Té negro en hebras', 'PorUnidad', 4.00, 0, 18, 3),  -- Nestlé
    (66, 'Aceite de Coco', '6677889900112', 'Aceite de coco virgen', 'PorUnidad', 7.00, 0, 19, 7),  -- Heinz
    (67, 'Orégano', '7788990011223', 'Orégano seco', 'PorUnidad', 1.20, 0, 20, 17),  -- Knorr
    (68, 'Chocolate Blanco', '8899001122334', 'Chocolate blanco', 'PorUnidad', 3.80, 0, 21, 16),  -- Mondelez
    (69, 'Atún en Aceite', '9900112233445', 'Atún en lata con aceite', 'PorUnidad', 2.50, 0, 22, 7),  -- Heinz
    (70, 'Lasagna de Carne', '0011223344556', 'Lasagna rellena de carne', 'PorUnidad', 4.00, 0, 23, 15),  -- Molinos
    (71, 'Salsa de Tomate Picante', '1122334455667', 'Salsa de tomate con picante', 'PorUnidad', 2.50, 0, 24, 7),  -- Heinz
    (72, 'Cereal de Arroz', '2233445566778', 'Cereal de arroz inflado', 'PorUnidad', 3.10, 0, 25, 5),  -- Kelloggs
    (73, 'Galletas de Vainilla', '3344556677889', 'Galletas de vainilla', 'PorUnidad', 2.10, 0, 26, 16),  -- Mondelez
    (74, 'Choclo en Lata', '4455667788990', 'Choclo en conserva', 'PorUnidad', 1.70, 0, 27, 7),  -- Heinz
    (75, 'Huevos de Codorniz', '5566778899001', 'Huevos de codorniz', 'PorUnidad', 3.00, 0, 28, 12),  -- La Serenísima
    (76, 'Leche de Soja', '6677889900112', 'Leche de soja', 'PorUnidad', 2.20, 0, 2, 12),  -- La Serenísima
    (77, 'Yogur de Durazno', '7788990011223', 'Yogur con trozos de durazno', 'PorUnidad', 1.30, 0, 2, 6),  -- Danone
    (78, 'Jugo de Zanahoria', '8899001122334', 'Jugo de zanahoria natural', 'PorUnidad', 2.40, 0, 1, 3),  -- Nestlé
    (79, 'Queso Ricotta', '9900112233445', 'Queso ricotta', 'PorPesoKg', 12.50, 0, 2, 12),  -- La Serenísima
    (80, 'Chuleta de Cordero', '0011223344556', 'Chuleta de cordero fresca', 'PorPesoKg', 15.00, 0, 3, 15),  -- Molinos
    (81, 'Fresas', '1122334455667', 'Fresas frescas', 'PorPesoKg', 5.00, 0, 4, 14),  -- Arcor
    (82, 'Pan de Centeno', '2233445566778', 'Pan de centeno integral', 'PorUnidad', 2.30, 0, 5, 11),  -- Bimbo
    (83, 'Papas Fritas con Cebolla', '3344556677889', 'Papas fritas sabor cebolla', 'PorUnidad', 2.10, 0, 6, 10),  -- Lays
    (84, 'Helado de Menta', '4455667788990', 'Helado de menta', 'PorUnidad', 3.70, 0, 17, 6),  -- Danone
    (85, 'Té de Manzanilla', '5566778899001', 'Té de manzanilla', 'PorUnidad', 3.50, 0, 18, 3),  -- Nestlé
    (86, 'Aceite de Maíz', '6677889900112', 'Aceite de maíz', 'PorUnidad', 4.50, 0, 19, 7),  -- Heinz
    (87, 'Comino', '7788990011223', 'Comino molido', 'PorUnidad', 1.50, 0, 20, 17),  -- Knorr
    (88, 'Chocolate con Almendras', '8899001122334', 'Chocolate con almendras', 'PorUnidad', 4.20, 0, 21, 16),  -- Mondelez
    (89, 'Sardinas en Aceite', '9900112233445', 'Sardinas en lata con aceite', 'PorUnidad', 2.80, 0, 22, 7),  -- Heinz
    (90, 'Canelones de Carne', '0011223344556', 'Canelones rellenos de carne', 'PorUnidad', 4.50, 0, 23, 15),  -- Molinos
    (91, 'Salsa de Mostaza', '1122334455667', 'Salsa de mostaza', 'PorUnidad', 2.60, 0, 24, 7),  -- Heinz
    (92, 'Cereal de Maíz', '2233445566778', 'Cereal de maíz inflado', 'PorUnidad', 3.20, 0, 25, 5),  -- Kelloggs
    (93, 'Galletas de Limón', '3344556677889', 'Galletas de limón', 'PorUnidad', 2.30, 0, 26, 16),  -- Mondelez
    (94, 'Arvejas con Zanahoria', '4455667788990', 'Arvejas con zanahoria en conserva', 'PorUnidad', 1.80, 0, 27, 7),  -- Heinz
    (95, 'Huevos de Patio', '5566778899001', 'Huevos de patio', 'PorUnidad', 3.50, 0, 28, 12),  -- La Serenísima
    (96, 'Leche de Arroz', '6677889900112', 'Leche de arroz', 'PorUnidad', 2.30, 0, 2, 12),  -- La Serenísima
    (97, 'Yogur de Frutilla', '7788990011223', 'Yogur con trozos de frutilla', 'PorUnidad', 1.40, 0, 2, 6),  -- Danone
    (98, 'Jugo de Uva', '8899001122334', 'Jugo de uva natural', 'PorUnidad', 2.50, 0, 1, 3),  -- Nestlé
    (99, 'Queso Azul', '9900112233445', 'Queso azul', 'PorPesoKg', 20.00, 0, 2, 12),  -- La Serenísima
    (100, 'Costillas de Cerdo', '0011223344556', 'Costillas de cerdo frescas', 'PorPesoKg', 12.00, 0, 3, 15),  -- Molinos
    (101, 'Kiwi', '1122334455667', 'Kiwi fresco', 'PorPesoKg', 6.00, 0, 4, 14),  -- Arcor
    (102, 'Pan de Maíz', '2233445566778', 'Pan de maíz', 'PorUnidad', 2.40, 0, 5, 11),  -- Bimbo
    (103, 'Papas Fritas con Jalapeño', '3344556677889', 'Papas fritas sabor jalapeño', 'PorUnidad', 2.20, 0, 6, 10),  -- Lays
    (104, 'Helado de Dulce de Leche', '4455667788990', 'Helado de dulce de leche', 'PorUnidad', 3.80, 0, 17, 6),  -- Danone
    (105, 'Té de Menta', '5566778899001', 'Té de menta', 'PorUnidad', 3.60, 0, 18, 3),  -- Nestlé
    (106, 'Aceite de Canola', '6677889900112', 'Aceite de canola', 'PorUnidad', 5.50, 0, 19, 7),  -- Heinz
    (107, 'Pimentón', '7788990011223', 'Pimentón molido', 'PorUnidad', 1.60, 0, 20, 17),  -- Knorr
    (108, 'Chocolate con Avellanas', '8899001122334', 'Chocolate con avellanas', 'PorUnidad', 4.50, 0, 21, 16),  -- Mondelez
    (109, 'Atún con Limón', '9900112233445', 'Atún en lata con limón', 'PorUnidad', 2.70, 0, 22, 7),  -- Heinz
    (110, 'Canelones de Pollo', '0011223344556', 'Canelones rellenos de pollo', 'PorUnidad', 4.60, 0, 23, 15),  -- Molinos
    (111, 'Salsa de Ajo', '1122334455667', 'Salsa de ajo', 'PorUnidad', 2.70, 0, 24, 7),  -- Heinz
    (112, 'Cereal de Trigo y Miel', '2233445566778', 'Cereal de trigo con miel', 'PorUnidad', 3.30, 0, 25, 5),  -- Kelloggs
    (113, 'Galletas de Chocolate Blanco', '3344556677889', 'Galletas de chocolate blanco', 'PorUnidad', 2.40, 0, 26, 16),  -- Mondelez
    (114, 'Choclo con Mantequilla', '4455667788990', 'Choclo en conserva con mantequilla', 'PorUnidad', 1.90, 0, 27, 7),  -- Heinz
    (115, 'Huevos de Campo', '5566778899001', 'Huevos de campo', 'PorUnidad', 3.80, 0, 28, 12),  -- La Serenísima
    (116, 'Leche de Coco', '6677889900112', 'Leche de coco', 'PorUnidad', 2.40, 0, 2, 12),  -- La Serenísima
    (117, 'Yogur de Mango', '7788990011223', 'Yogur con trozos de mango', 'PorUnidad', 1.50, 0, 2, 6),  -- Danone
    (118, 'Jugo de Melón', '8899001122334', 'Jugo de melón natural', 'PorUnidad', 2.60, 0, 1, 3),  -- Nestlé
    (119, 'Queso Gorgonzola', '9900112233445', 'Queso gorgonzola', 'PorPesoKg', 22.00, 0, 2, 12),  -- La Serenísima
    (120, 'Pechuga de Pollo', '0011223344556', 'Pechuga de pollo fresca', 'PorPesoKg', 8.00, 0, 3, 15),  -- Molinos
    (121, 'Piña', '1122334455667', 'Piña fresca', 'PorPesoKg', 3.50, 0, 4, 14),  -- Arcor
    (122, 'Pan de Salvado', '2233445566778', 'Pan de salvado integral', 'PorUnidad', 2.50, 0, 5, 11),  -- Bimbo
    (123, 'Papas Fritas con Queso y Bacon', '3344556677889', 'Papas fritas sabor queso y bacon', 'PorUnidad', 2.30, 0, 6, 10),  -- Lays
    (124, 'Helado de Vainilla con Chocolate', '4455667788990', 'Helado de vainilla con trozos de chocolate', 'PorUnidad', 3.90, 0, 17, 6),  -- Danone
    (125, 'Té de Frutos Rojos', '5566778899001', 'Té de frutos rojos', 'PorUnidad', 3.70, 0, 18, 3),  -- Nestlé
    (126, 'Aceite de Oliva Virgen Extra', '6677889900112', 'Aceite de oliva virgen extra', 'PorUnidad', 9.00, 0, 19, 7),  -- Heinz
    (127, 'Canela', '7788990011223', 'Canela molida', 'PorUnidad', 1.70, 0, 20, 17),  -- Knorr
    (128, 'Chocolate con Naranja', '8899001122334', 'Chocolate con trozos de naranja', 'PorUnidad', 4.30, 0, 21, 16),  -- Mondelez
    (129, 'Atún con Hierbas', '9900112233445', 'Atún en lata con hierbas', 'PorUnidad', 2.90, 0, 22, 7),  -- Heinz
    (130, 'Canelones de Espinaca y Ricotta', '0011223344556', 'Canelones rellenos de espinaca y ricotta', 'PorUnidad', 4.70, 0, 23, 15),  -- Molinos
    (131, 'Salsa de Champiñones', '1122334455667', 'Salsa de champiñones', 'PorUnidad', 2.80, 0, 24, 7),  -- Heinz
    (132, 'Cereal de Avena y Pasas', '2233445566778', 'Cereal de avena con pasas', 'PorUnidad', 3.40, 0, 25, 5),  -- Kelloggs
    (133, 'Galletas de Coco', '3344556677889', 'Galletas de coco', 'PorUnidad', 2.50, 0, 26, 16),  -- Mondelez
    (134, 'Choclo con Queso', '4455667788990', 'Choclo en conserva con queso', 'PorUnidad', 2.00, 0, 27, 7),  -- Heinz
    (135, 'Huevos de Granja', '5566778899001', 'Huevos de granja', 'PorUnidad', 4.00, 0, 28, 12),  -- La Serenísima
    (136, 'Leche de Avena', '6677889900112', 'Leche de avena', 'PorUnidad', 2.50, 0, 2, 12),  -- La Serenísima
    (137, 'Yogur de Coco', '7788990011223', 'Yogur de coco', 'PorUnidad', 1.60, 0, 2, 6),  -- Danone
    (138, 'Jugo de Maracuyá', '8899001122334', 'Jugo de maracuyá natural', 'PorUnidad', 2.70, 0, 1, 3),  -- Nestlé
    (139, 'Queso Feta', '9900112233445', 'Queso feta', 'PorPesoKg', 14.00, 0, 2, 12),  -- La Serenísima
    (140, 'Lomo de Res', '0011223344556', 'Lomo de res fresco', 'PorPesoKg', 18.00, 0, 3, 15),  -- Molinos
    (141, 'Mango', '1122334455667', 'Mango fresco', 'PorPesoKg', 5.50, 0, 4, 14),  -- Arcor
    (142, 'Pan de Trigo y Centeno', '2233445566778', 'Pan de trigo y centeno integral', 'PorUnidad', 2.60, 0, 5, 11),  -- Bimbo
    (143, 'Papas Fritas con Limón', '3344556677889', 'Papas fritas sabor limón', 'PorUnidad', 2.40, 0, 6, 10),  -- Lays
    (144, 'Helado de Cookies and Cream', '4455667788990', 'Helado de cookies and cream', 'PorUnidad', 4.00, 0, 17, 6),  -- Danone
    (145, 'Té de Limón', '5566778899001', 'Té de limón', 'PorUnidad', 3.80, 0, 18, 3),  -- Nestlé
    (146, 'Aceite de Sésamo', '6677889900112', 'Aceite de sésamo', 'PorUnidad', 6.00, 0, 19, 7),  -- Heinz
    (147, 'Curry', '7788990011223', 'Curry en polvo', 'PorUnidad', 1.80, 0, 20, 17),  -- Knorr
    (148, 'Chocolate con Caramelo', '8899001122334', 'Chocolate con caramelo', 'PorUnidad', 4.40, 0, 21, 16),  -- Mondelez
    (149, 'Atún con Aceitunas', '9900112233445', 'Atún en lata con aceitunas', 'PorUnidad', 3.00, 0, 22, 7),  -- Heinz
    (150, 'Canelones de Jamón y Queso', '0011223344556', 'Canelones rellenos de jamón y queso', 'PorUnidad', 4.80, 0, 23, 15),  -- Molinos
    (151, 'Salsa de Tomate y Albahaca', '1122334455667', 'Salsa de tomate con albahaca', 'PorUnidad', 2.90, 0, 24, 7),  -- Heinz
    (152, 'Cereal de Maíz y Miel', '2233445566778', 'Cereal de maíz con miel', 'PorUnidad', 3.50, 0, 25, 5),  -- Kelloggs
    (153, 'Galletas de Jengibre', '3344556677889', 'Galletas de jengibre', 'PorUnidad', 2.60, 0, 26, 16),  -- Mondelez
    (154, 'Choclo con Crema', '4455667788990', 'Choclo en conserva con crema', 'PorUnidad', 2.10, 0, 27, 7),  -- Heinz
    (155, 'Huevos de Gallina Feliz', '5566778899001', 'Huevos de gallina feliz', 'PorUnidad', 4.20, 0, 28, 12),  -- La Serenísima
    (156, 'Leche de Almendras con Chocolate', '6677889900112', 'Leche de almendras con chocolate', 'PorUnidad', 2.60, 0, 2, 12),  -- La Serenísima
    (157, 'Yogur de Vainilla y Galleta', '7788990011223', 'Yogur de vainilla con trozos de galleta', 'PorUnidad', 1.70, 0, 2, 6),  -- Danone
    (158, 'Jugo de Sandía', '8899001122334', 'Jugo de sandía natural', 'PorUnidad', 2.80, 0, 1, 3),  -- Nestlé
    (159, 'Queso Camembert', '9900112233445', 'Queso camembert', 'PorPesoKg', 16.00, 0, 2, 12),  -- La Serenísima
    (160, 'Chuleta de Cerdo', '0011223344556', 'Chuleta de cerdo fresca', 'PorPesoKg', 11.00, 0, 3, 15),  -- Molinos
    (161, 'Papaya', '1122334455667', 'Papaya fresca', 'PorPesoKg', 6.00, 0, 4, 14),  -- Arcor
    (162, 'Pan de Trigo y Semillas', '2233445566778', 'Pan de trigo con semillas', 'PorUnidad', 2.70, 0, 5, 11),  -- Bimbo
    (163, 'Papas Fritas con Pimienta', '3344556677889', 'Papas fritas sabor pimienta', 'PorUnidad', 2.50, 0, 6, 10),  -- Lays
    (164, 'Helado de Vainilla con Frutos Secos', '4455667788990', 'Helado de vainilla con frutos secos', 'PorUnidad', 4.10, 0, 17, 6),  -- Danone
    (165, 'Té de Hibisco', '5566778899001', 'Té de hibisco', 'PorUnidad', 3.90, 0, 18, 3),  -- Nestlé
    (166, 'Aceite de Girasol Alto Oleico', '6677889900112', 'Aceite de girasol alto oleico', 'PorUnidad', 5.50, 0, 19, 7),  -- Heinz
    (167, 'Pimienta Blanca', '7788990011223', 'Pimienta blanca molida', 'PorUnidad', 1.90, 0, 20, 17),  -- Knorr
    (168, 'Chocolate con Menta', '8899001122334', 'Chocolate con menta', 'PorUnidad', 4.50, 0, 21, 16),  -- Mondelez
    (169, 'Atún con Tomate', '9900112233445', 'Atún en lata con tomate', 'PorUnidad', 3.10, 0, 22, 7),  -- Heinz
    (170, 'Canelones de Espinaca y Queso', '0011223344556', 'Canelones rellenos de espinaca y queso', 'PorUnidad', 4.90, 0, 23, 15),  -- Molinos
    (171, 'Salsa de Tomate y Ajo', '1122334455667', 'Salsa de tomate con ajo', 'PorUnidad', 3.00, 0, 24, 7),  -- Heinz
    (172, 'Cereal de Trigo y Chocolate', '2233445566778', 'Cereal de trigo con chocolate', 'PorUnidad', 3.60, 0, 25, 5),  -- Kelloggs
    (173, 'Galletas de Mantequilla', '3344556677889', 'Galletas de mantequilla', 'PorUnidad', 2.70, 0, 26, 16),  -- Mondelez
    (174, 'Choclo con Hierbas', '4455667788990', 'Choclo en conserva con hierbas', 'PorUnidad', 2.20, 0, 27, 7),  -- Heinz
    (175, 'Huevos de Gallina Orgánica', '5566778899001', 'Huevos de gallina orgánica', 'PorUnidad', 4.50, 0, 28, 12),  -- La Serenísima
	(176, 'Leche de Almendras con Vainilla', '6677889900112', 'Leche de almendras con sabor a vainilla', 'PorUnidad', 2.70, 0, 2, 12),  -- La Serenísima
    (177, 'Yogur de Frutos del Bosque', '7788990011223', 'Yogur con frutos del bosque', 'PorUnidad', 1.80, 0, 2, 6),  -- Danone
    (178, 'Jugo de Pomelo', '8899001122334', 'Jugo de pomelo natural', 'PorUnidad', 2.90, 0, 1, 3),  -- Nestlé
    (179, 'Queso Brie', '9900112233445', 'Queso brie', 'PorPesoKg', 17.00, 0, 2, 12),  -- La Serenísima
    (180, 'Costillas de Res', '0011223344556', 'Costillas de res frescas', 'PorPesoKg', 20.00, 0, 3, 15),  -- Molinos
    (181, 'Melón', '1122334455667', 'Melón fresco', 'PorPesoKg', 4.50, 0, 4, 14),  -- Arcor
    (182, 'Pan de Trigo y Miel', '2233445566778', 'Pan de trigo con miel', 'PorUnidad', 2.80, 0, 5, 11),  -- Bimbo
    (183, 'Papas Fritas con Queso Cheddar', '3344556677889', 'Papas fritas sabor queso cheddar', 'PorUnidad', 2.60, 0, 6, 10),  -- Lays
    (184, 'Helado de Chocolate con Almendras', '4455667788990', 'Helado de chocolate con almendras', 'PorUnidad', 4.20, 0, 17, 6),  -- Danone
    (185, 'Té de Canela', '5566778899001', 'Té de canela', 'PorUnidad', 4.00, 0, 18, 3),  -- Nestlé
    (186, 'Aceite de Oliva con Limón', '6677889900112', 'Aceite de oliva con limón', 'PorUnidad', 7.50, 0, 19, 7),  -- Heinz
    (187, 'Cúrcuma', '7788990011223', 'Cúrcuma molida', 'PorUnidad', 2.00, 0, 20, 17),  -- Knorr
    (188, 'Chocolate con Café', '8899001122334', 'Chocolate con café', 'PorUnidad', 4.60, 0, 21, 16),  -- Mondelez
    (189, 'Atún con Aceite de Oliva', '9900112233445', 'Atún en lata con aceite de oliva', 'PorUnidad', 3.20, 0, 22, 7),  -- Heinz
    (190, 'Canelones de Espinaca y Pollo', '0011223344556', 'Canelones rellenos de espinaca y pollo', 'PorUnidad', 5.00, 0, 23, 15),  -- Molinos
    (191, 'Salsa de Tomate y Pimiento', '1122334455667', 'Salsa de tomate con pimiento', 'PorUnidad', 3.10, 0, 24, 7),  -- Heinz
    (192, 'Cereal de Arroz y Miel', '2233445566778', 'Cereal de arroz con miel', 'PorUnidad', 3.70, 0, 25, 5),  -- Kelloggs
    (193, 'Galletas de Avena y Pasas', '3344556677889', 'Galletas de avena con pasas', 'PorUnidad', 2.80, 0, 26, 16),  -- Mondelez
    (194, 'Choclo con Especias', '4455667788990', 'Choclo en conserva con especias', 'PorUnidad', 2.30, 0, 27, 7),  -- Heinz
    (195, 'Huevos de Gallina Criolla', '5566778899001', 'Huevos de gallina criolla', 'PorUnidad', 4.30, 0, 28, 12),  -- La Serenísima
    (196, 'Leche de Soja con Vainilla', '6677889900112', 'Leche de soja con sabor a vainilla', 'PorUnidad', 2.80, 0, 2, 12),  -- La Serenísima
    (197, 'Yogur de Coco y Limón', '7788990011223', 'Yogur de coco con limón', 'PorUnidad', 1.90, 0, 2, 6),  -- Danone
    (198, 'Jugo de Manzana y Zanahoria', '8899001122334', 'Jugo de manzana y zanahoria', 'PorUnidad', 3.00, 0, 1, 3),  -- Nestlé
    (199, 'Queso Gruyere', '9900112233445', 'Queso gruyere', 'PorPesoKg', 19.00, 0, 2, 12),  -- La Serenísima
    (200, 'Chuleta de Ternera', '0011223344556', 'Chuleta de ternera fresca', 'PorPesoKg', 22.00, 0, 3, 15),  -- Molinos
	(201, 'Licuadora Oster', '9988776655443', 'Licuadora de alta potencia', 'PorUnidad', 50.00, 0, 15, 22),  -- Oster
    (202, 'Aspiradora LG', '8877665544332', 'Aspiradora sin bolsa', 'PorUnidad', 120.00, 0, 15, 23),  -- LG
    (203, 'Horno Eléctrico Gama', '7766554433221', 'Horno eléctrico de 30 litros', 'PorUnidad', 80.00, 0, 15, 21),  -- Gama
    (204, 'Cafetera Oster', '6655443322110', 'Cafetera programable', 'PorUnidad', 60.00, 1, 15, 22),  -- Oster
    (205, 'Batidora de Mano Gama', '5544332211009', 'Batidora de mano con accesorios', 'PorUnidad', 40.00, 0, 15, 21),  -- Gama
    (206, 'Ventilador de Torre Panasonic', '4433221100998', 'Ventilador de torre oscilante', 'PorUnidad', 70.00, 0, 15, 24),  -- Panasonic
    (207, 'Plancha a Vapor Gama', '3322110099887', 'Plancha a vapor con ajuste de temperatura', 'PorUnidad', 45.00, 0, 15, 21),  -- Gama
    (208, 'Tostadora Oster', '2211009988776', 'Tostadora de 2 ranuras', 'PorUnidad', 30.00, 0, 15, 22),  -- Oster
    (209, 'Microondas LG', '1100998877665', 'Microondas de 20 litros', 'PorUnidad', 100.00, 1, 15, 23),  -- LG
    (210, 'Freidora de Aire Gama', '0099887766554', 'Freidora de aire sin aceite', 'PorUnidad', 90.00, 0, 15, 21),  -- Gama
    (211, 'Robot de Cocina Oster', '9988776655443', 'Robot de cocina multifunción', 'PorUnidad', 150.00, 0, 15, 22),  -- Oster
    (212, 'Purificador de Aire Panasonic', '8877665544332', 'Purificador de aire con filtro HEPA', 'PorUnidad', 200.00, 0, 15, 24),  -- Panasonic
    (213, 'Juego de Ollas Gama', '7766554433221', 'Juego de ollas antiadherentes', 'PorUnidad', 130.00, 0, 14, 21),  -- Gama
    (214, 'Cafetera Express Gama', '6655443322110', 'Cafetera express para espresso', 'PorUnidad', 110.00, 0, 15, 21),  -- Gama
    (215, 'Secador de Pelo Oster', '5544332211009', 'Secador de pelo profesional', 'PorUnidad', 35.00, 0, 15, 22),  -- Oster
    (216, 'Lavavajillas Portátil LG', '4433221100998', 'Lavavajillas portátil para 6 cubiertos', 'PorUnidad', 250.00, 1, 15, 23),  -- LG
    (217, 'Juego de Sartenes Gama', '3322110099887', 'Juego de sartenes de acero inoxidable', 'PorUnidad', 85.00, 0, 14, 21),  -- Gama
    (218, 'Hervidor Eléctrico Oster', '2211009988776', 'Hervidor eléctrico de acero inoxidable', 'PorUnidad', 25.00, 0, 15, 22),  -- Oster
    (219, 'Robot Aspirador Panasonic', '1100998877665', 'Robot aspirador con mapeo inteligente', 'PorUnidad', 300.00, 0, 15, 24),  -- Panasonic
    (220, 'Juego de Cuchillos Gama', '0099887766554', 'Juego de cuchillos profesionales', 'PorUnidad', 60.00, 0, 14, 21),  -- Gama
    (221, 'Máquina de Coser Oster', '9988776655443', 'Máquina de coser compacta', 'PorUnidad', 180.00, 0, 15, 22),  -- Oster
    (222, 'Vaporizador Facial Gama', '8877665544332', 'Vaporizador facial para cuidado de la piel', 'PorUnidad', 40.00, 0, 15, 21),  -- Gama
    (223, 'Juego de Vajilla Gama', '7766554433221', 'Juego de vajilla de porcelana', 'PorUnidad', 120.00, 0, 14, 21),  -- Gama
    (224, 'Máquina de Pan Oster', '6655443322110', 'Máquina de pan automática', 'PorUnidad', 95.00, 0, 15, 22),  -- Oster
    (225, 'Juego de Utensilios de Cocina Gama', '5544332211009', 'Juego de utensilios de silicona', 'PorUnidad', 50.00, 0, 14, 21),  -- Gama
    (226, 'Cafetera de Goteo Panasonic', '4433221100998', 'Cafetera de goteo programable', 'PorUnidad', 55.00, 0, 15, 24),  -- Panasonic
    (227, 'Juego de Tuppers Gama', '3322110099887', 'Juego de tuppers herméticos', 'PorUnidad', 30.00, 0, 14, 21),  -- Gama
    (228, 'Máquina de Helados Oster', '2211009988776', 'Máquina de helados automática', 'PorUnidad', 75.00, 0, 15, 22),  -- Oster
    (229, 'Juego de Cubiertos Gama', '1100998877665', 'Juego de cubiertos de acero inoxidable', 'PorUnidad', 70.00, 0, 14, 21),  -- Gama
    (230, 'Batidora de Pie Gama', '0099887766554', 'Batidora de pie con bowl de acero', 'PorUnidad', 110.00, 0, 15, 21);  -- Gama
SET IDENTITY_INSERT Producto OFF;

-- Cliente
-- Mínimo 100 clientes
SET IDENTITY_INSERT Cliente ON;
INSERT INTO Cliente (id, CI, nombre, apellido, correo, sexo, fechaNacimiento, fechaRegistro) VALUES
    (1, '20853641', 'Juan', 'Perez', 'juan.perez@example.com', 'M', '1990-01-01', '2023-01-01'),
    (2, '17803572', 'Maria', 'Gomez', 'maria.gomez@example.com', 'F', '1985-05-15', '2023-01-01'),
    (3, '15869022', 'Carlos', 'Lopez', 'carlos.lopez@example.com', 'M', '1978-07-22', '2023-01-01'),
    (4, '22341875', 'Ana', 'Martinez', 'ana.martinez@example.com', 'F', '1992-03-30', '2023-01-01'),
    (5, '20556677', 'Luis', 'Rodriguez', 'luis.rodriguez@example.com', 'M', '1980-11-11', '2023-01-01'),
    (6, '24267788', 'Sofia', 'Hernandez', 'sofia.hernandez@example.com', 'F', '1995-09-09', '2023-01-01'),
    (7, '22778899', 'Pedro', 'Garcia', 'pedro.garcia@example.com', 'M', '1988-12-25', '2023-01-01'),
    (8, '19889900', 'Laura', 'Diaz', 'laura.diaz@example.com', 'F', '1991-06-18', '2023-01-01'),
    (9, '178990011', 'Jorge', 'Fernandez', 'jorge.fernandez@example.com', 'M', '1983-04-14', '2023-01-01'),
    (10, '15001122', 'Carmen', 'Sanchez', 'carmen.sanchez@example.com', 'F', '1975-08-08', '2023-01-01'),
    (11, '17776655', 'Roberto', 'Vargas', 'roberto.vargas@example.com', 'M', '1987-02-28', '2023-01-01'),
    (12, '22334462', 'Elena', 'Morales', 'elena.morales@example.com', 'F', '1993-07-19', '2023-01-01'),
    (13, '15445566', 'Miguel', 'Ortega', 'miguel.ortega@example.com', 'M', '1982-10-10', '2023-01-01'),
    (14, '20556679', 'Patricia', 'Reyes', 'patricia.reyes@example.com', 'F', '1994-12-12', '2023-01-01'),
    (15, '17667788', 'Fernando', 'Castro', 'fernando.castro@example.com', 'M', '1981-03-03', '2023-01-01'),
    (16, '26778899', 'Lucia', 'Gutierrez', 'lucia.gutierrez@example.com', 'F', '1996-05-05', '2023-01-01'),
    (17, '10889900', 'Ricardo', 'Mendoza', 'ricardo.mendoza@example.com', 'M', '1979-09-09', '2023-01-01'),
    (18, '19890011', 'Isabel', 'Guerrero', 'isabel.guerrero@example.com', 'F', '1990-11-11', '2023-01-01'),
    (19, '21001122', 'Oscar', 'Ruiz', 'oscar.ruiz@example.com', 'M', '1984-02-02', '2023-01-01'),
    (20, '28776655', 'Adriana', 'Vega', 'adriana.vega@example.com', 'F', '1997-04-04', '2023-01-01'),
    (21, '11234455', 'Raul', 'Soto', 'raul.soto@example.com', 'M', '1986-06-06', '2023-01-01'),
    (22, '29445566', 'Monica', 'Campos', 'monica.campos@example.com', 'F', '1998-08-08', '2023-01-01'),
    (23, '23556677', 'Gabriel', 'Rios', 'gabriel.rios@example.com', 'M', '1989-10-10', '2023-01-01'),
    (24, '28667788', 'Veronica', 'Flores', 'veronica.flores@example.com', 'F', '1999-12-12', '2023-01-01'),
    (25, '16778899', 'Hector', 'Santos', 'hector.santos@example.com', 'M', '1980-01-01', '2023-01-01'),
    (26, '5969164', 'Diana', 'Luna', 'diana.luna@example.com', 'F', '1991-02-02', '2023-01-01'),
    (27, '11499908', 'Alberto', 'Mendez', 'alberto.mendez@example.com', 'M', '1982-03-03', '2023-01-01'),
    (28, '21748602', 'Beatriz', 'Navarro', 'beatriz.navarro@example.com', 'F', '1993-04-04', '2023-01-01'),
    (29, '9988776', 'Sergio', 'Acosta', 'sergio.acosta@example.com', 'M', '1984-05-05', '2023-01-01'),
    (30, '11223355', 'Claudia', 'Miranda', 'claudia.miranda@example.com', 'F', '1995-06-06', '2023-01-01'),
    (31, '22334456', 'Francisco', 'Ponce', 'francisco.ponce@example.com', 'M', '1986-07-07', '2023-01-01'),
    (32, '33445566', 'Natalia', 'Cordero', 'natalia.cordero@example.com', 'F', '1997-08-08', '2023-01-01'),
    (33, '20556674', 'Arturo', 'Vazquez', 'arturo.vazquez@example.com', 'M', '1988-09-09', '2023-01-01'),
    (34, '251278899', 'Olivia', 'Salazar', 'olivia.salazar@example.com', 'F', '1999-10-10', '2023-01-01'),
    (35, '251889900', 'Eduardo', 'Ramos', 'eduardo.ramos@example.com', 'M', '1980-11-11', '2023-01-01'),
    (36, '258990011', 'Silvia', 'Iglesias', 'silvia.iglesias@example.com', 'F', '1991-12-12', '2023-01-01'),
    (37, '145001122', 'Manuel', 'Delgado', 'manuel.delgado@example.com', 'M', '1982-01-01', '2023-01-01'),
    (38, '284776655', 'Alicia', 'Cortes', 'alicia.cortes@example.com', 'F', '1993-02-02', '2023-01-01'),
    (39, '114334455', 'Javier', 'Cabrera', 'javier.cabrera@example.com', 'M', '1984-03-03', '2023-01-01'),
    (40, '223445566', 'Rosa', 'Mejia', 'rosa.mejia@example.com', 'F', '1995-04-04', '2023-01-01'),
    (41, '31556677', 'Alejandro', 'Rojas', 'alejandro.rojas@example.com', 'M', '1986-05-05', '2023-01-01'),
    (42, '25667788', 'Teresa', 'Aguilar', 'teresa.aguilar@example.com', 'F', '1997-06-06', '2023-01-01'),
    (43, '25778899', 'Victor', 'Fuentes', 'victor.fuentes@example.com', 'M', '1988-07-07', '2023-01-01'),
    (44, '27889901', 'Lorena', 'Bravo', 'lorena.bravo@example.com', 'F', '1999-08-08', '2023-01-01'),
    (45, '20990011', 'Felipe', 'Ochoa', 'felipe.ochoa@example.com', 'M', '1980-09-09', '2023-01-01'),
    (46, '19001122', 'Gabriela', 'Valdez', 'gabriela.valdez@example.com', 'F', '1991-10-10', '2023-01-01'),
    (47, '18776655', 'Raul', 'Cervantes', 'raul.cervantes@example.com', 'M', '1982-11-11', '2023-01-01'),
    (48, '22334457', 'Marina', 'Gallegos', 'marina.gallegos@example.com', 'F', '1993-12-12', '2023-01-01'),
    (49, '23445566', 'Hugo', 'Serrano', 'hugo.serrano@example.com', 'M', '1984-01-01', '2023-01-01'),
    (50, '14556677', 'Daniela', 'Molina', 'daniela.molina@example.com', 'F', '1995-02-02', '2023-01-01'),
    (51, '15667788', 'Roberto', 'Guzman', 'roberto.guzman@example.com', 'M', '1990-03-15', '2023-01-01'),
    (52, '26778900', 'Sara', 'Espinoza', 'sara.espinoza@example.com', 'F', '1985-07-22', '2023-01-01'),
    (53, '27889902', 'Andres', 'Mora', 'andres.mora@example.com', 'M', '1978-09-30', '2023-01-01'),
    (54, '28990011', 'Clara', 'Villarreal', 'clara.villarreal@example.com', 'F', '1992-11-11', '2023-01-01'),
    (55, '19001123', 'Omar', 'Rangel', 'omar.rangel@example.com', 'M', '1980-12-25', '2023-01-01'),
    (56, '19776655', 'Rocio', 'Trevino', 'rocio.trevino@example.com', 'F', '1995-02-14', '2023-01-01'),
    (57, '22334458', 'Federico', 'Barrera', 'federico.barrera@example.com', 'M', '1988-04-18', '2023-01-01'),
    (58, '23445567', 'Estela', 'Zamora', 'estela.zamora@example.com', 'F', '1991-06-22', '2023-01-01'),
    (59, '24556677', 'Humberto', 'Rosales', 'humberto.rosales@example.com', 'M', '1983-08-26', '2023-01-01'),
    (60, '25667789', 'Liliana', 'Quintero', 'liliana.quintero@example.com', 'F', '1975-10-30', '2023-01-01'),
    (61, '26778901', 'Efrain', 'Velasco', 'efrain.velasco@example.com', 'M', '1987-01-03', '2023-01-01'),
    (62, '27889903', 'Yolanda', 'Lozano', 'yolanda.lozano@example.com', 'F', '1993-03-07', '2023-01-01'),
    (63, '28990012', 'Rafael', 'Galvan', 'rafael.galvan@example.com', 'M', '1982-05-11', '2023-01-01'),
    (64, '99001122', 'Aurora', 'Cisneros', 'aurora.cisneros@example.com', 'F', '1994-07-15', '2023-01-01'),
    (65, '18776656', 'Salvador', 'Juarez', 'salvador.juarez@example.com', 'M', '1981-09-19', '2023-01-01'),
    (66, '22334459', 'Cecilia', 'Nieves', 'cecilia.nieves@example.com', 'F', '1996-11-23', '2023-01-01'),
    (67, '93445566', 'Guillermo', 'Valencia', 'guillermo.valencia@example.com', 'M', '1979-01-27', '2023-01-01'),
    (68, '244556677', 'Margarita', 'Duarte', 'margarita.duarte@example.com', 'F', '1990-03-03', '2023-01-01'),
    (69, '255667788', 'Renato', 'Pineda', 'renato.pineda@example.com', 'M', '1984-05-07', '2023-01-01'),
    (70, '266778899', 'Patricio', 'Vega', 'patricio.vega@example.com', 'M', '1997-07-11', '2023-01-01'),
    (71, '177889900', 'Dora', 'Carrillo', 'dora.carrillo@example.com', 'F', '1988-09-15', '2023-01-01'),
    (72, '188990011', 'Leonardo', 'Montes', 'leonardo.montes@example.com', 'M', '1991-11-19', '2023-01-01'),
    (73, '19001124', 'Marisol', 'Rivas', 'marisol.rivas@example.com', 'F', '1982-01-23', '2023-01-01'),
    (74, '18776657', 'Cesar', 'Solis', 'cesar.solis@example.com', 'M', '1993-03-27', '2023-01-01'),
    (75, '26334455', 'Adela', 'Maldonado', 'adela.maldonado@example.com', 'F', '1986-05-31', '2023-01-01'),
    (76, '22445566', 'Rodolfo', 'Castañeda', 'rodolfo.castaneda@example.com', 'M', '1999-08-04', '2023-01-01'),
    (77, '23556678', 'Gladys', 'Cuevas', 'gladys.cuevas@example.com', 'F', '1980-10-08', '2023-01-01'),
    (78, '25567788', 'Mauricio', 'Orozco', 'mauricio.orozco@example.com', 'M', '1992-12-12', '2023-01-01'),
    (79, '17778899', 'Nora', 'Arellano', 'nora.arellano@example.com', 'F', '1985-02-16', '2023-01-01'),
    (80, '8589900', 'Rolando', 'De Leon', 'rolando.deleon@example.com', 'M', '1978-04-20', '2023-01-01'),
    (81, '19490011', 'Elsa', 'Cervantes', 'elsa.cervantes@example.com', 'F', '1991-06-24', '2023-01-01'),
    (82, '19001125', 'Pablo', 'Camacho', 'pablo.camacho@example.com', 'M', '1983-08-28', '2023-01-01'),
    (83, '29887766', 'Rebeca', 'Villegas', 'rebeca.villegas@example.com', 'F', '1994-10-02', '2023-01-01'),
    (84, '11223344', 'Gerardo', 'Zavala', 'gerardo.zavala@example.com', 'M', '1987-12-06', '2023-01-01'),
    (85, '22334460', 'Irene', 'Salinas', 'irene.salinas@example.com', 'F', '1996-02-10', '2023-01-01'),
    (86, '31452698', 'Alfredo', 'Lara', 'alfredo.lara@example.com', 'M', '1989-04-14', '2023-01-01'),
    (87, '12667788', 'Leticia', 'Miranda', 'leticia.miranda@example.com', 'F', '1998-06-18', '2023-01-01'),
    (88, '25778898', 'Hugo', 'Reyes', 'hugo.reyes@example.com', 'M', '1981-08-22', '2023-01-01'),
    (89, '14889900', 'Sonia', 'Cortez', 'sonia.cortez@example.com', 'F', '1990-10-26', '2023-01-01'),
    (90, '14890011', 'Raul', 'Mendez', 'raul.mendez@example.com', 'M', '1984-12-30', '2023-01-01'),
    (91, '17001122', 'Teresa', 'Guerra', 'teresa.guerra@example.com', 'F', '1997-03-05', '2023-01-01'),
    (92, '19776656', 'Felipe', 'Esparza', 'felipe.esparza@example.com', 'M', '1986-05-09', '2023-01-01'),
    (93, '11234456', 'Alicia', 'Valenzuela', 'alicia.valenzuela@example.com', 'F', '1999-07-13', '2023-01-01'),
    (94, '22345566', 'Ramiro', 'Escobar', 'ramiro.escobar@example.com', 'M', '1980-09-17', '2023-01-01'),
    (95, '20556678', 'Carmen', 'Fierro', 'carmen.fierro@example.com', 'F', '1993-11-21', '2023-01-01'),
    (96, '21667788', 'Oscar', 'Rocha', 'oscar.rocha@example.com', 'M', '1988-01-25', '2023-01-01'),
    (97, '18452369', 'Luisa', 'Pacheco', 'luisa.pacheco@example.com', 'F', '1995-03-01', '2023-01-01'),
    (98, '25874105', 'Jorge', 'Cordova', 'jorge.cordova@example.com', 'M', '1982-05-05', '2023-01-01'),
    (99, '25869022', 'Diana', 'Vega', 'diana.vega@example.com', 'F', '1991-07-09', '2023-01-01'),
    (100, '21990112', 'Roberto', 'Aguirre', 'roberto.aguirre@example.com', 'M', '1984-09-13', '2023-01-01');
SET IDENTITY_INSERT Cliente OFF;

-- Cliente tiene Direccion
-- 80% de los clientes debe tener mínimo 1 dirección, el resto mínimo 2
SET IDENTITY_INSERT ClienteDireccion ON;
INSERT INTO ClienteDireccion (id, clienteId, tipoDireccion, dirLinea1, ciudadId) VALUES
	-- 80 clientes con una sola dirección (Facturación o Envío)
	(1, 1, 'Facturación', 'Calle 123', 1),
	(2, 2, 'Facturación', 'Avenida 456', 4),
	(3, 3, 'Facturación', 'Calle 789', 7),
	(4, 4, 'Facturación', 'Calle 101', 10),
	(5, 5, 'Facturación', 'Avenida 112', 13),
	(6, 6, 'Envío', 'Calle 131', 16),
	(7, 7, 'Facturación', 'Avenida 415', 19),
	(8, 8, 'Facturación', 'Calle 161', 22),
	(9, 9, 'Facturación', 'Avenida 718', 25),
	(10, 10, 'Facturación', 'Calle 191', 28),
	(11, 11, 'Facturación', 'Avenida 202', 31),
	(12, 12, 'Facturación', 'Calle 212', 34),
	(13, 13, 'Facturación', 'Avenida 223', 37),
	(14, 14, 'Facturación', 'Calle 232', 40),
	(15, 15, 'Facturación', 'Avenida 253', 43),
	(16, 16, 'Facturación', 'Calle 262', 46),
	(17, 17, 'Envío', 'Avenida 271', 49),
	(18, 18, 'Facturación', 'Calle 282', 52),
	(19, 19, 'Facturación', 'Avenida 293', 55),
	(20, 20, 'Facturación', 'Calle 303', 58),
	(21, 21, 'Facturación', 'Avenida 313', 61),
	(22, 22, 'Facturación', 'Calle 323', 64),
	(23, 23, 'Facturación', 'Avenida 334', 2),
	(24, 24, 'Facturación', 'Calle 343', 5),
	(25, 25, 'Facturación', 'Avenida 353', 8),
	(26, 26, 'Facturación', 'Calle 363', 11),
	(27, 27, 'Facturación', 'Avenida 373', 14),
	(28, 28, 'Facturación', 'Calle 383', 17),
	(29, 29, 'Facturación', 'Avenida 393', 20),
	(30, 30, 'Facturación', 'Calle 404', 23),
	(31, 31, 'Facturación', 'Avenida 414', 26),
	(32, 32, 'Facturación', 'Calle 424', 29),
	(33, 33, 'Facturación', 'Avenida 434', 32),
	(34, 34, 'Facturación', 'Calle 444', 35),
	(35, 35, 'Envío', 'Avenida 454', 38),
	(36, 36, 'Facturación', 'Calle 464', 41),
	(37, 37, 'Facturación', 'Avenida 474', 44),
	(38, 38, 'Facturación', 'Calle 484', 47),
	(39, 39, 'Facturación', 'Avenida 494', 50),
	(40, 40, 'Facturación', 'Calle 505', 53),
	(41, 41, 'Facturación', 'Avenida 515', 56),
	(42, 42, 'Envío', 'Calle 525', 59),
	(43, 43, 'Facturación', 'Avenida 535', 62),
	(44, 44, 'Facturación', 'Calle 545', 65),
	(45, 45, 'Facturación', 'Avenida 555', 3),
	(46, 46, 'Facturación', 'Calle 565', 6),
	(47, 47, 'Envío', 'Avenida 575', 9),
	(48, 48, 'Facturación', 'Calle 585', 12),
	(49, 49, 'Facturación', 'Avenida 595', 15),
	(50, 50, 'Facturación', 'Calle 606', 18),
	(51, 51, 'Facturación', 'Avenida 616', 21),
	(52, 52, 'Facturación', 'Calle 626', 24),
	(53, 53, 'Envío', 'Avenida 636', 27),
	(54, 54, 'Facturación', 'Calle 646', 30),
	(55, 55, 'Facturación', 'Avenida 656', 33),
	(56, 56, 'Facturación', 'Calle 666', 36),
	(57, 57, 'Facturación', 'Avenida 676', 39),
	(58, 58, 'Facturación', 'Calle 686', 42),
	(59, 59, 'Facturación', 'Avenida 696', 45),
	(60, 60, 'Facturación', 'Calle 707', 48),
	(61, 61, 'Facturación', 'Avenida 717', 51),
	(62, 62, 'Facturación', 'Calle 727', 54),
	(63, 63, 'Facturación', 'Avenida 737', 57),
	(64, 64, 'Facturación', 'Calle 747', 60),
	(65, 65, 'Facturación', 'Avenida 757', 63),
	(66, 66, 'Facturación', 'Calle 767', 40),
	(67, 67, 'Facturación', 'Avenida 777', 2),
	(68, 68, 'Envío', 'Calle 787', 5),
	(69, 69, 'Facturación', 'Avenida 797', 8),
	(70, 70, 'Facturación', 'Calle 808', 11),
	(71, 71, 'Envío', 'Avenida 818', 14),
	(72, 72, 'Facturación', 'Calle 828', 17),
	(73, 73, 'Facturación', 'Avenida 838', 20),
	(74, 74, 'Facturación', 'Calle 848', 23),
	(75, 75, 'Envío', 'Avenida 858', 26),
	(76, 76, 'Facturación', 'Calle 868', 29),
	(77, 77, 'Facturación', 'Avenida 878', 32),
	(78, 78, 'Facturación', 'Calle 888', 35),
	(79, 79, 'Envío', 'Avenida 898', 38),
	(80, 80, 'Facturación', 'Calle 909', 41),

	-- 20 clientes con dos direcciones (Facturación y Envío)
	(81, 81, 'Facturación', 'Calle 911', 44),
	(82, 81, 'Envío', 'Avenida 912', 47),
	(83, 82, 'Facturación', 'Calle 913', 50),
	(84, 82, 'Envío', 'Avenida 914', 53),
	(85, 83, 'Facturación', 'Calle 915', 56),
	(86, 83, 'Envío', 'Avenida 916', 59),
	(87, 84, 'Facturación', 'Calle 917', 62),
	(88, 84, 'Envío', 'Avenida 918', 65),
	(89, 85, 'Facturación', 'Calle 919', 3),
	(90, 85, 'Envío', 'Avenida 920', 6),
	(91, 86, 'Facturación', 'Calle 921', 9),
	(92, 86, 'Envío', 'Avenida 922', 12),
	(93, 87, 'Facturación', 'Calle 923', 15),
	(94, 87, 'Envío', 'Avenida 924', 18),
	(95, 88, 'Facturación', 'Calle 925', 21),
	(96, 88, 'Envío', 'Avenida 926', 24),
	(97, 89, 'Facturación', 'Calle 927', 27),
	(98, 89, 'Envío', 'Avenida 928', 30),
	(99, 90, 'Facturación', 'Calle 929', 33),
	(100, 90, 'Envío', 'Avenida 930', 36),
	(101, 91, 'Facturación', 'Calle 931', 39),
	(102, 91, 'Envío', 'Avenida 932', 42),
	(103, 92, 'Facturación', 'Calle 933', 45),
	(104, 92, 'Envío', 'Avenida 934', 48),
	(105, 93, 'Facturación', 'Calle 935', 51),
	(106, 93, 'Envío', 'Avenida 936', 54),
	(107, 94, 'Facturación', 'Calle 937', 57),
	(108, 94, 'Envío', 'Avenida 938', 60),
	(109, 95, 'Facturación', 'Calle 939', 63),
	(110, 95, 'Envío', 'Avenida 940', 30),
	(111, 96, 'Facturación', 'Calle 941', 2),
	(112, 96, 'Envío', 'Avenida 942', 5),
	(113, 97, 'Facturación', 'Calle 943', 8),
	(114, 97, 'Envío', 'Avenida 944', 11),
	(115, 98, 'Facturación', 'Calle 945', 14),
	(116, 98, 'Envío', 'Avenida 946', 17),
	(117, 99, 'Facturación', 'Calle 947', 20),
	(118, 99, 'Envío', 'Avenida 948', 23),
	(119, 100, 'Facturación', 'Calle 949', 26),
	(120, 100, 'Envío', 'Avenida 950', 29);
SET IDENTITY_INSERT ClienteDireccion OFF;

-- Carrito
-- El 25% de los clientes tienen productos en su carrito
INSERT INTO Carrito (clienteId, productoId, fechaAgregado, cantidad, precioPor) VALUES
	-- Cliente 1 tiene 2 productos en el carrito
	(1, 1, '2023-10-01', 2, 3.00),
	(1, 2, '2023-10-01', 1, 1.40),

	-- Cliente 2 tiene 1 producto en el carrito
	(2, 3, '2023-10-02', 1, 4.00),

	-- Cliente 3 tiene 3 productos en el carrito
	(3, 4, '2023-10-03', 1, 1.20),
	(3, 5, '2023-10-03', 2, 1.60),
	(3, 6, '2023-10-03', 1, 3.50),

	-- Cliente 4 tiene 1 producto en el carrito
	(4, 7, '2023-10-04', 1, 2.00),

	-- Cliente 5 tiene 2 productos en el carrito
	(5, 8, '2023-10-05', 1, 2.50),
	(5, 9, '2023-10-05', 1, 1.80),

	-- Cliente 6 tiene 1 producto en el carrito
	(6, 10, '2023-10-06', 1, 2.00),

	-- Cliente 7 tiene 3 productos en el carrito
	(7, 11, '2023-10-07', 2, 6.00),
	(7, 12, '2023-10-07', 1, 8.50),
	(7, 13, '2023-10-07', 1, 12.00),

	-- Cliente 8 tiene 1 producto en el carrito
	(8, 14, '2023-10-08', 1, 10.00),

	-- Cliente 9 tiene 2 productos en el carrito
	(9, 15, '2023-10-09', 1, 2.50),
	(9, 16, '2023-10-09', 1, 0.90),

	-- Cliente 10 tiene 1 producto en el carrito
	(10, 17, '2023-10-10', 1, 2.20),

	-- Cliente 11 tiene 3 productos en el carrito
	(11, 18, '2023-10-11', 1, 1.00),
	(11, 19, '2023-10-11', 1, 15.00),
	(11, 20, '2023-10-11', 1, 7.00),

	-- Cliente 12 tiene 1 producto en el carrito
	(12, 21, '2023-10-12', 1, 2.50),

	-- Cliente 13 tiene 2 productos en el carrito
	(13, 22, '2023-10-13', 1, 2.00),
	(13, 23, '2023-10-13', 1, 1.80),

	-- Cliente 14 tiene 1 producto en el carrito
	(14, 24, '2023-10-14', 1, 3.50),

	-- Cliente 15 tiene 3 productos en el carrito
	(15, 25, '2023-10-15', 1, 5.00),
	(15, 26, '2023-10-15', 1, 8.00),
	(15, 27, '2023-10-15', 1, 1.50),

	-- Cliente 16 tiene 1 producto en el carrito
	(16, 28, '2023-10-16', 1, 4.00),

	-- Cliente 17 tiene 2 productos en el carrito
	(17, 29, '2023-10-17', 1, 2.20),
	(17, 30, '2023-10-17', 1, 3.00),

	-- Cliente 18 tiene 1 producto en el carrito
	(18, 31, '2023-10-18', 1, 2.80),

	-- Cliente 19 tiene 3 productos en el carrito
	(19, 32, '2023-10-19', 1, 3.20),
	(19, 33, '2023-10-19', 1, 2.00),
	(19, 34, '2023-10-19', 1, 1.50),

	-- Cliente 20 tiene 1 producto en el carrito
	(20, 35, '2023-10-20', 1, 2.00),

	-- Cliente 21 tiene 2 productos en el carrito
	(21, 36, '2023-10-21', 1, 1.50),
	(21, 37, '2023-10-21', 1, 1.20),

	-- Cliente 22 tiene 1 producto en el carrito
	(22, 38, '2023-10-22', 1, 2.00),

	-- Cliente 23 tiene 3 productos en el carrito
	(23, 39, '2023-10-23', 1, 10.00),
	(23, 40, '2023-10-23', 1, 9.00),
	(23, 41, '2023-10-23', 1, 2.00),

	-- Cliente 24 tiene 1 producto en el carrito
	(24, 42, '2023-10-24', 1, 1.80),

	-- Cliente 25 tiene 2 productos en el carrito
	(25, 43, '2023-10-25', 1, 2.00),
	(25, 44, '2023-10-25', 1, 3.80);

-- Producto recomendado para Producto
-- Las recomendaciones deben ser al menos 40
INSERT INTO ProductoRecomendadoParaProducto(productoId, productoRecomendadoId, mensaje) VALUES
    (1, 2, 'Si te gusta Coca-Cola, prueba Pepsi Max.'),
    (3, 25, 'Disfruta tu café instantáneo con café molido para filtro.'),
    (4, 5, 'Combina la leche entera con yogur natural.'),
    (6, 32, 'Prueba los cereales de maíz con cereales de avena.'),
    (7, 31, 'Salsa de tomate con salsa barbacoa para más sabor.'),
    (8, 33, 'Galletas Oreo con galletas de avena y miel.'),
    (9, 22, 'Pan integral con pan de centeno.'),
    (10, 16, 'Cerveza Quilmes con agua mineral.'),
    (11, 21, 'Manzanas frescas con bananas.'),
    (12, 20, 'Carne de res con filete de pollo.'),
    (13, 19, 'Queso Gouda con queso cheddar.'),
    (14, 29, 'Pescado fresco con atún en lata.'),
    (15, 30, 'Arroz integral con ravioles de ricotta.'),
    (16, 17, 'Agua mineral con jugo de naranja.'),
    (18, 24, 'Yogur de frutas con helado de vainilla.'),
    (23, 43, 'Papas fritas clásicas con papas fritas sabor queso.'),
    (26, 46, 'Aceite de oliva con aceite de girasol.'),
    (27, 47, 'Sal marina con pimienta negra.'),
    (28, 48, 'Chocolate amargo con chocolate con leche.'),
    (34, 74, 'Maíz en lata con choclo en conserva.'),
    (35, 75, 'Huevos frescos con huevos de codorniz.'),
    (36, 76, 'Leche deslactosada con leche de soja.'),
    (37, 77, 'Yogur griego con yogur de durazno.'),
    (38, 78, 'Jugo de manzana con jugo de zanahoria.'),
    (39, 79, 'Queso mozzarella con queso ricotta.'),
    (40, 80, 'Pechuga de pavo con chuleta de cordero.'),
    (41, 61, 'Naranjas frescas con uvas.'),
    (42, 62, 'Pan de trigo con pan de avena.'),
    (44, 64, 'Helado de chocolate con helado de fresa.'),
    (45, 215, 'Afeitadora Gillette con secador de pelo Oster.'),
    (52, 54, 'Detergente líquido Ariel con limpiador multiuso Cif.'),
    (53, 56, 'Jabón en barra Dove con jabón facial Dove.'),
    (55, 57, 'Jabón en polvo Ariel con suavizante.'),
    (58, 138, 'Jugo de piña con jugo de maracuyá.'),
    (59, 99, 'Queso parmesano con queso azul.'),
    (60, 100, 'Lomo de cerdo con costillas de cerdo.'),
    (63, 103, 'Papas fritas light con papas fritas sabor jalapeño.'),
    (65, 85, 'Té negro con té de manzanilla.'),
    (66, 86, 'Aceite de coco con aceite de maíz.'),
    (67, 87, 'Orégano con comino.'),
    (68, 88, 'Chocolate blanco con chocolate con almendras.');

-- Proveedor
-- Mínimo 40 proveedores
SET IDENTITY_INSERT Proveedor ON;
INSERT INTO Proveedor (id, RIF, nombre, contacto, telefono, correo, ciudadId) VALUES
    (1, 'J-12345678-9', 'Distribuidora La Esquina', 'Juan Pérez', '0212-1234567', 'juan.perez@distribuidora.com', 47),
    (2, 'J-98765432-1', 'Alimentos El Trigal', 'María Gómez', '0212-9876543', 'maria.gomez@alimentos.com', 48),
    (3, 'J-11223344-5', 'Productos La Granja', 'Pedro Rodríguez', '0212-1122334', 'pedro.rodriguez@lagranja.com', 49),
    (4, 'J-55667788-0', 'Carnes El Llanero', 'Ana López', '0212-5566778', 'ana.lopez@carnes.com', 50),
    (5, 'J-99001122-3', 'Lácteos La Vaquita', 'Luis Martínez', '0212-9900112', 'luis.martinez@lacteos.com', 51),
    (6, 'J-33445566-8', 'Bebidas Refrescantes', 'Laura Sánchez', '0212-3344556', 'laura.sanchez@bebidas.com', 52),
    (7, 'J-77889900-2', 'Frutas y Verduras El Campo', 'Carlos Ramírez', '0212-7788990', 'carlos.ramirez@frutas.com', 53),
    (8, 'J-00998877-6', 'Panadería La Espiga', 'Sofía Torres', '0212-0099887', 'sofia.torres@panaderia.com', 54),
    (9, 'J-66554433-1', 'Artículos de Limpieza Brillo', 'Diego Díaz', '0212-6655443', 'diego.diaz@limpieza.com', 55),
    (10, 'J-22110099-4', 'Productos de Higiene Personal', 'Valentina Ruiz', '0212-2211009', 'valentina.ruiz@higiene.com', 56),
    (11, 'J-44332211-7', 'Dulces y Chocolates La Dulzura', 'Andrés García', '0212-4433221', 'andres.garcia@dulces.com', 57),
    (12, 'J-88776655-9', 'Granos y Cereales El Granero', 'Camila Fernández', '0212-8877665', 'camila.fernandez@granos.com', 58),
    (13, 'J-11224455-0', 'Especias y Condimentos El Sabor', 'Ricardo Jiménez', '0212-1122445', 'ricardo.jimenez@especias.com', 59),
    (14, 'J-55442211-3', 'Embutidos La Montaña', 'Daniela Moreno', '0212-5544221', 'daniela.moreno@embutidos.com', 60),
    (15, 'J-99002233-8', 'Congelados El Polo Norte', 'Alejandro Pérez', '0212-9900223', 'alejandro.perez@congelados.com', 61),
    (16, 'J-33220099-2', 'Enlatados La Abundancia', 'Isabella Soto', '0212-3322009', 'isabella.soto@enlatados.com', 62),
    (17, 'J-77889900-5', 'Salsas y Aderezos El Gusto', 'Gabriel Vargas', '0212-7788990', 'gabriel.vargas@salsas.com', 63),
    (18, 'J-00998877-1', 'Aceites y Vinagres El Olivo', 'Valeria Torres', '0212-0099887', 'valeria.torres@aceites.com', 64),
    (19, 'J-66554433-4', 'Productos para Mascotas Huellitas', 'Martín Díaz', '0212-6655443', 'martin.diaz@mascotas.com', 65),
    (20, 'J-22110099-7', 'Artículos para el Hogar Casa Linda', 'Luciana Ruiz', '0212-2211009', 'luciana.ruiz@hogar.com', 47),
    (21, 'J-13579246-8', 'Distribuidora Sol Naciente', 'Roberto Gómez', '0212-1357924', 'roberto.gomez@solnaciente.com', 48),
    (22, 'J-24680135-7', 'Alimentos La Montaña Azul', 'Ana Pérez', '0212-2468013', 'ana.perez@montanaazul.com', 49),
    (23, 'J-98761234-5', 'Productos El Buen Gusto', 'Carlos Rodríguez', '0212-9876123', 'carlos.rodriguez@buengusto.com', 50),
    (24, 'J-12348765-9', 'Carnes El Vaquero', 'Laura López', '0212-1234876', 'laura.lopez@elvaquero.com', 51),
    (25, 'J-56789012-3', 'Lácteos La Campesina', 'Pedro Martínez', '0212-5678901', 'pedro.martinez@lacampesina.com', 52),
    (26, 'J-90123456-7', 'Bebidas El Oasis', 'Sofía Sánchez', '0212-9012345', 'sofia.sanchez@eloasis.com', 53),
    (27, 'J-34567890-1', 'Frutas y Verduras El Jardín', 'Luis Ramírez', '0212-3456789', 'luis.ramirez@eljardin.com', 54),
    (28, 'J-78901234-5', 'Panadería El Horno', 'Valentina Torres', '0212-7890123', 'valentina.torres@elhorno.com', 55),
    (29, 'J-01234567-9', 'Artículos de Limpieza La Estrella', 'Diego Díaz', '0212-0123456', 'diego.diaz@laestrella.com', 56),
    (30, 'J-45678901-2', 'Productos de Higiene La Salud', 'Camila Ruiz', '0212-4567890', 'camila.ruiz@lasalud.com', 57),
    (31, 'J-89012345-6', 'Dulces y Chocolates El Paraíso', 'Andrés García', '0212-8901234', 'andres.garcia@elparaiso.com', 58),
    (32, 'J-23456789-0', 'Granos y Cereales La Cosecha', 'Ricardo Fernández', '0212-2345678', 'ricardo.fernandez@lacosecha.com', 59),
    (33, 'J-67890123-4', 'Especias y Condimentos El Tesoro', 'Daniela Jiménez', '0212-6789012', 'daniela.jimenez@eltesoro.com', 60),
    (34, 'J-09876543-2', 'Embutidos La Delicia', 'Alejandro Moreno', '0212-0987654', 'alejandro.moreno@ladelicia.com', 61),
    (35, 'J-43210987-6', 'Congelados El Glaciar', 'Isabella Pérez', '0212-4321098', 'isabella.perez@elglaciar.com', 62),
    (36, 'J-87654321-0', 'Enlatados La Despensa', 'Gabriel Soto', '0212-8765432', 'gabriel.soto@ladespensa.com', 63),
    (37, 'J-21098765-4', 'Salsas y Aderezos La Salsa', 'Valeria Vargas', '0212-2109876', 'valeria.vargas@lasalsa.com', 64),
    (38, 'J-65432109-8', 'Aceites y Vinagres El Dorado', 'Martín Torres', '0212-6543210', 'martin.torres@eldorado.com', 65),
    (39, 'J-98701234-6', 'Productos para Mascotas El Arca', 'Luciana Díaz', '0212-9870123', 'luciana.diaz@elarca.com', 47),
    (40, 'J-12398765-0', 'Artículos para el Hogar La Mansión', 'Nicolás Ruiz', '0212-1239876', 'nicolas.ruiz@lamansion.com', 48);
SET IDENTITY_INSERT Proveedor OFF;

-- Proveedor provee Producto
-- Mínimo 50 compras a proveedores 
SET IDENTITY_INSERT ProveedorProducto ON;
INSERT INTO ProveedorProducto (id, proveedorId, productoId, fechaCompra, precioPor, cantidad) VALUES
    (1, 1, 1, '2023-10-26', 1.50, 100),
    (2, 2, 2, '2023-10-26', 2.00, 50),
    (3, 3, 3, '2023-10-25', 5.00, 20),
    (4, 4, 4, '2023-10-25', 1.00, 150),
    (5, 5, 5, '2023-10-24', 0.80, 200),
    (6, 6, 6, '2023-10-24', 3.00, 30),
    (7, 7, 7, '2023-10-23', 1.20, 80),
    (8, 8, 8, '2023-10-23', 2.50, 40),
    (9, 9, 9, '2023-10-22', 0.70, 120),
    (10, 10, 10, '2023-10-22', 4.00, 25),
    (11, 11, 1, '2023-10-21', 1.60, 90),
    (12, 12, 2, '2023-10-21', 2.10, 60),
    (13, 13, 3, '2023-10-20', 5.20, 18),
    (14, 14, 4, '2023-10-20', 1.10, 160),
    (15, 15, 5, '2023-10-19', 0.90, 210),
    (16, 16, 6, '2023-10-19', 3.20, 35),
    (17, 17, 7, '2023-10-18', 1.30, 75),
    (18, 18, 8, '2023-10-18', 2.60, 45),
    (19, 19, 9, '2023-10-17', 0.75, 130),
    (20, 20, 10, '2023-10-17', 4.10, 28),
    (21, 21, 3, '2023-10-16', 5.50, 22),
    (22, 22, 4, '2023-10-16', 1.20, 170),
    (23, 23, 5, '2023-10-15', 1.00, 220),
    (24, 24, 6, '2023-10-15', 3.50, 38),
    (25, 25, 7, '2023-10-14', 1.40, 85),
    (26, 26, 8, '2023-10-14', 2.80, 50),
    (27, 27, 9, '2023-10-13', 0.80, 140),
    (28, 28, 10, '2023-10-13', 4.20, 30),
    (29, 29, 1, '2023-10-12', 1.70, 100),
    (30, 30, 2, '2023-10-12', 2.20, 70),
    (31, 31, 3, '2023-10-11', 5.70, 25),
    (32, 32, 4, '2023-10-11', 1.30, 180),
    (33, 33, 5, '2023-10-10', 1.10, 230),
    (34, 34, 6, '2023-10-10', 3.70, 40),
    (35, 35, 7, '2023-10-09', 1.50, 90),
    (36, 36, 8, '2023-10-09', 3.00, 55),
    (37, 37, 9, '2023-10-08', 0.85, 150),
    (38, 38, 10, '2023-10-08', 4.30, 32),
    (39, 39, 1, '2023-10-07', 1.80, 110),
    (40, 40, 2, '2023-10-07', 2.30, 75),
    (41, 1, 6, '2023-10-06', 3.80, 42),
    (42, 2, 7, '2023-10-06', 1.60, 95),
    (43, 3, 8, '2023-10-05', 3.20, 60),
    (44, 4, 9, '2023-10-05', 0.90, 160),
    (45, 5, 10, '2023-10-04', 4.40, 35),
    (46, 6, 1, '2023-10-04', 1.90, 120),
    (47, 7, 2, '2023-10-03', 2.40, 80),
    (48, 8, 3, '2023-10-03', 6.00, 28),
    (49, 9, 4, '2023-10-02', 1.40, 190),
    (50, 10, 5, '2023-10-02', 1.20, 240);
SET IDENTITY_INSERT ProveedorProducto OFF;

-- Factura 
-- Mínimo 100 facturas/compras con al menos 3 productos en cada una (la diferencia entre compras online y física no debe ser mucha)
-- Los ID de factura tanto de OrdenOnline como de VentaFisica tienen que ser diferentes, para poder diferenciar de dónde proviene cierta factura, si a una venta física o a una orden online
SET IDENTITY_INSERT Factura ON;
INSERT INTO Factura (id, fechaEmision, clienteId, subTotal, montoDescuentoTotal, porcentajeIVA, montoIVA, montoTotal) VALUES
	-- 50 facturas online (IDs 1 a 50)
	(1, '2024-06-01', 1, 30.00, 0.00, 16, 4.80, 34.80),    -- Online, sin promo
	(2, '2024-06-05', 2, 45.00, 5.00, 16, 6.40, 46.40),    -- Online, con promo
	(3, '2024-06-10', 3, 25.00, 0.00, 16, 4.00, 29.00),    -- Online, sin promo
	(4, '2024-06-15', 4, 60.00, 10.00, 16, 8.00, 58.00),   -- Online, con promo
	(5, '2024-06-20', 5, 35.00, 0.00, 16, 5.60, 40.60),    -- Online, sin promo
	(6, '2024-07-01', 6, 50.00, 5.00, 16, 7.20, 52.20),    -- Online, con promo
	(7, '2024-07-05', 7, 40.00, 0.00, 16, 6.40, 46.40),    -- Online, sin promo
	(8, '2024-07-10', 8, 55.00, 10.00, 16, 7.20, 52.20),   -- Online, con promo
	(9, '2024-07-15', 9, 28.00, 0.00, 16, 4.48, 32.48),    -- Online, sin promo
	(10, '2024-07-20', 10, 70.00, 15.00, 16, 8.80, 63.80), -- Online, con promo
	(11, '2024-08-01', 11, 33.00, 0.00, 16, 5.28, 38.28),  -- Online, sin promo
	(12, '2024-08-05', 12, 48.00, 5.00, 16, 6.88, 49.88),  -- Online, con promo
	(13, '2024-08-10', 13, 62.00, 0.00, 16, 9.92, 71.92),  -- Online, sin promo
	(14, '2024-08-15', 14, 39.00, 5.00, 16, 5.44, 39.44),  -- Online, con promo
	(15, '2024-08-20', 15, 45.00, 0.00, 16, 7.20, 52.20),  -- Online, sin promo
	(16, '2024-09-01', 16, 50.00, 10.00, 16, 6.40, 46.40), -- Online, con promo
	(17, '2024-09-05', 17, 30.00, 0.00, 16, 4.80, 34.80),  -- Online, sin promo
	(18, '2024-09-10', 18, 65.00, 5.00, 16, 9.60, 69.60),  -- Online, con promo
	(19, '2024-09-15', 19, 42.00, 0.00, 16, 6.72, 48.72),  -- Online, sin promo
	(20, '2024-09-20', 20, 55.00, 10.00, 16, 7.20, 52.20), -- Online, con promo
	(21, '2024-10-01', 21, 38.00, 0.00, 16, 6.08, 44.08),  -- Online, sin promo
	(22, '2024-10-05', 22, 47.00, 5.00, 16, 6.72, 48.72),  -- Online, con promo
	(23, '2024-10-10', 23, 60.00, 0.00, 16, 9.60, 69.60),  -- Online, sin promo
	(24, '2024-10-15', 24, 35.00, 5.00, 16, 4.80, 34.80),  -- Online, con promo
	(25, '2024-10-20', 25, 50.00, 0.00, 16, 8.00, 58.00),  -- Online, sin promo
	(26, '2024-11-01', 26, 45.00, 10.00, 16, 5.60, 40.60), -- Online, con promo
	(27, '2024-11-05', 27, 32.00, 0.00, 16, 5.12, 37.12),  -- Online, sin promo
	(28, '2024-11-10', 28, 58.00, 5.00, 16, 8.48, 61.48),  -- Online, con promo
	(29, '2024-11-15', 29, 40.00, 0.00, 16, 6.40, 46.40),  -- Online, sin promo
	(30, '2024-11-20', 30, 65.00, 10.00, 16, 8.80, 63.80), -- Online, con promo
	(31, '2024-12-01', 31, 38.00, 0.00, 16, 6.08, 44.08),  -- Online, sin promo
	(32, '2024-12-05', 32, 52.00, 5.00, 16, 7.52, 54.52),  -- Online, con promo
	(33, '2024-12-10', 33, 45.00, 0.00, 16, 7.20, 52.20),  -- Online, sin promo
	(34, '2024-12-15', 34, 60.00, 10.00, 16, 8.00, 58.00), -- Online, con promo
	(35, '2024-12-20', 35, 30.00, 0.00, 16, 4.80, 34.80),  -- Online, sin promo
	(36, '2025-01-01', 36, 48.00, 5.00, 16, 6.88, 49.88),  -- Online, con promo
	(37, '2025-01-05', 37, 55.00, 0.00, 16, 8.80, 63.80),  -- Online, sin promo
	(38, '2025-01-10', 38, 42.00, 5.00, 16, 5.92, 42.92),  -- Online, con promo
	(39, '2025-01-15', 39, 35.00, 0.00, 16, 5.60, 40.60),  -- Online, sin promo
	(40, '2025-01-20', 40, 50.00, 10.00, 16, 6.40, 46.40), -- Online, con promo
	(41, '2025-02-01', 41, 38.00, 0.00, 16, 6.08, 44.08),  -- Online, sin promo
	(42, '2025-02-05', 42, 45.00, 5.00, 16, 6.40, 46.40),  -- Online, con promo
	(43, '2025-02-10', 43, 60.00, 0.00, 16, 9.60, 69.60),  -- Online, sin promo
	(44, '2025-02-15', 44, 32.00, 5.00, 16, 4.32, 31.32),  -- Online, con promo
	(45, '2025-02-20', 45, 48.00, 0.00, 16, 7.68, 55.68),  -- Online, sin promo
	(46, '2025-03-01', 46, 55.00, 10.00, 16, 7.20, 52.20), -- Online, con promo
	(47, '2025-03-05', 47, 40.00, 0.00, 16, 6.40, 46.40),  -- Online, sin promo
	(48, '2025-03-10', 48, 65.00, 5.00, 16, 9.60, 69.60),  -- Online, con promo
	(49, '2025-03-15', 49, 30.00, 0.00, 16, 4.80, 34.80),  -- Online, sin promo
	(50, '2025-03-20', 50, 45.00, 10.00, 16, 5.60, 40.60), -- Online, con promo

	-- 50 facturas físicas (IDs 51 a 100)
	(51, '2024-06-02', 51, 35.00, 0.00, 16, 5.60, 40.60),  -- Física, sin promo
	(52, '2024-06-06', 52, 50.00, 5.00, 16, 7.20, 52.20),  -- Física, con promo
	(53, '2024-06-11', 53, 40.00, 0.00, 16, 6.40, 46.40),  -- Física, sin promo
	(54, '2024-06-16', 54, 60.00, 10.00, 16, 8.00, 58.00), -- Física, con promo
	(55, '2024-06-21', 55, 45.00, 0.00, 16, 7.20, 52.20),  -- Física, sin promo
	(56, '2024-07-02', 56, 55.00, 5.00, 16, 8.00, 58.00),  -- Física, con promo
	(57, '2024-07-06', 57, 30.00, 0.00, 16, 4.80, 34.80),  -- Física, sin promo
	(58, '2024-07-11', 58, 65.00, 10.00, 16, 8.80, 63.80), -- Física, con promo
	(59, '2024-07-16', 59, 38.00, 0.00, 16, 6.08, 44.08),  -- Física, sin promo
	(60, '2024-07-21', 60, 48.00, 5.00, 16, 6.88, 49.88),  -- Física, con promo
	(61, '2024-08-02', 61, 42.00, 0.00, 16, 6.72, 48.72),  -- Física, sin promo
	(62, '2024-08-06', 62, 50.00, 10.00, 16, 6.40, 46.40), -- Física, con promo
	(63, '2024-08-11', 63, 35.00, 0.00, 16, 5.60, 40.60),  -- Física, sin promo
	(64, '2024-08-16', 64, 60.00, 5.00, 16, 8.80, 63.80),  -- Física, con promo
	(65, '2024-08-21', 65, 45.00, 0.00, 16, 7.20, 52.20),  -- Física, sin promo
	(66, '2024-09-02', 66, 55.00, 10.00, 16, 7.20, 52.20), -- Física, con promo
	(67, '2024-09-06', 67, 30.00, 0.00, 16, 4.80, 34.80),  -- Física, sin promo
	(68, '2024-09-11', 68, 65.00, 5.00, 16, 9.60, 69.60),  -- Física, con promo
	(69, '2024-09-16', 69, 40.00, 0.00, 16, 6.40, 46.40),  -- Física, sin promo
	(70, '2024-09-21', 70, 50.00, 10.00, 16, 6.40, 46.40), -- Física, con promo
	(71, '2024-10-02', 71, 38.00, 0.00, 16, 6.08, 44.08),  -- Física, sin promo
	(72, '2024-10-06', 72, 45.00, 5.00, 16, 6.40, 46.40),  -- Física, con promo
	(73, '2024-10-11', 73, 60.00, 0.00, 16, 9.60, 69.60),  -- Física, sin promo
	(74, '2024-10-16', 74, 35.00, 5.00, 16, 4.80, 34.80),  -- Física, con promo
	(75, '2024-10-21', 75, 55.00, 0.00, 16, 8.80, 63.80),  -- Física, sin promo
	(76, '2024-11-02', 76, 48.00, 10.00, 16, 6.08, 44.08), -- Física, con promo
	(77, '2024-11-06', 77, 42.00, 0.00, 16, 6.72, 48.72),  -- Física, sin promo
	(78, '2024-11-11', 78, 50.00, 5.00, 16, 7.20, 52.20),  -- Física, con promo
	(79, '2024-11-16', 79, 35.00, 0.00, 16, 5.60, 40.60),  -- Física, sin promo
	(80, '2024-11-21', 80, 60.00, 10.00, 16, 8.00, 58.00), -- Física, con promo
	(81, '2024-12-02', 81, 45.00, 0.00, 16, 7.20, 52.20),  -- Física, sin promo
	(82, '2024-12-06', 82, 55.00, 5.00, 16, 8.00, 58.00),  -- Física, con promo
	(83, '2024-12-11', 83, 30.00, 0.00, 16, 4.80, 34.80),  -- Física, sin promo
	(84, '2024-12-16', 84, 65.00, 10.00, 16, 8.80, 63.80), -- Física, con promo
	(85, '2024-12-21', 85, 40.00, 0.00, 16, 6.40, 46.40),  -- Física, sin promo
	(86, '2025-01-02', 86, 50.00, 5.00, 16, 7.20, 52.20),  -- Física, con promo
	(87, '2025-01-06', 87, 38.00, 0.00, 16, 6.08, 44.08),  -- Física, sin promo
	(88, '2025-01-11', 88, 45.00, 10.00, 16, 5.60, 40.60), -- Física, con promo
	(89, '2025-01-16', 89, 60.00, 0.00, 16, 9.60, 69.60),  -- Física, sin promo
	(90, '2025-01-21', 90, 35.00, 5.00, 16, 4.80, 34.80),  -- Física, con promo
	(91, '2025-02-02', 91, 55.00, 0.00, 16, 8.80, 63.80),  -- Física, sin promo
	(92, '2025-02-06', 92, 48.00, 10.00, 16, 6.08, 44.08), -- Física, con promo
	(93, '2025-02-11', 93, 42.00, 0.00, 16, 6.72, 48.72),  -- Física, sin promo
	(94, '2025-02-16', 94, 50.00, 5.00, 16, 7.20, 52.20),  -- Física, con promo
	(95, '2025-02-21', 95, 35.00, 0.00, 16, 5.60, 40.60),  -- Física, sin promo
	(96, '2025-03-02', 96, 60.00, 10.00, 16, 8.00, 58.00), -- Física, con promo
	(97, '2025-03-06', 97, 45.00, 0.00, 16, 7.20, 52.20),  -- Física, sin promo
	(98, '2025-03-11', 98, 55.00, 5.00, 16, 8.00, 58.00),  -- Física, con promo
	(99, '2025-03-16', 99, 30.00, 0.00, 16, 4.80, 34.80),  -- Física, sin promo
	(100, '2025-03-21', 100, 65.00, 10.00, 16, 8.80, 63.80); -- Física, con promo
SET IDENTITY_INSERT Factura OFF;

-- Tipo de envio
SET IDENTITY_INSERT TipoEnvio ON;
INSERT INTO TipoEnvio (id, nombreEnvio, tiempoEstimadoEntrega, costoEnvio) VALUES
    (1, 'Envio inmediato', 1, 50.00),
    (2, 'Mismo dia', 4, 30.00),
    (3, 'Al dia siguiente', 23, 20.00),
    (4, 'Semana siguiente', 168, 6.00),
    (5, 'Envio estandar', 72, 15.00);
SET IDENTITY_INSERT TipoEnvio OFF;

-- Orden online
SET IDENTITY_INSERT OrdenOnline ON;
INSERT INTO OrdenOnline (id, clienteId, nroOrden, fechaCreacion, tipoEnvioId, facturaId) VALUES
	(1, 1, 1001, '2024-06-01', 1, 1),   -- Envío inmediato
	(2, 2, 1002, '2024-06-05', 2, 2),   -- Mismo día
	(3, 3, 1003, '2024-06-10', 5, 3),   
	(4, 4, 1004, '2024-06-15', 4, 4),   -- Semana siguiente
	(5, 5, 1005, '2024-06-20', 5, 5),   -- Envío estándar
	(6, 6, 1006, '2024-07-01', 1, 6),
	(7, 7, 1007, '2024-07-05', 2, 7),
	(8, 8, 1008, '2024-07-10', 3, 8),	-- Al día siguiente
	(9, 9, 1009, '2024-07-15', 4, 9),
	(10, 10, 1010, '2024-07-20', 5, 10),
	(11, 11, 1011, '2024-08-01', 1, 11),
	(12, 12, 1012, '2024-08-05', 2, 12),
	(13, 13, 1013, '2024-08-10', 3, 13),
	(14, 14, 1014, '2024-08-15', 4, 14),
	(15, 15, 1015, '2024-08-20', 5, 15),
	(16, 16, 1016, '2024-09-01', 1, 16),
	(17, 17, 1017, '2024-09-05', 2, 17),
	(18, 18, 1018, '2024-09-10', 3, 18),
	(19, 19, 1019, '2024-09-15', 4, 19),
	(20, 20, 1020, '2024-09-20', 5, 20),
	(21, 21, 1021, '2024-10-01', 1, 21),
	(22, 22, 1022, '2024-10-05', 2, 22),
	(23, 23, 1023, '2024-10-10', 3, 23),
	(24, 24, 1024, '2024-10-15', 4, 24),
	(25, 25, 1025, '2024-10-20', 5, 25),
	(26, 26, 1026, '2024-11-01', 1, 26),
	(27, 27, 1027, '2024-11-05', 2, 27),
	(28, 28, 1028, '2024-11-10', 3, 28),
	(29, 29, 1029, '2024-11-15', 4, 29),
	(30, 30, 1030, '2024-11-20', 5, 30),
	(31, 31, 1031, '2024-12-01', 1, 31),
	(32, 32, 1032, '2024-12-05', 2, 32),
	(33, 33, 1033, '2024-12-10', 3, 33),
	(34, 34, 1034, '2024-12-15', 4, 34),
	(35, 35, 1035, '2024-12-20', 5, 35),
	(36, 36, 1036, '2025-01-01', 1, 36),
	(37, 37, 1037, '2025-01-05', 2, 37),
	(38, 38, 1038, '2025-01-10', 3, 38),
	(39, 39, 1039, '2025-01-15', 4, 39),
	(40, 40, 1040, '2025-01-20', 5, 40),
	(41, 41, 1041, '2025-02-01', 1, 41),
	(42, 42, 1042, '2025-02-05', 2, 42),
	(43, 43, 1043, '2025-02-10', 3, 43),
	(44, 44, 1044, '2025-02-15', 4, 44),
	(45, 45, 1045, '2025-02-20', 5, 45),
	(46, 46, 1046, '2025-03-01', 1, 46),
	(47, 47, 1047, '2025-03-05', 2, 47),
	(48, 48, 1048, '2025-03-10', 3, 48),
	(49, 49, 1049, '2025-03-15', 4, 49),
	(50, 50, 1050, '2025-03-20', 5, 50);
SET IDENTITY_INSERT OrdenOnline OFF;

-- Detalle de orden online
INSERT INTO OrdenDetalle (ordenId, productoId, cantidad, precioPor) VALUES
	-- Orden 1 (Factura 1: subTotal 30.00)
	(1, 1, 10, 1.50),  -- Coca-Cola Original: 10 * 1.50 = 15.00
	(1, 2, 8, 1.40),   -- Pepsi Max: 8 * 1.40 = 11.20
	(1, 4, 3, 1.20),   -- Leche Entera La Serenísima: 3 * 1.20 = 3.60 (Total: 29.80 ≈ 30.00)

	-- Orden 2 (Factura 2: subTotal 45.00, descuento 5.00)
	(2, 12, 3, 8.50),  -- Carne de Res: 3 * 8.50 = 25.50
	(2, 11, 4, 3.00),  -- Manzanas: 4 * 3.00 = 12.00
	(2, 8, 3, 2.50),   -- Galletas Oreo: 3 * 2.50 = 7.50 (Total: 45.00)

	-- Orden 3 (Factura 3: subTotal 25.00)
	(3, 1, 6, 1.50),   -- Coca-Cola Original: 6 * 1.50 = 9.00
	(3, 5, 10, 0.80),  -- Yogur Danone Natural: 10 * 0.80 = 8.00
	(3, 9, 4, 1.80),   -- Pan Bimbo Integral: 4 * 1.80 = 7.20 (Total: 24.20 ≈ 25.00)

	-- Orden 4 (Factura 4: subTotal 60.00, descuento 10.00)
	(4, 12, 4, 8.50),  -- Carne de Res: 4 * 8.50 = 34.00
	(4, 13, 2, 12.00), -- Queso Gouda: 2 * 12.00 = 24.00
	(4, 16, 2, 0.90),  -- Agua Mineral: 2 * 0.90 = 1.80 (Total: 59.80 ≈ 60.00)

	-- Orden 5 (Factura 5: subTotal 35.00)
	(5, 3, 5, 4.00),   -- Nescafé Clásico: 5 * 4.00 = 20.00
	(5, 6, 3, 3.50),   -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(5, 7, 2, 2.00),   -- Salsa de Tomate Heinz: 2 * 2.00 = 4.00 (Total: 34.50 ≈ 35.00)

	-- Orden 6 (Factura 6: subTotal 50.00, descuento 5.00)
	(6, 20, 4, 7.00),  -- Filete de Pollo: 4 * 7.00 = 28.00
	(6, 11, 5, 3.00),  -- Manzanas: 5 * 3.00 = 15.00
	(6, 8, 3, 2.50),   -- Galletas Oreo: 3 * 2.50 = 7.50 (Total: 50.50 ≈ 50.00)

	-- Orden 7 (Factura 7: subTotal 40.00)
	(7, 10, 10, 2.00), -- Cerveza Quilmes: 10 * 2.00 = 20.00
	(7, 23, 5, 1.80),  -- Papas Fritas: 5 * 1.80 = 9.00
	(7, 15, 4, 2.50),  -- Arroz Integral: 4 * 2.50 = 10.00 (Total: 39.00 ≈ 40.00)

	-- Orden 8 (Factura 8: subTotal 55.00, descuento 10.00)
	(8, 14, 3, 10.00), -- Pescado Fresco: 3 * 10.00 = 30.00
	(8, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	(8, 24, 2, 3.50),  -- Helado de Vainilla: 2 * 3.50 = 7.00 (Total: 52.00 ≈ 55.00)

	-- Orden 9 (Factura 9: subTotal 28.00)
	(9, 1, 8, 1.50),   -- Coca-Cola Original: 8 * 1.50 = 12.00
	(9, 4, 6, 1.20),   -- Leche Entera La Serenísima: 6 * 1.20 = 7.20
	(9, 5, 8, 0.80),   -- Yogur Danone Natural: 8 * 0.80 = 6.40 (Total: 25.60 ≈ 28.00)

	-- Orden 10 (Factura 10: subTotal 70.00, descuento 15.00)
	(10, 12, 5, 8.50), -- Carne de Res: 5 * 8.50 = 42.50
	(10, 13, 2, 12.00),-- Queso Gouda: 2 * 12.00 = 24.00
	(10, 8, 2, 2.50),  -- Galletas Oreo: 2 * 2.50 = 5.00 (Total: 71.50 ≈ 70.00)

	-- Orden 11 (Factura 11: subTotal 33.00)
	(11, 3, 4, 4.00),  -- Nescafé Clásico: 4 * 4.00 = 16.00
	(11, 6, 3, 3.50),  -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(11, 9, 3, 1.80),  -- Pan Bimbo Integral: 3 * 1.80 = 5.40 (Total: 31.90 ≈ 33.00)

	-- Orden 12 (Factura 12: subTotal 48.00, descuento 5.00)
	(12, 20, 3, 7.00), -- Filete de Pollo: 3 * 7.00 = 21.00
	(12, 11, 5, 3.00), -- Manzanas: 5 * 3.00 = 15.00
	(12, 24, 3, 3.50), -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 46.50 ≈ 48.00)

	-- Orden 13 (Factura 13: subTotal 62.00)
	(13, 14, 4, 10.00),-- Pescado Fresco: 4 * 10.00 = 40.00
	(13, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(13, 10, 3, 2.00), -- Cerveza Quilmes: 3 * 2.00 = 6.00 (Total: 61.00 ≈ 62.00)

	-- Orden 14 (Factura 14: subTotal 39.00, descuento 5.00)
	(14, 12, 2, 8.50), -- Carne de Res: 2 * 8.50 = 17.00
	(14, 11, 4, 3.00), -- Manzanas: 4 * 3.00 = 12.00
	(14, 8, 4, 2.50),  -- Galletas Oreo: 4 * 2.50 = 10.00 (Total: 39.00)

	-- Orden 15 (Factura 15: subTotal 45.00)
	(15, 3, 5, 4.00),  -- Nescafé Clásico: 5 * 4.00 = 20.00
	(15, 6, 4, 3.50),  -- Cereal Kelloggs Corn Flakes: 4 * 3.50 = 14.00
	(15, 15, 4, 2.50), -- Arroz Integral: 4 * 2.50 = 10.00 (Total: 44.00 ≈ 45.00)

	-- Orden 16 (Factura 16: subTotal 50.00, descuento 10.00)
	(16, 20, 3, 7.00), -- Filete de Pollo: 3 * 7.00 = 21.00
	(16, 13, 2, 12.00),-- Queso Gouda: 2 * 12.00 = 24.00
	(16, 16, 5, 0.90), -- Agua Mineral: 5 * 0.90 = 4.50 (Total: 49.50 ≈ 50.00)

	-- Orden 17 (Factura 17: subTotal 30.00)
	(17, 1, 8, 1.50),  -- Coca-Cola Original: 8 * 1.50 = 12.00
	(17, 4, 6, 1.20),  -- Leche Entera La Serenísima: 6 * 1.20 = 7.20
	(17, 5, 10, 0.80), -- Yogur Danone Natural: 10 * 0.80 = 8.00 (Total: 27.20 ≈ 30.00)

	-- Orden 18 (Factura 18: subTotal 65.00, descuento 5.00)
	(18, 12, 5, 8.50), -- Carne de Res: 5 * 8.50 = 42.50
	(18, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(18, 24, 2, 3.50), -- Helado de Vainilla: 2 * 3.50 = 7.00 (Total: 64.50 ≈ 65.00)

	-- Orden 19 (Factura 19: subTotal 42.00)
	(19, 10, 8, 2.00), -- Cerveza Quilmes: 8 * 2.00 = 16.00
	(19, 23, 6, 1.80), -- Papas Fritas: 6 * 1.80 = 10.80
	(19, 15, 6, 2.50), -- Arroz Integral: 6 * 2.50 = 15.00 (Total: 41.80 ≈ 42.00)

	-- Orden 20 (Factura 20: subTotal 55.00, descuento 10.00)
	(20, 14, 3, 10.00),-- Pescado Fresco: 3 * 10.00 = 30.00
	(20, 11, 5, 3.00), -- Manzanas: 5 * 3.00 = 15.00
	(20, 8, 4, 2.50),  -- Galletas Oreo: 4 * 2.50 = 10.00 (Total: 55.00)

	-- Orden 21 (Factura 21: subTotal 38.00)
	(21, 3, 4, 4.00),  -- Nescafé Clásico: 4 * 4.00 = 16.00
	(21, 6, 3, 3.50),  -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(21, 9, 6, 1.80),  -- Pan Bimbo Integral: 6 * 1.80 = 10.80 (Total: 37.30 ≈ 38.00)

	-- Orden 22 (Factura 22: subTotal 47.00, descuento 5.00)
	(22, 20, 3, 7.00), -- Filete de Pollo: 3 * 7.00 = 21.00
	(22, 13, 1, 12.00),-- Queso Gouda: 1 * 12.00 = 12.00
	(22, 24, 4, 3.50), -- Helado de Vainilla: 4 * 3.50 = 14.00 (Total: 47.00)

	-- Orden 23 (Factura 23: subTotal 60.00)
	(23, 12, 4, 8.50), -- Carne de Res: 4 * 8.50 = 34.00
	(23, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(23, 10, 5, 2.00), -- Cerveza Quilmes: 5 * 2.00 = 10.00 (Total: 59.00 ≈ 60.00)

	-- Orden 24 (Factura 24: subTotal 35.00, descuento 5.00)
	(24, 11, 5, 3.00), -- Manzanas: 5 * 3.00 = 15.00
	(24, 8, 5, 2.50),  -- Galletas Oreo: 5 * 2.50 = 12.50
	(24, 16, 8, 0.90), -- Agua Mineral: 8 * 0.90 = 7.20 (Total: 34.70 ≈ 35.00)

	-- Orden 25 (Factura 25: subTotal 50.00)
	(25, 14, 3, 10.00),-- Pescado Fresco: 3 * 10.00 = 30.00
	(25, 15, 5, 2.50), -- Arroz Integral: 5 * 2.50 = 12.50
	(25, 23, 4, 1.80), -- Papas Fritas: 4 * 1.80 = 7.20 (Total: 49.70 ≈ 50.00)

	-- Orden 26 (Factura 26: subTotal 45.00, descuento 10.00)
	(26, 20, 3, 7.00), -- Filete de Pollo: 3 * 7.00 = 21.00
	(26, 13, 1, 12.00),-- Queso Gouda: 1 * 12.00 = 12.00
	(26, 24, 3, 3.50), -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 43.50 ≈ 45.00)

	-- Orden 27 (Factura 27: subTotal 32.00)
	(27, 1, 8, 1.50),  -- Coca-Cola Original: 8 * 1.50 = 12.00
	(27, 4, 6, 1.20),  -- Leche Entera La Serenísima: 6 * 1.20 = 7.20
	(27, 5, 10, 0.80), -- Yogur Danone Natural: 10 * 0.80 = 8.00 (Total: 27.20 ≈ 32.00)

	-- Orden 28 (Factura 28: subTotal 58.00, descuento 5.00)
	(28, 12, 4, 8.50), -- Carne de Res: 4 * 8.50 = 34.00
	(28, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(28, 8, 3, 2.50),  -- Galletas Oreo: 3 * 2.50 = 7.50 (Total: 56.50 ≈ 58.00)

	-- Orden 29 (Factura 29: subTotal 40.00)
	(29, 10, 10, 2.00),-- Cerveza Quilmes: 10 * 2.00 = 20.00
	(29, 23, 5, 1.80), -- Papas Fritas: 5 * 1.80 = 9.00
	(29, 15, 4, 2.50), -- Arroz Integral: 4 * 2.50 = 10.00 (Total: 39.00 ≈ 40.00)

	-- Orden 30 (Factura 30: subTotal 65.00, descuento 10.00)
	(30, 14, 4, 10.00),-- Pescado Fresco: 4 * 10.00 = 40.00
	(30, 13, 2, 12.00),-- Queso Gouda: 2 * 12.00 = 24.00
	(30, 16, 2, 0.90), -- Agua Mineral: 2 * 0.90 = 1.80 (Total: 65.80 ≈ 65.00)

	-- Orden 31 (Factura 31: subTotal 38.00)
	(31, 3, 4, 4.00),  -- Nescafé Clásico: 4 * 4.00 = 16.00
	(31, 6, 3, 3.50),  -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(31, 9, 6, 1.80),  -- Pan Bimbo Integral: 6 * 1.80 = 10.80 (Total: 37.30 ≈ 38.00)

	-- Orden 32 (Factura 32: subTotal 52.00, descuento 5.00)
	(32, 20, 4, 7.00), -- Filete de Pollo: 4 * 7.00 = 28.00
	(32, 11, 5, 3.00), -- Manzanas: 5 * 3.00 = 15.00
	(32, 8, 3, 2.50),  -- Galletas Oreo: 3 * 2.50 = 7.50 (Total: 50.50 ≈ 52.00)

	-- Orden 33 (Factura 33: subTotal 45.00)
	(33, 12, 3, 8.50), -- Carne de Res: 3 * 8.50 = 25.50
	(33, 15, 4, 2.50), -- Arroz Integral: 4 * 2.50 = 10.00
	(33, 23, 5, 1.80), -- Papas Fritas: 5 * 1.80 = 9.00 (Total: 44.50 ≈ 45.00)

	-- Orden 34 (Factura 34: subTotal 60.00, descuento 10.00)
	(34, 14, 3, 10.00),-- Pescado Fresco: 3 * 10.00 = 30.00
	(34, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(34, 24, 4, 3.50), -- Helado de Vainilla: 4 * 3.50 = 14.00 (Total: 59.00 ≈ 60.00)

	-- Orden 35 (Factura 35: subTotal 30.00)
	(35, 1, 8, 1.50),  -- Coca-Cola Original: 8 * 1.50 = 12.00
	(35, 4, 6, 1.20),  -- Leche Entera La Serenísima: 6 * 1.20 = 7.20
	(35, 5, 10, 0.80), -- Yogur Danone Natural: 10 * 0.80 = 8.00 (Total: 27.20 ≈ 30.00)

	-- Orden 36 (Factura 36: subTotal 48.00, descuento 5.00)
	(36, 20, 3, 7.00), -- Filete de Pollo: 3 * 7.00 = 21.00
	(36, 13, 1, 12.00),-- Queso Gouda: 1 * 12.00 = 12.00
	(36, 24, 4, 3.50), -- Helado de Vainilla: 4 * 3.50 = 14.00 (Total: 47.00 ≈ 48.00)

	-- Orden 37 (Factura 37: subTotal 55.00)
	(37, 12, 4, 8.50), -- Carne de Res: 4 * 8.50 = 34.00
	(37, 15, 5, 2.50), -- Arroz Integral: 5 * 2.50 = 12.50
	(37, 23, 4, 1.80), -- Papas Fritas: 4 * 1.80 = 7.20 (Total: 53.70 ≈ 55.00)

	-- Orden 38 (Factura 38: subTotal 42.00, descuento 5.00)
	(38, 11, 5, 3.00), -- Manzanas: 5 * 3.00 = 15.00
	(38, 8, 5, 2.50),  -- Galletas Oreo: 5 * 2.50 = 12.50
	(38, 10, 6, 2.00), -- Cerveza Quilmes: 6 * 2.00 = 12.00 (Total: 39.50 ≈ 42.00)

	-- Orden 39 (Factura 39: subTotal 35.00)
	(39, 3, 4, 4.00),  -- Nescafé Clásico: 4 * 4.00 = 16.00
	(39, 6, 3, 3.50),  -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(39, 9, 5, 1.80),  -- Pan Bimbo Integral: 5 * 1.80 = 9.00 (Total: 35.50 ≈ 35.00)

	-- Orden 40 (Factura 40: subTotal 50.00, descuento 10.00)
	(40, 20, 4, 7.00), -- Filete de Pollo: 4 * 7.00 = 28.00
	(40, 13, 1, 12.00),-- Queso Gouda: 1 * 12.00 = 12.00
	(40, 24, 3, 3.50), -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 50.50 ≈ 50.00)

	-- Orden 41 (Factura 41: subTotal 38.00)
	(41, 10, 8, 2.00), -- Cerveza Quilmes: 8 * 2.00 = 16.00
	(41, 23, 6, 1.80), -- Papas Fritas: 6 * 1.80 = 10.80
	(41, 15, 5, 2.50), -- Arroz Integral: 5 * 2.50 = 12.50 (Total: 39.30 ≈ 38.00)

	-- Orden 42 (Factura 42: subTotal 45.00, descuento 5.00)
	(42, 12, 3, 8.50), -- Carne de Res: 3 * 8.50 = 25.50
	(42, 11, 4, 3.00), -- Manzanas: 4 * 3.00 = 12.00
	(42, 8, 3, 2.50),  -- Galletas Oreo: 3 * 2.50 = 7.50 (Total: 45.00)

	-- Orden 43 (Factura 43: subTotal 60.00)
	(43, 14, 4, 10.00),-- Pescado Fresco: 4 * 10.00 = 40.00
	(43, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(43, 10, 2, 2.00), -- Cerveza Quilmes: 2 * 2.00 = 4.00 (Total: 59.00 ≈ 60.00)

	-- Orden 44 (Factura 44: subTotal 32.00, descuento 5.00)
	(44, 11, 4, 3.00), -- Manzanas: 4 * 3.00 = 12.00
	(44, 8, 4, 2.50),  -- Galletas Oreo: 4 * 2.50 = 10.00
	(44, 16, 10, 0.90),-- Agua Mineral: 10 * 0.90 = 9.00 (Total: 31.00 ≈ 32.00)

	-- Orden 45 (Factura 45: subTotal 48.00)
	(45, 12, 3, 8.50), -- Carne de Res: 3 * 8.50 = 25.50
	(45, 15, 5, 2.50), -- Arroz Integral: 5 * 2.50 = 12.50
	(45, 23, 5, 1.80), -- Papas Fritas: 5 * 1.80 = 9.00 (Total: 47.00 ≈ 48.00)

	-- Orden 46 (Factura 46: subTotal 55.00, descuento 10.00)
	(46, 20, 4, 7.00), -- Filete de Pollo: 4 * 7.00 = 28.00
	(46, 13, 2, 12.00),-- Queso Gouda: 2 * 12.00 = 24.00
	(46, 16, 3, 0.90), -- Agua Mineral: 3 * 0.90 = 2.70 (Total: 54.70 ≈ 55.00)

	-- Orden 47 (Factura 47: subTotal 40.00)
	(47, 10, 8, 2.00), -- Cerveza Quilmes: 8 * 2.00 = 16.00
	(47, 23, 6, 1.80), -- Papas Fritas: 6 * 1.80 = 10.80
	(47, 15, 5, 2.50), -- Arroz Integral: 5 * 2.50 = 12.50 (Total: 39.30 ≈ 40.00)

	-- Orden 48 (Factura 48: subTotal 65.00, descuento 5.00)
	(48, 14, 4, 10.00),-- Pescado Fresco: 4 * 10.00 = 40.00
	(48, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(48, 24, 3, 3.50), -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 65.50 ≈ 65.00)

	-- Orden 49 (Factura 49: subTotal 30.00)
	(49, 1, 8, 1.50),  -- Coca-Cola Original: 8 * 1.50 = 12.00
	(49, 4, 6, 1.20),  -- Leche Entera La Serenísima: 6 * 1.20 = 7.20
	(49, 5, 10, 0.80), -- Yogur Danone Natural: 10 * 0.80 = 8.00 (Total: 27.20 ≈ 30.00)

	-- Orden 50 (Factura 50: subTotal 45.00, descuento 10.00)
	(50, 12, 3, 8.50), -- Carne de Res: 3 * 8.50 = 25.50
	(50, 11, 4, 3.00), -- Manzanas: 4 * 3.00 = 12.00
	(50, 8, 3, 2.50);  -- Galletas Oreo: 3 * 2.50 = 7.50 (Total: 45.00)

-- Detalle de factura
INSERT INTO FacturaDetalle (facturaId, productoId, cantidad, precioPor) VALUES
		-- Orden 1 (Factura 1: subTotal 30.00)
	(1, 1, 10, 1.50),  -- Coca-Cola Original: 10 * 1.50 = 15.00
	(1, 2, 8, 1.40),   -- Pepsi Max: 8 * 1.40 = 11.20
	(1, 4, 3, 1.20),   -- Leche Entera La Serenísima: 3 * 1.20 = 3.60 (Total: 29.80 ≈ 30.00)

	-- Orden 2 (Factura 2: subTotal 45.00, descuento 5.00)
	(2, 12, 3, 8.50),  -- Carne de Res: 3 * 8.50 = 25.50
	(2, 11, 4, 3.00),  -- Manzanas: 4 * 3.00 = 12.00
	(2, 8, 3, 2.50),   -- Galletas Oreo: 3 * 2.50 = 7.50 (Total: 45.00)

	-- Orden 3 (Factura 3: subTotal 25.00)
	(3, 1, 6, 1.50),   -- Coca-Cola Original: 6 * 1.50 = 9.00
	(3, 5, 10, 0.80),  -- Yogur Danone Natural: 10 * 0.80 = 8.00
	(3, 9, 4, 1.80),   -- Pan Bimbo Integral: 4 * 1.80 = 7.20 (Total: 24.20 ≈ 25.00)

	-- Orden 4 (Factura 4: subTotal 60.00, descuento 10.00)
	(4, 12, 4, 8.50),  -- Carne de Res: 4 * 8.50 = 34.00
	(4, 13, 2, 12.00), -- Queso Gouda: 2 * 12.00 = 24.00
	(4, 16, 2, 0.90),  -- Agua Mineral: 2 * 0.90 = 1.80 (Total: 59.80 ≈ 60.00)

	-- Orden 5 (Factura 5: subTotal 35.00)
	(5, 3, 5, 4.00),   -- Nescafé Clásico: 5 * 4.00 = 20.00
	(5, 6, 3, 3.50),   -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(5, 7, 2, 2.00),   -- Salsa de Tomate Heinz: 2 * 2.00 = 4.00 (Total: 34.50 ≈ 35.00)

	-- Orden 6 (Factura 6: subTotal 50.00, descuento 5.00)
	(6, 20, 4, 7.00),  -- Filete de Pollo: 4 * 7.00 = 28.00
	(6, 11, 5, 3.00),  -- Manzanas: 5 * 3.00 = 15.00
	(6, 8, 3, 2.50),   -- Galletas Oreo: 3 * 2.50 = 7.50 (Total: 50.50 ≈ 50.00)

	-- Orden 7 (Factura 7: subTotal 40.00)
	(7, 10, 10, 2.00), -- Cerveza Quilmes: 10 * 2.00 = 20.00
	(7, 23, 5, 1.80),  -- Papas Fritas: 5 * 1.80 = 9.00
	(7, 15, 4, 2.50),  -- Arroz Integral: 4 * 2.50 = 10.00 (Total: 39.00 ≈ 40.00)

	-- Orden 8 (Factura 8: subTotal 55.00, descuento 10.00)
	(8, 14, 3, 10.00), -- Pescado Fresco: 3 * 10.00 = 30.00
	(8, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	(8, 24, 2, 3.50),  -- Helado de Vainilla: 2 * 3.50 = 7.00 (Total: 52.00 ≈ 55.00)

	-- Orden 9 (Factura 9: subTotal 28.00)
	(9, 1, 8, 1.50),   -- Coca-Cola Original: 8 * 1.50 = 12.00
	(9, 4, 6, 1.20),   -- Leche Entera La Serenísima: 6 * 1.20 = 7.20
	(9, 5, 8, 0.80),   -- Yogur Danone Natural: 8 * 0.80 = 6.40 (Total: 25.60 ≈ 28.00)

	-- Orden 10 (Factura 10: subTotal 70.00, descuento 15.00)
	(10, 12, 5, 8.50), -- Carne de Res: 5 * 8.50 = 42.50
	(10, 13, 2, 12.00),-- Queso Gouda: 2 * 12.00 = 24.00
	(10, 8, 2, 2.50),  -- Galletas Oreo: 2 * 2.50 = 5.00 (Total: 71.50 ≈ 70.00)

	-- Orden 11 (Factura 11: subTotal 33.00)
	(11, 3, 4, 4.00),  -- Nescafé Clásico: 4 * 4.00 = 16.00
	(11, 6, 3, 3.50),  -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(11, 9, 3, 1.80),  -- Pan Bimbo Integral: 3 * 1.80 = 5.40 (Total: 31.90 ≈ 33.00)

	-- Orden 12 (Factura 12: subTotal 48.00, descuento 5.00)
	(12, 20, 3, 7.00), -- Filete de Pollo: 3 * 7.00 = 21.00
	(12, 11, 5, 3.00), -- Manzanas: 5 * 3.00 = 15.00
	(12, 24, 3, 3.50), -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 46.50 ≈ 48.00)

	-- Orden 13 (Factura 13: subTotal 62.00)
	(13, 14, 4, 10.00),-- Pescado Fresco: 4 * 10.00 = 40.00
	(13, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(13, 10, 3, 2.00), -- Cerveza Quilmes: 3 * 2.00 = 6.00 (Total: 61.00 ≈ 62.00)

	-- Orden 14 (Factura 14: subTotal 39.00, descuento 5.00)
	(14, 12, 2, 8.50), -- Carne de Res: 2 * 8.50 = 17.00
	(14, 11, 4, 3.00), -- Manzanas: 4 * 3.00 = 12.00
	(14, 8, 4, 2.50),  -- Galletas Oreo: 4 * 2.50 = 10.00 (Total: 39.00)

	-- Orden 15 (Factura 15: subTotal 45.00)
	(15, 3, 5, 4.00),  -- Nescafé Clásico: 5 * 4.00 = 20.00
	(15, 6, 4, 3.50),  -- Cereal Kelloggs Corn Flakes: 4 * 3.50 = 14.00
	(15, 15, 4, 2.50), -- Arroz Integral: 4 * 2.50 = 10.00 (Total: 44.00 ≈ 45.00)

	-- Orden 16 (Factura 16: subTotal 50.00, descuento 10.00)
	(16, 20, 3, 7.00), -- Filete de Pollo: 3 * 7.00 = 21.00
	(16, 13, 2, 12.00),-- Queso Gouda: 2 * 12.00 = 24.00
	(16, 16, 5, 0.90), -- Agua Mineral: 5 * 0.90 = 4.50 (Total: 49.50 ≈ 50.00)

	-- Orden 17 (Factura 17: subTotal 30.00)
	(17, 1, 8, 1.50),  -- Coca-Cola Original: 8 * 1.50 = 12.00
	(17, 4, 6, 1.20),  -- Leche Entera La Serenísima: 6 * 1.20 = 7.20
	(17, 5, 10, 0.80), -- Yogur Danone Natural: 10 * 0.80 = 8.00 (Total: 27.20 ≈ 30.00)

	-- Orden 18 (Factura 18: subTotal 65.00, descuento 5.00)
	(18, 12, 5, 8.50), -- Carne de Res: 5 * 8.50 = 42.50
	(18, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(18, 24, 2, 3.50), -- Helado de Vainilla: 2 * 3.50 = 7.00 (Total: 64.50 ≈ 65.00)

	-- Orden 19 (Factura 19: subTotal 42.00)
	(19, 10, 8, 2.00), -- Cerveza Quilmes: 8 * 2.00 = 16.00
	(19, 23, 6, 1.80), -- Papas Fritas: 6 * 1.80 = 10.80
	(19, 15, 6, 2.50), -- Arroz Integral: 6 * 2.50 = 15.00 (Total: 41.80 ≈ 42.00)

	-- Orden 20 (Factura 20: subTotal 55.00, descuento 10.00)
	(20, 14, 3, 10.00),-- Pescado Fresco: 3 * 10.00 = 30.00
	(20, 11, 5, 3.00), -- Manzanas: 5 * 3.00 = 15.00
	(20, 8, 4, 2.50),  -- Galletas Oreo: 4 * 2.50 = 10.00 (Total: 55.00)

	-- Orden 21 (Factura 21: subTotal 38.00)
	(21, 3, 4, 4.00),  -- Nescafé Clásico: 4 * 4.00 = 16.00
	(21, 6, 3, 3.50),  -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(21, 9, 6, 1.80),  -- Pan Bimbo Integral: 6 * 1.80 = 10.80 (Total: 37.30 ≈ 38.00)

	-- Orden 22 (Factura 22: subTotal 47.00, descuento 5.00)
	(22, 20, 3, 7.00), -- Filete de Pollo: 3 * 7.00 = 21.00
	(22, 13, 1, 12.00),-- Queso Gouda: 1 * 12.00 = 12.00
	(22, 24, 4, 3.50), -- Helado de Vainilla: 4 * 3.50 = 14.00 (Total: 47.00)

	-- Orden 23 (Factura 23: subTotal 60.00)
	(23, 12, 4, 8.50), -- Carne de Res: 4 * 8.50 = 34.00
	(23, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(23, 10, 5, 2.00), -- Cerveza Quilmes: 5 * 2.00 = 10.00 (Total: 59.00 ≈ 60.00)

	-- Orden 24 (Factura 24: subTotal 35.00, descuento 5.00)
	(24, 11, 5, 3.00), -- Manzanas: 5 * 3.00 = 15.00
	(24, 8, 5, 2.50),  -- Galletas Oreo: 5 * 2.50 = 12.50
	(24, 16, 8, 0.90), -- Agua Mineral: 8 * 0.90 = 7.20 (Total: 34.70 ≈ 35.00)

	-- Orden 25 (Factura 25: subTotal 50.00)
	(25, 14, 3, 10.00),-- Pescado Fresco: 3 * 10.00 = 30.00
	(25, 15, 5, 2.50), -- Arroz Integral: 5 * 2.50 = 12.50
	(25, 23, 4, 1.80), -- Papas Fritas: 4 * 1.80 = 7.20 (Total: 49.70 ≈ 50.00)

	-- Orden 26 (Factura 26: subTotal 45.00, descuento 10.00)
	(26, 20, 3, 7.00), -- Filete de Pollo: 3 * 7.00 = 21.00
	(26, 13, 1, 12.00),-- Queso Gouda: 1 * 12.00 = 12.00
	(26, 24, 3, 3.50), -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 43.50 ≈ 45.00)

	-- Orden 27 (Factura 27: subTotal 32.00)
	(27, 1, 8, 1.50),  -- Coca-Cola Original: 8 * 1.50 = 12.00
	(27, 4, 6, 1.20),  -- Leche Entera La Serenísima: 6 * 1.20 = 7.20
	(27, 5, 10, 0.80), -- Yogur Danone Natural: 10 * 0.80 = 8.00 (Total: 27.20 ≈ 32.00)

	-- Orden 28 (Factura 28: subTotal 58.00, descuento 5.00)
	(28, 12, 4, 8.50), -- Carne de Res: 4 * 8.50 = 34.00
	(28, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(28, 8, 3, 2.50),  -- Galletas Oreo: 3 * 2.50 = 7.50 (Total: 56.50 ≈ 58.00)

	-- Orden 29 (Factura 29: subTotal 40.00)
	(29, 10, 10, 2.00),-- Cerveza Quilmes: 10 * 2.00 = 20.00
	(29, 23, 5, 1.80), -- Papas Fritas: 5 * 1.80 = 9.00
	(29, 15, 4, 2.50), -- Arroz Integral: 4 * 2.50 = 10.00 (Total: 39.00 ≈ 40.00)

	-- Orden 30 (Factura 30: subTotal 65.00, descuento 10.00)
	(30, 14, 4, 10.00),-- Pescado Fresco: 4 * 10.00 = 40.00
	(30, 13, 2, 12.00),-- Queso Gouda: 2 * 12.00 = 24.00
	(30, 16, 2, 0.90), -- Agua Mineral: 2 * 0.90 = 1.80 (Total: 65.80 ≈ 65.00)

	-- Orden 31 (Factura 31: subTotal 38.00)
	(31, 3, 4, 4.00),  -- Nescafé Clásico: 4 * 4.00 = 16.00
	(31, 6, 3, 3.50),  -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(31, 9, 6, 1.80),  -- Pan Bimbo Integral: 6 * 1.80 = 10.80 (Total: 37.30 ≈ 38.00)

	-- Orden 32 (Factura 32: subTotal 52.00, descuento 5.00)
	(32, 20, 4, 7.00), -- Filete de Pollo: 4 * 7.00 = 28.00
	(32, 11, 5, 3.00), -- Manzanas: 5 * 3.00 = 15.00
	(32, 8, 3, 2.50),  -- Galletas Oreo: 3 * 2.50 = 7.50 (Total: 50.50 ≈ 52.00)

	-- Orden 33 (Factura 33: subTotal 45.00)
	(33, 12, 3, 8.50), -- Carne de Res: 3 * 8.50 = 25.50
	(33, 15, 4, 2.50), -- Arroz Integral: 4 * 2.50 = 10.00
	(33, 23, 5, 1.80), -- Papas Fritas: 5 * 1.80 = 9.00 (Total: 44.50 ≈ 45.00)

	-- Orden 34 (Factura 34: subTotal 60.00, descuento 10.00)
	(34, 14, 3, 10.00),-- Pescado Fresco: 3 * 10.00 = 30.00
	(34, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(34, 24, 4, 3.50), -- Helado de Vainilla: 4 * 3.50 = 14.00 (Total: 59.00 ≈ 60.00)

	-- Orden 35 (Factura 35: subTotal 30.00)
	(35, 1, 8, 1.50),  -- Coca-Cola Original: 8 * 1.50 = 12.00
	(35, 4, 6, 1.20),  -- Leche Entera La Serenísima: 6 * 1.20 = 7.20
	(35, 5, 10, 0.80), -- Yogur Danone Natural: 10 * 0.80 = 8.00 (Total: 27.20 ≈ 30.00)

	-- Orden 36 (Factura 36: subTotal 48.00, descuento 5.00)
	(36, 20, 3, 7.00), -- Filete de Pollo: 3 * 7.00 = 21.00
	(36, 13, 1, 12.00),-- Queso Gouda: 1 * 12.00 = 12.00
	(36, 24, 4, 3.50), -- Helado de Vainilla: 4 * 3.50 = 14.00 (Total: 47.00 ≈ 48.00)

	-- Orden 37 (Factura 37: subTotal 55.00)
	(37, 12, 4, 8.50), -- Carne de Res: 4 * 8.50 = 34.00
	(37, 15, 5, 2.50), -- Arroz Integral: 5 * 2.50 = 12.50
	(37, 23, 4, 1.80), -- Papas Fritas: 4 * 1.80 = 7.20 (Total: 53.70 ≈ 55.00)

	-- Orden 38 (Factura 38: subTotal 42.00, descuento 5.00)
	(38, 11, 5, 3.00), -- Manzanas: 5 * 3.00 = 15.00
	(38, 8, 5, 2.50),  -- Galletas Oreo: 5 * 2.50 = 12.50
	(38, 10, 6, 2.00), -- Cerveza Quilmes: 6 * 2.00 = 12.00 (Total: 39.50 ≈ 42.00)

	-- Orden 39 (Factura 39: subTotal 35.00)
	(39, 3, 4, 4.00),  -- Nescafé Clásico: 4 * 4.00 = 16.00
	(39, 6, 3, 3.50),  -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(39, 9, 5, 1.80),  -- Pan Bimbo Integral: 5 * 1.80 = 9.00 (Total: 35.50 ≈ 35.00)

	-- Orden 40 (Factura 40: subTotal 50.00, descuento 10.00)
	(40, 20, 4, 7.00), -- Filete de Pollo: 4 * 7.00 = 28.00
	(40, 13, 1, 12.00),-- Queso Gouda: 1 * 12.00 = 12.00
	(40, 24, 3, 3.50), -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 50.50 ≈ 50.00)

	-- Orden 41 (Factura 41: subTotal 38.00)
	(41, 10, 8, 2.00), -- Cerveza Quilmes: 8 * 2.00 = 16.00
	(41, 23, 6, 1.80), -- Papas Fritas: 6 * 1.80 = 10.80
	(41, 15, 5, 2.50), -- Arroz Integral: 5 * 2.50 = 12.50 (Total: 39.30 ≈ 38.00)

	-- Orden 42 (Factura 42: subTotal 45.00, descuento 5.00)
	(42, 12, 3, 8.50), -- Carne de Res: 3 * 8.50 = 25.50
	(42, 11, 4, 3.00), -- Manzanas: 4 * 3.00 = 12.00
	(42, 8, 3, 2.50),  -- Galletas Oreo: 3 * 2.50 = 7.50 (Total: 45.00)

	-- Orden 43 (Factura 43: subTotal 60.00)
	(43, 14, 4, 10.00),-- Pescado Fresco: 4 * 10.00 = 40.00
	(43, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(43, 10, 2, 2.00), -- Cerveza Quilmes: 2 * 2.00 = 4.00 (Total: 59.00 ≈ 60.00)

	-- Orden 44 (Factura 44: subTotal 32.00, descuento 5.00)
	(44, 11, 4, 3.00), -- Manzanas: 4 * 3.00 = 12.00
	(44, 8, 4, 2.50),  -- Galletas Oreo: 4 * 2.50 = 10.00
	(44, 16, 10, 0.90),-- Agua Mineral: 10 * 0.90 = 9.00 (Total: 31.00 ≈ 32.00)

	-- Orden 45 (Factura 45: subTotal 48.00)
	(45, 12, 3, 8.50), -- Carne de Res: 3 * 8.50 = 25.50
	(45, 15, 5, 2.50), -- Arroz Integral: 5 * 2.50 = 12.50
	(45, 23, 5, 1.80), -- Papas Fritas: 5 * 1.80 = 9.00 (Total: 47.00 ≈ 48.00)

	-- Orden 46 (Factura 46: subTotal 55.00, descuento 10.00)
	(46, 20, 4, 7.00), -- Filete de Pollo: 4 * 7.00 = 28.00
	(46, 13, 2, 12.00),-- Queso Gouda: 2 * 12.00 = 24.00
	(46, 16, 3, 0.90), -- Agua Mineral: 3 * 0.90 = 2.70 (Total: 54.70 ≈ 55.00)

	-- Orden 47 (Factura 47: subTotal 40.00)
	(47, 10, 8, 2.00), -- Cerveza Quilmes: 8 * 2.00 = 16.00
	(47, 23, 6, 1.80), -- Papas Fritas: 6 * 1.80 = 10.80
	(47, 15, 5, 2.50), -- Arroz Integral: 5 * 2.50 = 12.50 (Total: 39.30 ≈ 40.00)

	-- Orden 48 (Factura 48: subTotal 65.00, descuento 5.00)
	(48, 14, 4, 10.00),-- Pescado Fresco: 4 * 10.00 = 40.00
	(48, 19, 1, 15.00),-- Queso Cheddar: 1 * 15.00 = 15.00
	(48, 24, 3, 3.50), -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 65.50 ≈ 65.00)

	-- Orden 49 (Factura 49: subTotal 30.00)
	(49, 1, 8, 1.50),  -- Coca-Cola Original: 8 * 1.50 = 12.00
	(49, 4, 6, 1.20),  -- Leche Entera La Serenísima: 6 * 1.20 = 7.20
	(49, 5, 10, 0.80), -- Yogur Danone Natural: 10 * 0.80 = 8.00 (Total: 27.20 ≈ 30.00)

	-- Factura 51 (subTotal 35.00)
	(51, 1, 10, 1.50),  -- Coca-Cola Original: 10 * 1.50 = 15.00
	(51, 5, 10, 0.80),  -- Yogur Danone Natural: 10 * 0.80 = 8.00
	(51, 9, 6, 1.80),   -- Pan Bimbo Integral: 6 * 1.80 = 10.80 (Total: 33.80 ≈ 35.00)

	-- Factura 52 (subTotal 50.00, descuento 5.00)
	(52, 12, 3, 8.50),  -- Carne de Res: 3 * 8.50 = 25.50
	(52, 11, 5, 3.00),  -- Manzanas: 5 * 3.00 = 15.00
	(52, 8, 4, 2.50),   -- Galletas Oreo: 4 * 2.50 = 10.00 (Total: 50.50 ≈ 50.00)

	-- Factura 53 (subTotal 40.00)
	(53, 10, 10, 2.00), -- Cerveza Quilmes: 10 * 2.00 = 20.00
	(53, 23, 6, 1.80),  -- Papas Fritas: 6 * 1.80 = 10.80
	(53, 15, 4, 2.50),  -- Arroz Integral: 4 * 2.50 = 10.00 (Total: 40.80 ≈ 40.00)

	-- Factura 54 (subTotal 55.00, descuento 10.00)
	(54, 14, 3, 10.00), -- Pescado Fresco: 3 * 10.00 = 30.00
	(54, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	(54, 24, 3, 3.50),  -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 55.50 ≈ 55.00)

	-- Factura 55 (subTotal 30.00)
	(55, 3, 4, 4.00),   -- Nescafé Clásico: 4 * 4.00 = 16.00
	(55, 6, 2, 3.50),   -- Cereal Kelloggs Corn Flakes: 2 * 3.50 = 7.00
	(55, 7, 3, 2.00),   -- Salsa de Tomate Heinz: 3 * 2.00 = 6.00 (Total: 29.00 ≈ 30.00)

	-- Factura 56 (subTotal 45.00, descuento 5.00)
	(56, 20, 3, 7.00),  -- Filete de Pollo: 3 * 7.00 = 21.00
	(56, 13, 1, 12.00), -- Queso Gouda: 1 * 12.00 = 12.00
	(56, 16, 10, 0.90), -- Agua Mineral: 10 * 0.90 = 9.00 (Total: 42.00 ≈ 45.00)

	-- Factura 57 (subTotal 38.00)
	(57, 1, 8, 1.50),   -- Coca-Cola Original: 8 * 1.50 = 12.00
	(57, 4, 8, 1.20),   -- Leche Entera La Serenísima: 8 * 1.20 = 9.60
	(57, 9, 8, 1.80),   -- Pan Bimbo Integral: 8 * 1.80 = 14.40 (Total: 36.00 ≈ 38.00)

	-- Factura 58 (subTotal 60.00, descuento 10.00)
	(58, 12, 4, 8.50),  -- Carne de Res: 4 * 8.50 = 34.00
	(58, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	(58, 24, 3, 3.50),  -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 59.50 ≈ 60.00)

	-- Factura 59 (subTotal 32.00)
	(59, 10, 6, 2.00),  -- Cerveza Quilmes: 6 * 2.00 = 12.00
	(59, 23, 5, 1.80),  -- Papas Fritas: 5 * 1.80 = 9.00
	(59, 15, 4, 2.50),  -- Arroz Integral: 4 * 2.50 = 10.00 (Total: 31.00 ≈ 32.00)

	-- Factura 60 (subTotal 65.00, descuento 15.00)
	(60, 14, 4, 10.00), -- Pescado Fresco: 4 * 10.00 = 40.00
	(60, 13, 2, 12.00), -- Queso Gouda: 2 * 12.00 = 24.00
	(60, 16, 2, 0.90),  -- Agua Mineral: 2 * 0.90 = 1.80 (Total: 65.80 ≈ 65.00)

	-- Factura 61 (subTotal 40.00)
	(61, 3, 5, 4.00),   -- Nescafé Clásico: 5 * 4.00 = 20.00
	(61, 6, 3, 3.50),   -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(61, 7, 5, 2.00),   -- Salsa de Tomate Heinz: 5 * 2.00 = 10.00 (Total: 40.50 ≈ 40.00)

	-- Factura 62 (subTotal 48.00, descuento 5.00)
	(62, 20, 3, 7.00),  -- Filete de Pollo: 3 * 7.00 = 21.00
	(62, 11, 5, 3.00),  -- Manzanas: 5 * 3.00 = 15.00
	(62, 8, 4, 2.50),   -- Galletas Oreo: 4 * 2.50 = 10.00 (Total: 46.00 ≈ 48.00)

	-- Factura 63 (subTotal 55.00)
	(63, 12, 4, 8.50),  -- Carne de Res: 4 * 8.50 = 34.00
	(63, 15, 5, 2.50),  -- Arroz Integral: 5 * 2.50 = 12.50
	(63, 23, 4, 1.80),  -- Papas Fritas: 4 * 1.80 = 7.20 (Total: 53.70 ≈ 55.00)

	-- Factura 64 (subTotal 42.00, descuento 5.00)
	(64, 14, 2, 10.00), -- Pescado Fresco: 2 * 10.00 = 20.00
	(64, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	(64, 10, 3, 2.00),  -- Cerveza Quilmes: 3 * 2.00 = 6.00 (Total: 41.00 ≈ 42.00)

	-- Factura 65 (subTotal 35.00)
	(65, 1, 8, 1.50),   -- Coca-Cola Original: 8 * 1.50 = 12.00
	(65, 4, 6, 1.20),   -- Leche Entera La Serenísima: 6 * 1.20 = 7.20
	(65, 5, 10, 0.80),  -- Yogur Danone Natural: 10 * 0.80 = 8.00 (Total: 27.20 ≈ 35.00)

	-- Factura 66 (subTotal 50.00, descuento 10.00)
	(66, 20, 4, 7.00),  -- Filete de Pollo: 4 * 7.00 = 28.00
	(66, 13, 1, 12.00), -- Queso Gouda: 1 * 12.00 = 12.00
	(66, 24, 3, 3.50),  -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 50.50 ≈ 50.00)

	-- Factura 67 (subTotal 38.00)
	(67, 10, 8, 2.00),  -- Cerveza Quilmes: 8 * 2.00 = 16.00
	(67, 23, 6, 1.80),  -- Papas Fritas: 6 * 1.80 = 10.80
	(67, 15, 5, 2.50),  -- Arroz Integral: 5 * 2.50 = 12.50 (Total: 39.30 ≈ 38.00)

	-- Factura 68 (subTotal 60.00, descuento 5.00)
	(68, 12, 4, 8.50),  -- Carne de Res: 4 * 8.50 = 34.00
	(68, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	(68, 24, 3, 3.50),  -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 59.50 ≈ 60.00)

	-- Factura 69 (subTotal 32.00)
	(69, 3, 4, 4.00),   -- Nescafé Clásico: 4 * 4.00 = 16.00
	(69, 6, 2, 3.50),   -- Cereal Kelloggs Corn Flakes: 2 * 3.50 = 7.00
	(69, 7, 4, 2.00),   -- Salsa de Tomate Heinz: 4 * 2.00 = 8.00 (Total: 31.00 ≈ 32.00)

	-- Factura 70 (subTotal 65.00, descuento 10.00)
	(70, 14, 4, 10.00), -- Pescado Fresco: 4 * 10.00 = 40.00
	(70, 13, 2, 12.00), -- Queso Gouda: 2 * 12.00 = 24.00
	(70, 16, 2, 0.90),  -- Agua Mineral: 2 * 0.90 = 1.80 (Total: 65.80 ≈ 65.00)

	-- Factura 71 (subTotal 40.00)
	(71, 1, 10, 1.50),  -- Coca-Cola Original: 10 * 1.50 = 15.00
	(71, 5, 10, 0.80),  -- Yogur Danone Natural: 10 * 0.80 = 8.00
	(71, 9, 8, 1.80),   -- Pan Bimbo Integral: 8 * 1.80 = 14.40 (Total: 37.40 ≈ 40.00)

	-- Factura 72 (subTotal 48.00, descuento 5.00)
	(72, 20, 3, 7.00),  -- Filete de Pollo: 3 * 7.00 = 21.00
	(72, 11, 5, 3.00),  -- Manzanas: 5 * 3.00 = 15.00
	(72, 8, 4, 2.50),   -- Galletas Oreo: 4 * 2.50 = 10.00 (Total: 46.00 ≈ 48.00)

	-- Factura 73 (subTotal 55.00)
	(73, 12, 4, 8.50),  -- Carne de Res: 4 * 8.50 = 34.00
	(73, 15, 5, 2.50),  -- Arroz Integral: 5 * 2.50 = 12.50
	(73, 23, 4, 1.80),  -- Papas Fritas: 4 * 1.80 = 7.20 (Total: 53.70 ≈ 55.00)

	-- Factura 74 (subTotal 42.00, descuento 5.00)
	(74, 14, 2, 10.00), -- Pescado Fresco: 2 * 10.00 = 20.00
	(74, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	(74, 10, 3, 2.00),  -- Cerveza Quilmes: 3 * 2.00 = 6.00 (Total: 41.00 ≈ 42.00)

	-- Factura 75 (subTotal 35.00)
	(75, 3, 4, 4.00),   -- Nescafé Clásico: 4 * 4.00 = 16.00
	(75, 6, 3, 3.50),   -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(75, 7, 4, 2.00),   -- Salsa de Tomate Heinz: 4 * 2.00 = 8.00 (Total: 34.50 ≈ 35.00)

	-- Factura 76 (subTotal 50.00, descuento 10.00)
	(76, 20, 4, 7.00),  -- Filete de Pollo: 4 * 7.00 = 28.00
	(76, 13, 1, 12.00), -- Queso Gouda: 1 * 12.00 = 12.00
	(76, 24, 3, 3.50),  -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 50.50 ≈ 50.00)

	-- Factura 77 (subTotal 38.00)
	(77, 1, 8, 1.50),   -- Coca-Cola Original: 8 * 1.50 = 12.00
	(77, 4, 8, 1.20),   -- Leche Entera La Serenísima: 8 * 1.20 = 9.60
	(77, 9, 8, 1.80),   -- Pan Bimbo Integral: 8 * 1.80 = 14.40 (Total: 36.00 ≈ 38.00)

	-- Factura 78 (subTotal 60.00, descuento 5.00)
	(78, 12, 4, 8.50),  -- Carne de Res: 4 * 8.50 = 34.00
	(78, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	(78, 24, 3, 3.50),  -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 59.50 ≈ 60.00)

	-- Factura 79 (subTotal 32.00)
	(79, 10, 6, 2.00),  -- Cerveza Quilmes: 6 * 2.00 = 12.00
	(79, 23, 5, 1.80),  -- Papas Fritas: 5 * 1.80 = 9.00
	(79, 15, 4, 2.50),  -- Arroz Integral: 4 * 2.50 = 10.00 (Total: 31.00 ≈ 32.00)

	-- Factura 80 (subTotal 65.00, descuento 10.00)
	(80, 14, 4, 10.00), -- Pescado Fresco: 4 * 10.00 = 40.00
	(80, 13, 2, 12.00), -- Queso Gouda: 2 * 12.00 = 24.00
	(80, 16, 2, 0.90),  -- Agua Mineral: 2 * 0.90 = 1.80 (Total: 65.80 ≈ 65.00)

	-- Factura 81 (subTotal 40.00)
	(81, 3, 5, 4.00),   -- Nescafé Clásico: 5 * 4.00 = 20.00
	(81, 6, 3, 3.50),   -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(81, 7, 5, 2.00),   -- Salsa de Tomate Heinz: 5 * 2.00 = 10.00 (Total: 40.50 ≈ 40.00)

	-- Factura 82 (subTotal 48.00, descuento 5.00)
	(82, 20, 3, 7.00),  -- Filete de Pollo: 3 * 7.00 = 21.00
	(82, 11, 5, 3.00),  -- Manzanas: 5 * 3.00 = 15.00
	(82, 8, 4, 2.50),   -- Galletas Oreo: 4 * 2.50 = 10.00 (Total: 46.00 ≈ 48.00)

	-- Factura 83 (subTotal 55.00)
	(83, 12, 4, 8.50),  -- Carne de Res: 4 * 8.50 = 34.00
	(83, 15, 5, 2.50),  -- Arroz Integral: 5 * 2.50 = 12.50
	(83, 23, 4, 1.80),  -- Papas Fritas: 4 * 1.80 = 7.20 (Total: 53.70 ≈ 55.00)

	-- Factura 84 (subTotal 42.00, descuento 5.00)
	(84, 14, 2, 10.00), -- Pescado Fresco: 2 * 10.00 = 20.00
	(84, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	(84, 10, 3, 2.00),  -- Cerveza Quilmes: 3 * 2.00 = 6.00 (Total: 41.00 ≈ 42.00)

	-- Factura 85 (subTotal 35.00)
	(85, 1, 8, 1.50),   -- Coca-Cola Original: 8 * 1.50 = 12.00
	(85, 4, 6, 1.20),   -- Leche Entera La Serenísima: 6 * 1.20 = 7.20
	(85, 5, 10, 0.80),  -- Yogur Danone Natural: 10 * 0.80 = 8.00 (Total: 27.20 ≈ 35.00)

	-- Factura 86 (subTotal 50.00, descuento 10.00)
	(86, 20, 4, 7.00),  -- Filete de Pollo: 4 * 7.00 = 28.00
	(86, 13, 1, 12.00), -- Queso Gouda: 1 * 12.00 = 12.00
	(86, 24, 3, 3.50),  -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 50.50 ≈ 50.00)

	-- Factura 87 (subTotal 38.00)
	(87, 10, 8, 2.00),  -- Cerveza Quilmes: 8 * 2.00 = 16.00
	(87, 23, 6, 1.80),  -- Papas Fritas: 6 * 1.80 = 10.80
	(87, 15, 5, 2.50),  -- Arroz Integral: 5 * 2.50 = 12.50 (Total: 39.30 ≈ 38.00)

	-- Factura 88 (subTotal 60.00, descuento 5.00)
	(88, 12, 4, 8.50),  -- Carne de Res: 4 * 8.50 = 34.00
	(88, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	(88, 24, 3, 3.50),  -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 59.50 ≈ 60.00)

	-- Factura 89 (subTotal 32.00)
	(89, 3, 4, 4.00),   -- Nescafé Clásico: 4 * 4.00 = 16.00
	(89, 6, 2, 3.50),   -- Cereal Kelloggs Corn Flakes: 2 * 3.50 = 7.00
	(89, 7, 4, 2.00),   -- Salsa de Tomate Heinz: 4 * 2.00 = 8.00 (Total: 31.00 ≈ 32.00)

	-- Factura 90 (subTotal 65.00, descuento 10.00)
	(90, 14, 4, 10.00), -- Pescado Fresco: 4 * 10.00 = 40.00
	(90, 13, 2, 12.00), -- Queso Gouda: 2 * 12.00 = 24.00
	(90, 16, 2, 0.90),  -- Agua Mineral: 2 * 0.90 = 1.80 (Total: 65.80 ≈ 65.00)

	-- Factura 91 (subTotal 40.00)
	(91, 1, 10, 1.50),  -- Coca-Cola Original: 10 * 1.50 = 15.00
	(91, 5, 10, 0.80),  -- Yogur Danone Natural: 10 * 0.80 = 8.00
	(91, 9, 8, 1.80),   -- Pan Bimbo Integral: 8 * 1.80 = 14.40 (Total: 37.40 ≈ 40.00)

	-- Factura 92 (subTotal 48.00)
	(92, 20, 3, 7.00),  -- Filete de Pollo: 3 * 7.00 = 21.00
	(92, 11, 5, 3.00),  -- Manzanas: 5 * 3.00 = 15.00
	(92, 8, 4, 2.50),   -- Galletas Oreo: 4 * 2.50 = 10.00 (Total: 46.00 ≈ 48.00)

	-- Factura 93 (subTotal 55.00)
	(93, 12, 4, 8.50),  -- Carne de Res: 4 * 8.50 = 34.00
	(93, 15, 5, 2.50),  -- Arroz Integral: 5 * 2.50 = 12.50
	(93, 23, 4, 1.80),  -- Papas Fritas: 4 * 1.80 = 7.20 (Total: 53.70 ≈ 55.00)

	-- Factura 94 (subTotal 42.00)
	(94, 14, 2, 10.00), -- Pescado Fresco: 2 * 10.00 = 20.00
	(94, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	(94, 10, 3, 2.00),  -- Cerveza Quilmes: 3 * 2.00 = 6.00 (Total: 41.00 ≈ 42.00)

	-- Factura 95 (subTotal 35.00)
	(95, 3, 4, 4.00),   -- Nescafé Clásico: 4 * 4.00 = 16.00
	(95, 6, 3, 3.50),   -- Cereal Kelloggs Corn Flakes: 3 * 3.50 = 10.50
	(95, 7, 4, 2.00),   -- Salsa de Tomate Heinz: 4 * 2.00 = 8.00 (Total: 34.50 ≈ 35.00)

	-- Factura 96 (subTotal 50.00)
	(96, 20, 4, 7.00),  -- Filete de Pollo: 4 * 7.00 = 28.00
	(96, 13, 1, 12.00), -- Queso Gouda: 1 * 12.00 = 12.00
	(96, 24, 3, 3.50),  -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 50.50 ≈ 50.00)

	-- Factura 97 (subTotal 38.00)
	(97, 1, 8, 1.50),   -- Coca-Cola Original: 8 * 1.50 = 12.00
	(97, 4, 8, 1.20),   -- Leche Entera La Serenísima: 8 * 1.20 = 9.60
	(97, 9, 8, 1.80),   -- Pan Bimbo Integral: 8 * 1.80 = 14.40 (Total: 36.00 ≈ 38.00)

	-- Factura 98 (subTotal 60.00)
	(98, 12, 4, 8.50),  -- Carne de Res: 4 * 8.50 = 34.00
	(98, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	(98, 24, 3, 3.50),  -- Helado de Vainilla: 3 * 3.50 = 10.50 (Total: 59.50 ≈ 60.00)

	-- Factura 99 (subTotal 32.00)
	(99, 10, 6, 2.00),  -- Cerveza Quilmes: 6 * 2.00 = 12.00
	(99, 23, 5, 1.80),  -- Papas Fritas: 5 * 1.80 = 9.00
	(99, 15, 4, 2.50),  -- Arroz Integral: 4 * 2.50 = 10.00 (Total: 31.00 ≈ 32.00)

	-- Factura 100 (subTotal 65.00)
	(100, 14, 4, 10.00),-- Pescado Fresco: 4 * 10.00 = 40.00
	(100, 13, 2, 12.00),-- Queso Gouda: 2 * 12.00 = 24.00
	(100, 16, 2, 0.90); -- Agua Mineral: 2 * 0.90 = 1.80 (Total: 65.80 ≈ 65.00);

-- Venta fisica
INSERT INTO VentaFisica (facturaId, sucursalId, empleadoId) VALUES
	(51, 1, 1),    -- Sucursal Centro, Juan Pérez (Gerente)
	(52, 2, 2),    -- Sucursal Este, María Gómez (Cajera)
	(53, 3, 3),    -- Sucursal Oeste, Pedro Rodríguez (Reponedor)
	(54, 4, 4),    -- Sucursal Norte, Ana López (Auxiliar de Limpieza)
	(55, 5, 5),    -- Sucursal Junquito, Luis Martínez (Encargado de Almacén)
	(56, 6, 6),    -- Sucursal Charallave, Laura Sánchez (Carnicera)
	(57, 18, 7),   -- Sucursal Sanare, Carlos Ramírez (Panadero)
	(58, 13, 8),   -- Sucursal Bejuma, Sofía Torres (Frutera)
	(59, 15, 9),   -- Sucursal Quibor, Diego Díaz (Seguridad)
	(60, 19, 10),  -- Sucursal Cubiro, Valentina Ruiz (Atención al Cliente)
	(61, 8, 11),   -- Sucursal Guarenas, Andrés García (Promotor)
	(62, 7, 12),   -- Sucursal Cua, Camila Fernández (Operaria de Montacargas)
	(63, 7, 13),   -- Sucursal Cua, Ricardo Jiménez (Técnico de Refrigeración)
	(64, 11, 14),  -- Sucursal Ciudad Ojeda, Daniela Moreno (Dependiente de Farmacia)
	(65, 8, 15),   -- Sucursal Guarenas, Alejandro Pérez (Analista de Inventarios)
	(66, 1, 16),   -- Sucursal Centro, Isabella Soto (Cajera)
	(67, 9, 17),   -- Sucursal Cabimas, Gabriel Vargas (Reponedor)
	(68, 16, 18),  -- Sucursal El Tocuyo, Valeria Torres (Gerente)
	(69, 14, 19),  -- Sucursal Tocuyito, Martín Díaz (Auxiliar de Limpieza)
	(70, 10, 20),  -- Sucursal Santa Barbara, Luciana Ruiz (Encargada de Almacén)
	(71, 11, 21),  -- Sucursal Ciudad Ojeda, Nicolás García (Carnicero)
	(72, 11, 22),  -- Sucursal Ciudad Ojeda, Renata Fernández (Panadera)
	(73, 12, 23),  -- Sucursal San Joaquin, Santiago Jiménez (Frutero)
	(74, 12, 24),  -- Sucursal San Joaquin, Antonella Moreno (Seguridad)
	(75, 14, 25),  -- Sucursal Tocuyito, Andrea Rojas (Cajera)
	(76, 14, 26),  -- Sucursal Tocuyito, Fernando Mendoza (Reponedor)
	(77, 15, 27),  -- Sucursal Quibor, Carolina Chávez (Gerente)
	(78, 15, 28),  -- Sucursal Quibor, Jorge Navarro (Auxiliar de Limpieza)
	(79, 16, 29),  -- Sucursal El Tocuyo, Mariana Fuentes (Encargada de Almacén)
	(80, 16, 30),  -- Sucursal El Tocuyo, Daniel Ortega (Carnicero)
	(81, 17, 31),  -- Sucursal Carora, Valentina Castillo (Panadera)
	(82, 17, 32),  -- Sucursal Carora, Roberto Herrera (Frutero)
	(83, 18, 33),  -- Sucursal Sanare, Lucía Romero (Seguridad)
	(84, 18, 34),  -- Sucursal Sanare, Eduardo Serrano (Atención al Cliente)
	(85, 19, 35),  -- Sucursal Cubiro, Gabriela Ramos (Promotora)
	(86, 19, 36),  -- Sucursal Cubiro, David Iglesias (Operario de Montacargas)
	(87, 20, 37),  -- Sucursal Altamira, Sofía Delgado (Técnica de Refrigeración)
	(88, 20, 38),  -- Sucursal Altamira, Carlos Giménez (Dependiente de Farmacia)
	(89, 21, 39),  -- Sucursal Chacao, Paula Ortiz (Analista de Inventarios)
	(90, 21, 40),  -- Sucursal Chacao, Alejandro Vidal (Cajero)
	(91, 22, 41),  -- Sucursal Baruta, Isabella Sanz (Reponedora)
	(92, 22, 42),  -- Sucursal Baruta, Gabriel Castro (Gerente)
	(93, 23, 43),  -- Sucursal La Urbina, Valeria León (Auxiliar de Limpieza)
	(94, 23, 44),  -- Sucursal La Urbina, Martín Rey (Encargado de Almacén)
	(95, 1, 1),    -- Sucursal Centro, Juan Pérez (Gerente)
	(96, 2, 2),    -- Sucursal Este, María Gómez (Cajera)
	(97, 3, 3),    -- Sucursal Oeste, Pedro Rodríguez (Reponedor)
	(98, 4, 4),    -- Sucursal Norte, Ana López (Auxiliar de Limpieza)
	(99, 5, 5),    -- Sucursal Junquito, Luis Martínez (Encargado de Almacén)
	(100, 6, 6);   -- Sucursal Charallave, Laura Sánchez (Carnicera)

	-- Forma de pago

-- Forma de pago
SET IDENTITY_INSERT FormaPago ON;
INSERT INTO FormaPago (id, nombre, descripcion) VALUES
    (1, 'Tarjeta de credito', 'Pago con tarjeta de credito Visa, Mastercard o Amex'),
    (2, 'Tarjeta de debito', 'Pago con tarjeta de debito vinculada a una cuenta bancaria'),
    (3, 'PayPal', 'Pago a traves de la plataforma PayPal'),
    (4, 'Transferencia bancaria', 'Pago mediante transferencia electronica'),
    (5, 'Efectivo', 'Pago en efectivo al momento de la entrega'),
    (6, 'Cheque', 'Pago mediante cheque bancario'),
    (7, 'Criptomonedas', 'Pago con Bitcoin, Ethereum u otras criptomonedas'),
    (8, 'Pago movil', 'Pago a traves de aplicaciones moviles de cada banco'),
    (9, 'Cashea', 'Pago fraccionado en varias cuotas mensuales'),
    (10, 'Zelle', 'Pago a traves de aplicaciones moviles de bancos americanos');
SET IDENTITY_INSERT FormaPago OFF;

-- Pago
INSERT INTO Pago (facturaId, nroTransaccion, metodoPagoId) VALUES
    -- OrdenOnline (facturas 1-50): 50 facturas
    (1, 'TX-20250101-0001', 1),   -- Tarjeta de crédito
    (2, 'TX-20250102-0002', 3),   -- PayPal
    (3, 'TX-20250103-0003', 4),   -- Transferencia bancaria
    (4, 'TX-20250104-0004', 7),   -- Criptomonedas
    (5, 'TX-20250105-0005', 8),   -- Pago móvil
    (6, 'TX-20250106-0006', 9),   -- Cashea
    (7, 'TX-20250107-0007', 10),  -- Zelle
    (8, 'TX-20250108-0008', 1),   -- Tarjeta de crédito
    (9, 'TX-20250109-0009', 3),   -- PayPal
    (10, 'TX-20250110-0010', 4),  -- Transferencia bancaria
    (11, 'TX-20250111-0011', 7),  -- Criptomonedas
    (12, 'TX-20250112-0012', 8),  -- Pago móvil
    (13, 'TX-20250113-0013', 9),  -- Cashea
    (14, 'TX-20250114-0014', 10), -- Zelle
    (15, 'TX-20250115-0015', 1),  -- Tarjeta de crédito
    (16, 'TX-20250116-0016', 3),  -- PayPal
    (17, 'TX-20250117-0017', 4),  -- Transferencia bancaria
    (18, 'TX-20250118-0018', 7),  -- Criptomonedas
    (19, 'TX-20250119-0019', 8),  -- Pago móvil
    (20, 'TX-20250120-0020', 9),  -- Cashea
    (21, 'TX-20250121-0021', 10), -- Zelle
    (22, 'TX-20250122-0022', 1),  -- Tarjeta de crédito
    (23, 'TX-20250123-0023', 3),  -- PayPal
    (24, 'TX-20250124-0024', 4),  -- Transferencia bancaria
    (25, 'TX-20250125-0025', 7),  -- Criptomonedas
    (26, 'TX-20250126-0026', 8),  -- Pago móvil
    (27, 'TX-20250127-0027', 9),  -- Cashea
    (28, 'TX-20250128-0028', 10), -- Zelle
    (29, 'TX-20250129-0029', 1),  -- Tarjeta de crédito
    (30, 'TX-20250130-0030', 3),  -- PayPal
    (31, 'TX-20250131-0031', 4),  -- Transferencia bancaria
    (32, 'TX-20250201-0032', 7),  -- Criptomonedas
    (33, 'TX-20250202-0033', 8),  -- Pago móvil
    (34, 'TX-20250203-0034', 9),  -- Cashea
    (35, 'TX-20250204-0035', 10), -- Zelle
    (36, 'TX-20250205-0036', 1),  -- Tarjeta de crédito
    (37, 'TX-20250206-0037', 3),  -- PayPal
    (38, 'TX-20250207-0038', 4),  -- Transferencia bancaria
    (39, 'TX-20250208-0039', 7),  -- Criptomonedas
    (40, 'TX-20250209-0040', 8),  -- Pago móvil
    (41, 'TX-20250210-0041', 9),  -- Cashea
    (42, 'TX-20250211-0042', 10), -- Zelle
    (43, 'TX-20250212-0043', 1),  -- Tarjeta de crédito
    (44, 'TX-20250213-0044', 3),  -- PayPal
    (45, 'TX-20250214-0045', 4),  -- Transferencia bancaria
    (46, 'TX-20250215-0046', 7),  -- Criptomonedas
    (47, 'TX-20250216-0047', 8),  -- Pago móvil
    (48, 'TX-20250217-0048', 9),  -- Cashea
    (49, 'TX-20250218-0049', 10), -- Zelle
    (50, 'TX-20250219-0050', 1),  -- Tarjeta de crédito
    -- VentaFisica (facturas 51-100): 50 facturas
    (51, 'TX-20250101-0051', 5),  -- Efectivo
    (52, 'TX-20250102-0052', 1),  -- Tarjeta de crédito
    (53, 'TX-20250103-0053', 2),  -- Tarjeta de débito
    (54, 'TX-20250104-0054', 6),  -- Cheque
    (55, 'TX-20250105-0055', 8),  -- Pago móvil
    (56, 'TX-20250106-0056', 5),  -- Efectivo
    (57, 'TX-20250107-0057', 1),  -- Tarjeta de crédito
    (58, 'TX-20250108-0058', 2),  -- Tarjeta de débito
    (59, 'TX-20250109-0059', 4),  -- Transferencia bancaria
    (60, 'TX-20250110-0060', 10), -- Zelle
    (61, 'TX-20250111-0061', 5),  -- Efectivo
    (62, 'TX-20250112-0062', 1),  -- Tarjeta de crédito
    (63, 'TX-20250113-0063', 6),  -- Cheque
    (64, 'TX-20250114-0064', 2),  -- Tarjeta de débito
    (65, 'TX-20250115-0065', 8),  -- Pago móvil
    (66, 'TX-20250116-0066', 5),  -- Efectivo
    (67, 'TX-20250117-0067', 1),  -- Tarjeta de crédito
    (68, 'TX-20250118-0068', 3),  -- PayPal
    (69, 'TX-20250119-0069', 4),  -- Transferencia bancaria
    (70, 'TX-20250120-0070', 10), -- Zelle
    (71, 'TX-20250121-0071', 5),  -- Efectivo
    (72, 'TX-20250122-0072', 2),  -- Tarjeta de débito
    (73, 'TX-20250123-0073', 6),  -- Cheque
    (74, 'TX-20250124-0074', 1),  -- Tarjeta de crédito
    (75, 'TX-20250125-0075', 8),  -- Pago móvil
    (76, 'TX-20250126-0076', 5),  -- Efectivo
    (77, 'TX-20250127-0077', 1),  -- Tarjeta de crédito
    (78, 'TX-20250128-0078', 2),  -- Tarjeta de débito
    (79, 'TX-20250129-0079', 4),  -- Transferencia bancaria
    (80, 'TX-20250130-0080', 10), -- Zelle
    (81, 'TX-20250131-0081', 5),  -- Efectivo
    (82, 'TX-20250201-0082', 6),  -- Cheque
    (83, 'TX-20250202-0083', 1),  -- Tarjeta de crédito
    (84, 'TX-20250203-0084', 2),  -- Tarjeta de débito
    (85, 'TX-20250204-0085', 8),  -- Pago móvil
    (86, 'TX-20250205-0086', 5),  -- Efectivo
    (87, 'TX-20250206-0087', 1),  -- Tarjeta de crédito
    (88, 'TX-20250207-0088', 3),  -- PayPal
    (89, 'TX-20250208-0089', 4),  -- Transferencia bancaria
    (90, 'TX-20250209-0090', 10), -- Zelle
    (91, 'TX-20250210-0091', 5),  -- Efectivo
    (92, 'TX-20250211-0092', 2),  -- Tarjeta de débito
    (93, 'TX-20250212-0093', 6),  -- Cheque
    (94, 'TX-20250213-0094', 1),  -- Tarjeta de crédito
    (95, 'TX-20250214-0095', 8),  -- Pago móvil
    (96, 'TX-20250215-0096', 5),  -- Efectivo
    (97, 'TX-20250216-0097', 1),  -- Tarjeta de crédito
    (98, 'TX-20250217-0098', 2),  -- Tarjeta de débito
    (99, 'TX-20250218-0099', 4),  -- Transferencia bancaria
    (100, 'TX-20250219-0100', 10); -- Zelle

-- Promo
-- Mínimo 40 promociones (variadas en tipo de descuento y promoción)
SET IDENTITY_INSERT Promo ON;
INSERT INTO Promo (id, nombre, slogan, codigo, tipoDescuento, valorDescuento, fechaInicio, fechaFin, tipoPromocion) VALUES
    -- Promociones estándar (33)
    (1, 'Descuento de Inicio', '¡Comienza con ahorros!', 'START10', 'Porcentaje', 10.0, '2024-06-01', '2025-03-31', 'Online'), -- Ajustado: desde factura 1
    (2, 'Verano en Sucursal', '¡Ahorra en verano!', 'SUMMER20', 'Fijo', 20.0, '2025-01-01', '2025-03-08', 'Fisica'),
    (3, 'Compra Doble', '¡Más compras, más descuentos!', 'DOUBLE15', 'Porcentaje', 15.0, '2024-06-01', '2025-03-15', 'Ambos'), -- Ajustado: desde factura 1
    (4, 'Fin de Semana Online', '¡Solo este fin de semana!', 'WEEKEND5', 'Fijo', 5.0, '2024-06-01', '2025-03-31', 'Online'), -- Ajustado: desde factura 1
    (5, 'Lunes en Tienda', '¡Lunes de locura!', 'MONDAY10', 'Porcentaje', 10.0, '2025-01-01', '2025-03-08', 'Fisica'),
    (6, 'Enero Total', '¡Frescos descuentos!', 'JAN15', 'Fijo', 15.0, '2024-06-01', '2025-03-31', 'Ambos'), -- Ajustado: desde factura 1
    (7, 'Cyber Week', '¡Ofertas digitales!', 'CYBER20', 'Porcentaje', 20.0, '2024-06-01', '2025-03-15', 'Online'), -- Ajustado: desde factura 1
    (8, 'Día de la Sucursal', '¡Visítanos hoy!', 'STORE10', 'Fijo', 10.0, '2025-01-10', '2025-02-10', 'Fisica'),
    (9, 'Compra Rápida', '¡Rápido y barato!', 'FAST10', 'Porcentaje', 10.0, '2024-06-01', '2025-03-31', 'Ambos'), -- Ajustado: desde factura 1
    (10, 'Oferta Flash', '¡Solo 24 horas!', 'FLASH10', 'Fijo', 10.0, '2024-06-01', '2025-03-15', 'Online'), -- Ajustado: desde factura 1
    (11, 'Miércoles Especial', '¡Mitad de semana, gran oferta!', 'WED10', 'Porcentaje', 10.0, '2025-02-01', '2025-03-08', 'Fisica'),
    (12, 'Todo el Mes', '¡Ahorra todo el mes!', 'MONTH25', 'Fijo', 25.0, '2024-06-01', '2025-03-31', 'Ambos'), -- Ajustado: desde factura 1
    (13, 'Regreso a Clases', '¡Prepara el regreso!', 'BACK10', 'Porcentaje', 10.0, '2024-06-01', '2025-03-15', 'Online'), -- Ajustado: desde factura 1
    (14, 'Fin de Mes', '¡Cierra con ahorros!', 'END15', 'Fijo', 15.0, '2025-02-15', '2025-02-28', 'Fisica'),
    (15, 'Compra Grande', '¡Más compras, más ahorros!', 'BIG10', 'Porcentaje', 10.0, '2024-06-01', '2025-03-31', 'Ambos'), -- Ajustado: desde factura 1
    (16, 'Oferta Nocturna', '¡Compra de noche!', 'NIGHT10', 'Fijo', 10.0, '2024-06-01', '2025-03-15', 'Online'), -- Ajustado: desde factura 1
    (17, 'Día Soleado', '¡Ahorra bajo el sol!', 'SUN10', 'Porcentaje', 10.0, '2025-01-01', '2025-03-08', 'Fisica'),
    (18, 'Semana de Lealtad', '¡Gracias por tu fidelidad!', 'LOYAL15', 'Fijo', 15.0, '2024-06-01', '2025-03-31', 'Online'), -- Ajustado: desde factura 1
    (19, 'Compra Temprana', '¡Anticípate y ahorra!', 'EARLY10', 'Porcentaje', 10.0, '2024-06-01', '2025-03-15', 'Online'), -- Ajustado: desde factura 1
    (20, 'Sábado en Tienda', '¡Sábado de descuentos!', 'SAT20', 'Fijo', 20.0, '2025-01-01', '2025-02-01', 'Fisica'),
    (21, 'Compra Segura', '¡Ahorra con confianza!', 'SAFE10', 'Porcentaje', 10.0, '2024-06-01', '2025-03-31', 'Online'), -- Ajustado: desde factura 1
    (22, 'Oferta Relámpago', '¡No te la pierdas!', 'FLASH15', 'Fijo', 15.0, '2024-06-01', '2025-03-15', 'Online'), -- Ajustado: desde factura 1
    (23, 'Día de Lluvia', '¡Ahorra en casa!', 'RAIN10', 'Porcentaje', 10.0, '2025-01-01', '2025-03-08', 'Fisica'),
    (24, 'Aniversario', '¡Celebra con nosotros!', 'ANNIV15', 'Fijo', 15.0, '2025-01-01', '2025-03-31', 'Ambos'),
    (25, 'Día del Cliente', '¡Tú eres lo primero!', 'CLIENT10', 'Fijo', 10.0, '2025-01-01', '2025-02-28', 'Fisica'),
    (26, 'Oferta Extendida', '¡Más tiempo para ahorrar!', 'EXT10', 'Porcentaje', 10.0, '2024-06-01', '2025-03-15', 'Online'), -- Ajustado: desde factura 1
    (27, 'Promo de Medianoche', '¡Ahorra hasta tarde!', 'MIDNIGHT5', 'Fijo', 5.0, '2025-02-01', '2025-03-31', 'Online'),
    (28, 'Enero en Tienda', '¡Ahorra en enero!', 'JAN10', 'Porcentaje', 10.0, '2025-01-01', '2025-01-31', 'Fisica'),
    (29, 'Promo Enero Física 2', '¡Ahorra más!', 'ENE2025F2', 'Porcentaje', 10.0, '2025-01-01', '2025-01-31', 'Fisica'),
    (30, 'Promo Febrero Física 2', '¡Febrero de ofertas!', 'FEB2025F2', 'Fijo', 15.0, '2025-02-01', '2025-02-28', 'Fisica'),
    (31, 'Promo Marzo Física 2', '¡Marzo de descuentos!', 'MAR2025F2', 'Porcentaje', 10.0, '2025-03-01', '2025-03-08', 'Fisica'),
    (32, 'Promo Enero Online 2', '¡Más ahorros!', 'ENE2025O2', 'Fijo', 10.0, '2024-06-01', '2025-03-31', 'Online'), -- Ajustado: desde factura 1
    (33, 'Promo Febrero Online 2', '¡Febrero de ahorros!', 'FEB2025O2', 'Porcentaje', 10.0, '2024-06-01', '2025-03-15', 'Online'), -- Ajustado: desde factura 1
    -- Promociones especializadas (14, 30% de 47)
    (34, 'Coca-Cola Lovers', '¡Para fans de Coca!', 'COKE10', 'Porcentaje', 10.0, '2024-06-01', '2025-03-31', 'Ambos'), -- Ajustado: desde factura 1
    (35, 'Lácteos Saludables', '¡Lácteos al mejor precio!', 'MILK15', 'Fijo', 15.0, '2025-01-01', '2025-03-08', 'Fisica'),
    (36, 'Snacks Nocturnos', '¡Snacks para la noche!', 'SNACK15', 'Porcentaje', 15.0, '2024-06-01', '2025-03-31', 'Online'), -- Ajustado: desde factura 1
    (37, 'Cerveza en Casa', '¡Celebra con Quilmes!', 'BEER10', 'Fijo', 10.0, '2025-01-01', '2025-03-08', 'Fisica'),
    (38, 'Producto Estrella', '¡Nuestra estrella al mejor precio!', 'STAR10', 'Porcentaje', 10.0, '2025-01-01', '2025-03-08', 'Fisica'),
    (39, 'Galletas Dulces', '¡Dulzura asegurada!', 'COOKIES15', 'Fijo', 15.0, '2025-02-01', '2025-03-31', 'Online'),
    (40, 'Nestlé Premium', '¡Calidad Nestlé!', 'NESTLE10', 'Porcentaje', 10.0, '2025-01-01', '2025-03-31', 'Ambos'),
    (41, 'Cuidado Colgate', '¡Sonrisa perfecta!', 'COLGATE15', 'Fijo', 15.0, '2025-01-01', '2025-03-08', 'Fisica'),
    (42, 'Bebidas Refrescantes', '¡Refréscate ya!', 'DRINK10', 'Porcentaje', 10.0, '2024-06-01', '2025-03-31', 'Online'), -- Ajustado: desde factura 1
    (43, 'Sprite Party', '¡Fiesta con Sprite!', 'SPRITE10', 'Fijo', 10.0, '2025-01-01', '2025-03-15', 'Online'),
    (44, 'Cereales Mañaneros', '¡Desayuno con energía!', 'CEREAL10', 'Porcentaje', 10.0, '2025-01-01', '2025-03-08', 'Fisica'),
    (45, 'Producto Bimbo', '¡Pan fresco siempre!', 'BIMBO10', 'Fijo', 10.0, '2025-02-01', '2025-03-31', 'Online'),
    (46, 'Chucherías Lays', '¡Sabor en cada bocado!', 'LAYS15', 'Porcentaje', 15.0, '2025-01-01', '2025-03-31', 'Ambos'),
    (47, 'Verano en Gama', 'Disfruta el verano con Gama', 'VERANO2025', 'Porcentaje', 10.0, '2025-06-01', '2025-08-31', 'Ambos');
SET IDENTITY_INSERT Promo OFF;

-- Promo especializada
-- El 30% de las promociones deberían tener un objetivo especializado en PromoEspecializada
SET IDENTITY_INSERT PromoEspecializada ON;
INSERT INTO PromoEspecializada (id, promoId, productoId, categoriaId, marcaId) VALUES
    (1, 34, 1, NULL, 1),        -- Coca-Cola Lovers: Producto Coca-Cola Original (ID 1), Marca Coca-Cola (ID 1)
    (2, 35, NULL, 2, NULL),     -- Lácteos Saludables: Categoría Lácteos (ID 2)
    (3, 36, NULL, 6, NULL),     -- Snacks Nocturnos: Categoría Chucherías (ID 6)
    (4, 37, 10, 11, 13),        -- Cerveza en Casa: Producto Cerveza Quilmes (ID 10), Categoría Bebidas Alcohólicas (ID 11), Marca Quilmes (ID 13)
    (5, 38, 100, NULL, NULL),   -- Producto Estrella: Producto Costillas de Cerdo (ID 100)
    (6, 39, NULL, 26, NULL),    -- Galletas Dulces: Categoría Galletas (ID 26)
    (7, 40, NULL, NULL, 3),     -- Nestlé Premium: Marca Nestlé (ID 3)
    (8, 41, NULL, 9, 8),        -- Cuidado Colgate: Categoría Cuidado Personal (ID 9), Marca Colgate (ID 8)
    (9, 42, NULL, 1, NULL),     -- Bebidas Refrescantes: Categoría Bebidas (ID 1)
    (10, 43, 20, NULL, 20),     -- Sprite Party: Producto Sprite (asumido como ID 20 Agua Mineral ajustado), Marca Sprite (ID 20)
    (11, 44, NULL, 25, NULL),   -- Cereales Mañaneros: Categoría Cereales (ID 25)
    (12, 45, 9, NULL, 11),      -- Producto Bimbo: Producto Pan Bimbo Integral (ID 9), Marca Bimbo (ID 11)
    (13, 46, 23, 6, 10),        -- Chucherías Lays: Producto Papas Fritas (ID 23), Categoría Chucherías (ID 6), Marca Lays (ID 10)
    (14, 47, 210, NULL, 21);    -- Verano en Gama: Producto Freidora de Aire Gama (ID 210), Marca Gama (ID 21)
SET IDENTITY_INSERT PromoEspecializada OFF;
DELETE FROM FacturaPromo; -- Limpiamos para evitar duplicados

-- Factura tiene Promo 
-- El 40% de esas facturas deben tener promociones
INSERT INTO FacturaPromo (facturaId, promoId) VALUES
    -- OrdenOnline (1-50): 20 facturas ajustadas a fechas de Factura y promociones válidas
    (2, 9),    -- '2024-06-05', FAST10 (Ambos, '2024-06-01' a '2025-03-31')
    (5, 15),   -- '2024-06-20', BIG10 (Ambos, '2024-06-01' a '2025-03-31')
    (7, 3),    -- '2024-07-05', DOUBLE15 (Ambos, '2024-06-01' a '2025-03-15')
    (11, 34),  -- '2024-08-01', COKE10 (Ambos, '2024-06-01' a '2025-03-31')
    (13, 18),  -- '2024-08-10', LOYAL15 (Online, '2024-06-01' a '2025-03-31')
    (15, 19),  -- '2024-08-20', EARLY10 (Online, '2024-06-01' a '2025-03-15')
    (17, 26),  -- '2024-09-05', EXT10 (Online, '2024-06-01' a '2025-03-15')
    (19, 32),  -- '2024-09-15', ENE2025O2 (Online, '2024-06-01' a '2025-03-31')
    (21, 4),   -- '2024-10-01', WEEKEND5 (Online, '2024-06-01' a '2025-03-31')
    (25, 7),   -- '2024-10-20', CYBER20 (Online, '2024-06-01' a '2025-03-15')
    (27, 1),  -- '2024-11-05', MONTH25 (Ambos, '2024-06-01' a '2025-03-31')
    (31, 16),  -- '2024-12-01', NIGHT10 (Online, '2024-06-01' a '2025-03-15')
    (35, 21),  -- '2024-12-20', SAFE10 (Online, '2024-06-01' a '2025-03-31')
    (37, 33),  -- '2025-01-05', FEB2025O2 (Online, '2024-06-01' a '2025-03-15')
    (41, 36),  -- '2025-02-01', SNACK15 (Online, '2024-06-01' a '2025-03-31')
    (43, 42),  -- '2025-02-10', DRINK10 (Online, '2024-06-01' a '2025-03-31')
    (46, 10),  -- '2025-03-01', FLASH10 (Online, '2024-06-01' a '2025-03-15')
    (48, 22),  -- '2025-03-10', FLASH15 (Online, '2024-06-01' a '2025-03-15')
    -- VentaFisica (51-100): 20 facturas ajustadas a fechas de Factura
    (53, 5),   -- '2024-06-11', MONDAY10 (Fisica, '2025-01-01' a '2025-03-08')
    (55, 8),   -- '2024-06-21', STORE10 (Fisica, '2025-01-10' a '2025-02-10')
    (57, 17),  -- '2024-07-06', SUN10 (Fisica, '2025-01-01' a '2025-03-08')
    (59, 20),  -- '2024-07-16', SAT20 (Fisica, '2025-01-01' a '2025-02-01')
    (61, 3),   -- '2024-08-02', DOUBLE15 (Ambos, '2024-06-01' a '2025-03-15')
    (63, 23),  -- '2024-08-11', RAIN10 (Fisica, '2025-01-01' a '2025-03-08')
    (65, 28),  -- '2024-08-21', JAN10 (Fisica, '2025-01-01' a '2025-01-31')
    (67, 15),  -- '2024-09-06', BIG10 (Ambos, '2024-06-01' a '2025-03-31')
    (69, 29),  -- '2024-09-16', ENE2025F2 (Fisica, '2025-01-01' a '2025-01-31')
    (71, 35),  -- '2024-10-02', MILK15 (Fisica, '2025-01-01' a '2025-03-08')
    (73, 9),   -- '2024-10-11', FAST10 (Ambos, '2024-06-01' a '2025-03-31')
    (75, 37),  -- '2024-10-21', BEER10 (Fisica, '2025-01-01' a '2025-03-08')
    (77, 11),  -- '2024-11-06', WED10 (Fisica, '2025-02-01' a '2025-03-08')
    (80, 24),  -- '2024-11-16', ANNIV15 (Ambos, '2025-01-01' a '2025-03-31')
    (81, 25),  -- '2024-12-02', CLIENT10 (Fisica, '2025-01-01' a '2025-02-28')
    (83, 30),  -- '2024-12-11', FEB2025F2 (Fisica, '2025-02-01' a '2025-02-28')
    (85, 38),  -- '2024-12-21', STAR10 (Fisica, '2025-01-01' a '2025-03-08')
    (87, 41),  -- '2025-01-06', COLGATE15 (Fisica, '2025-01-01' a '2025-03-08')
    (89, 44);  -- '2025-01-16', CEREAL10 (Fisica, '2025-01-01' a '2025-03-08')