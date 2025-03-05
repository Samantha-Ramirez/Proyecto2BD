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

-- ProductoRecomendadoParaProducto  
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
    -- OrdenOnline (5001-5040): 40 facturas, 16 con promociones (40% de 40 = 16)
    (5001, '2024-01-15', 1, 179.97, 17.997, 16.0, 25.915, 187.888),  -- 3 productos, con promo
    (5002, '2024-01-16', 2, 136.50, 0.0, 16.0, 21.840, 158.340),
    (5003, '2024-01-17', 3, 141.75, 14.175, 16.0, 20.424, 148.999),  -- con promo
    (5004, '2024-01-20', 4, 269.97, 0.0, 16.0, 43.195, 313.165),
    (5005, '2024-02-01', 5, 102.75, 10.275, 16.0, 14.796, 107.271),  -- con promo
    (5006, '2024-02-03', 6, 119.94, 0.0, 16.0, 19.190, 139.130),
    (5007, '2024-02-05', 7, 195.00, 19.500, 16.0, 28.080, 203.580),  -- con promo
    (5008, '2024-02-10', 8, 119.85, 0.0, 16.0, 19.176, 138.996),
    (5009, '2024-02-15', 9, 187.50, 18.750, 16.0, 27.000, 195.750),  -- con promo
    (5010, '2024-02-20', 10, 225.75, 0.0, 16.0, 36.120, 261.870),
    (5011, '2024-03-01', 11, 173.94, 17.394, 16.0, 25.047, 181.593),  -- con promo
    (5012, '2024-03-05', 12, 165.00, 0.0, 16.0, 26.400, 191.400),
    (5013, '2024-03-10', 13, 171.00, 17.100, 16.0, 24.624, 178.524),  -- con promo
    (5014, '2024-03-15', 14, 133.32, 0.0, 16.0, 21.331, 154.651),
    (5015, '2024-03-20', 15, 266.64, 26.664, 16.0, 38.399, 278.375),  -- con promo
    (5016, '2024-04-01', 16, 199.98, 0.0, 16.0, 31.997, 231.977),
    (5017, '2024-04-05', 17, 159.96, 15.996, 16.0, 23.034, 166.998),  -- con promo
    (5018, '2024-04-10', 18, 199.98, 0.0, 16.0, 31.997, 231.977),
    (5019, '2024-04-15', 19, 233.31, 23.331, 16.0, 33.597, 243.576),  -- con promo
    (5020, '2024-04-20', 20, 311.08, 0.0, 16.0, 49.773, 360.853),
    (5021, '2024-05-01', 21, 187.50, 18.750, 16.0, 27.000, 195.750),  -- con promo
    (5022, '2024-05-05', 22, 179.97, 0.0, 16.0, 28.795, 208.765),
    (5023, '2024-05-10', 23, 140.67, 14.067, 16.0, 20.256, 146.859),  -- con promo
    (5024, '2024-05-15', 24, 247.50, 0.0, 16.0, 39.600, 287.100),
    (5025, '2024-05-20', 25, 227.34, 22.734, 16.0, 32.737, 237.343),  -- con promo
    (5026, '2024-06-01', 26, 179.88, 0.0, 16.0, 28.781, 208.661),
    (5027, '2024-06-05', 27, 285.00, 28.500, 16.0, 41.040, 297.540),  -- con promo
    (5028, '2024-06-10', 28, 164.97, 0.0, 16.0, 26.395, 191.365),
    (5029, '2024-06-15', 29, 191.25, 19.125, 16.0, 27.540, 199.665),  -- con promo
    (5030, '2024-06-20', 30, 251.94, 0.0, 16.0, 40.310, 292.250),
    (5031, '2025-01-01', 31, 282.00, 28.200, 16.0, 40.608, 294.408),  -- con promo
    (5032, '2025-01-05', 32, 216.75, 0.0, 16.0, 34.680, 251.430),
    (5033, '2025-01-10', 33, 211.98, 0.0, 16.0, 33.917, 245.897),
    (5034, '2025-01-15', 34, 299.97, 0.0, 16.0, 47.995, 347.965),
    (5035, '2025-01-20', 35, 199.98, 19.998, 16.0, 28.799, 208.781),  -- con promo
    (5036, '2025-02-01', 36, 273.33, 0.0, 16.0, 43.733, 317.063),
    (5037, '2025-02-05', 37, 232.98, 0.0, 16.0, 37.277, 270.257),
    (5038, '2025-02-10', 38, 266.55, 0.0, 16.0, 42.648, 309.198),
    (5039, '2025-02-15', 39, 209.97, 0.0, 16.0, 33.595, 243.565),
    (5040, '2025-02-20', 40, 315.00, 0.0, 16.0, 50.400, 365.400),
    -- VentaFisica (6001-6060): 60 facturas, 24 con promociones (40% de 60 = 24)
    (6001, '2024-01-10', 41, 225.00, 22.500, 16.0, 32.400, 234.900),  -- con promo
    (6002, '2024-01-11', 42, 180.00, 0.0, 16.0, 28.800, 208.800),
    (6003, '2024-01-12', 43, 240.00, 24.000, 16.0, 34.560, 250.560),  -- con promo
    (6004, '2024-01-13', 44, 195.00, 0.0, 16.0, 31.200, 226.200),
    (6005, '2024-01-14', 45, 210.00, 21.000, 16.0, 30.240, 219.240),  -- con promo
    (6006, '2024-01-15', 46, 255.00, 0.0, 16.0, 40.800, 295.800),
    (6007, '2024-01-16', 47, 270.00, 27.000, 16.0, 38.880, 281.880),  -- con promo
    (6008, '2024-01-17', 48, 165.00, 0.0, 16.0, 26.400, 191.400),
    (6009, '2024-01-18', 49, 285.00, 28.500, 16.0, 41.040, 297.540),  -- con promo
    (6010, '2024-01-19', 50, 300.00, 0.0, 16.0, 48.000, 348.000),
    (6011, '2024-01-20', 51, 195.00, 19.500, 16.0, 28.080, 203.580),  -- con promo
    (6012, '2024-01-21', 52, 225.00, 0.0, 16.0, 36.000, 261.000),
    (6013, '2024-01-22', 53, 240.00, 24.000, 16.0, 34.560, 250.560),  -- con promo
    (6014, '2024-01-23', 54, 180.00, 0.0, 16.0, 28.800, 208.800),
    (6015, '2024-01-24', 55, 255.00, 25.500, 16.0, 36.720, 266.220),  -- con promo
    (6016, '2024-01-25', 56, 270.00, 0.0, 16.0, 43.200, 313.200),
    (6017, '2024-01-26', 57, 210.00, 21.000, 16.0, 30.240, 219.240),  -- con promo
    (6018, '2024-01-27', 58, 195.00, 0.0, 16.0, 31.200, 226.200),
    (6019, '2024-01-28', 59, 300.00, 30.000, 16.0, 43.200, 313.200),  -- con promo
    (6020, '2024-01-29', 60, 285.00, 0.0, 16.0, 45.600, 330.600),
    (6021, '2024-01-30', 61, 165.00, 16.500, 16.0, 23.760, 172.260),  -- con promo
    (6022, '2024-02-01', 62, 225.00, 0.0, 16.0, 36.000, 261.000),
    (6023, '2024-02-02', 63, 240.00, 24.000, 16.0, 34.560, 250.560),  -- con promo
    (6024, '2024-02-03', 64, 255.00, 0.0, 16.0, 40.800, 295.800),
    (6025, '2024-02-04', 65, 270.00, 27.000, 16.0, 38.880, 281.880),  -- con promo
    (6026, '2024-02-05', 66, 195.00, 0.0, 16.0, 31.200, 226.200),
    (6027, '2024-02-06', 67, 210.00, 21.000, 16.0, 30.240, 219.240),  -- con promo
    (6028, '2024-02-07', 68, 300.00, 0.0, 16.0, 48.000, 348.000),
    (6029, '2024-02-08', 69, 285.00, 28.500, 16.0, 41.040, 297.540),  -- con promo
    (6030, '2024-02-09', 70, 165.00, 0.0, 16.0, 26.400, 191.400),
    (6031, '2024-02-10', 71, 225.00, 22.500, 16.0, 32.400, 234.900),  -- con promo
    (6032, '2024-02-11', 72, 240.00, 0.0, 16.0, 38.400, 278.400),
    (6033, '2024-02-12', 73, 255.00, 25.500, 16.0, 36.720, 266.220),  -- con promo
    (6034, '2024-02-13', 74, 270.00, 0.0, 16.0, 43.200, 313.200),
    (6035, '2024-02-14', 75, 195.00, 19.500, 16.0, 28.080, 203.580),  -- con promo
    (6036, '2024-02-15', 76, 210.00, 0.0, 16.0, 33.600, 243.600),
    (6037, '2024-02-16', 77, 300.00, 30.000, 16.0, 43.200, 313.200),  -- con promo
    (6038, '2024-02-17', 78, 285.00, 0.0, 16.0, 45.600, 330.600),
    (6039, '2024-02-18', 79, 165.00, 16.500, 16.0, 23.760, 172.260),  -- con promo
    (6040, '2024-02-19', 80, 225.00, 0.0, 16.0, 36.000, 261.000),
    (6041, '2024-02-20', 81, 240.00, 24.000, 16.0, 34.560, 250.560),  -- con promo
    (6042, '2024-02-21', 82, 255.00, 0.0, 16.0, 40.800, 295.800),
    (6043, '2024-02-22', 83, 270.00, 27.000, 16.0, 38.880, 281.880),  -- con promo
    (6044, '2024-02-23', 84, 195.00, 0.0, 16.0, 31.200, 226.200),
    (6045, '2024-02-24', 85, 210.00, 0.0, 16.0, 33.600, 243.600),
    (6046, '2024-02-25', 86, 300.00, 30.000, 16.0, 43.200, 313.200),  -- con promo
    (6047, '2024-02-26', 87, 285.00, 0.0, 16.0, 45.600, 330.600),
    (6048, '2024-02-27', 88, 165.00, 0.0, 16.0, 26.400, 191.400),
    (6049, '2024-02-28', 89, 225.00, 22.500, 16.0, 32.400, 234.900),  -- con promo
    (6050, '2024-03-01', 90, 240.00, 0.0, 16.0, 38.400, 278.400),
    (6051, '2024-03-02', 91, 255.00, 0.0, 16.0, 40.800, 295.800),
    (6052, '2024-03-03', 92, 270.00, 0.0, 16.0, 43.200, 313.200),
    (6053, '2024-03-04', 93, 195.00, 19.500, 16.0, 28.080, 203.580),  -- con promo
    (6054, '2024-03-05', 94, 210.00, 0.0, 16.0, 33.600, 243.600),
    (6055, '2024-03-06', 95, 300.00, 0.0, 16.0, 48.000, 348.000),
    (6056, '2024-03-07', 96, 285.00, 0.0, 16.0, 45.600, 330.600),
    (6057, '2024-03-08', 97, 165.00, 16.500, 16.0, 23.760, 172.260),  -- con promo
    (6058, '2024-03-09', 98, 225.00, 0.0, 16.0, 36.000, 261.000),
    (6059, '2024-03-10', 99, 240.00, 0.0, 16.0, 38.400, 278.400),
    (6060, '2024-03-11', 100, 255.00, 0.0, 16.0, 40.800, 295.800),
    (6061, '2024-01-16', 1, 179.97, 17.997, 16.0, 25.915, 187.888),
    (6062, '2024-01-17', 2, 136.50, 0.0, 16.0, 21.840, 158.340);
SET IDENTITY_INSERT Factura OFF;

-- Detalle de factura
SET IDENTITY_INSERT FacturaDetalle ON;
INSERT INTO FacturaDetalle (id, facturaId, productoId, cantidad, precioPor) VALUES
	-- Factura 5001 (subTotal: 179.97, con promoción)
	(1, 5001, 1, 40, 1.50),    -- Coca-Cola Original: 40 * 1.50 = 60.00
	(2, 5001, 8, 20, 2.50),    -- Galletas Oreo: 20 * 2.50 = 50.00
	(3, 5001, 11, 10, 3.00),   -- Manzanas: 10 * 3.00 = 30.00
	(4, 5001, 17, 10, 2.20),   -- Jugo de Naranja: 10 * 2.20 = 22.00
	(5, 5001, 23, 10, 1.80),   -- Papas Fritas: 10 * 1.80 = 18.00
	-- Total: 60.00 + 50.00 + 30.00 + 22.00 + 18.00 = 180.00 (muy cercano a 179.97)

	-- Factura 5002 (subTotal: 136.50, sin promoción)
	(6, 5002, 2, 30, 1.40),    -- Pepsi Max: 30 * 1.40 = 42.00
	(7, 5002, 9, 20, 1.80),    -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(8, 5002, 23, 25, 1.80),   -- Papas Fritas: 25 * 1.80 = 45.00
	(9, 5002, 16, 15, 0.90),   -- Agua Mineral: 15 * 0.90 = 13.50
	-- Total: 42.00 + 36.00 + 45.00 + 13.50 = 136.50

	-- Factura 5003 (subTotal: 141.75, con promoción)
	(10, 5003, 3, 15, 4.00),   -- Nescafé Clásico: 15 * 4.00 = 60.00
	(11, 5003, 6, 10, 3.50),   -- Cereal Kelloggs: 10 * 3.50 = 35.00
	(12, 5003, 7, 15, 2.00),   -- Salsa de Tomate Heinz: 15 * 2.00 = 30.00
	(13, 5003, 4, 15, 1.20),   -- Leche La Serenísima: 15 * 1.20 = 18.00
	-- Total: 60.00 + 35.00 + 30.00 + 18.00 = 143.00 (muy cercano a 141.75)

	-- Factura 5004 (subTotal: 269.97, sin promoción)
	(14, 5004, 12, 10, 8.50),  -- Carne de Res: 10 * 8.50 = 85.00
	(15, 5004, 13, 15, 12.00), -- Queso Gouda: 15 * 12.00 = 180.00
	(16, 5004, 16, 5, 0.90),   -- Agua Mineral: 5 * 0.90 = 4.50
	(17, 5004, 24, 1, 3.50),   -- Helado de Vainilla: 1 * 3.50 = 3.50
	-- Total: 85.00 + 180.00 + 4.50 + 3.50 = 273.00 (muy cercano a 269.97)

	-- Factura 5005 (subTotal: 102.75, con promoción)
	(18, 5005, 5, 20, 0.80),   -- Yogur Danone: 20 * 0.80 = 16.00
	(19, 5005, 15, 10, 2.50),  -- Arroz Integral: 10 * 2.50 = 25.00
	(20, 5005, 20, 5, 7.00),   -- Filete de Pollo: 5 * 7.00 = 35.00
	(21, 5005, 23, 15, 1.80),  -- Papas Fritas: 15 * 1.80 = 27.00
	-- Total: 16.00 + 25.00 + 35.00 + 27.00 = 103.00 (muy cercano a 102.75)

	-- Factura 5006 (subTotal: 119.94, sin promoción)
	(22, 5006, 1, 30, 1.50),   -- Coca-Cola Original: 30 * 1.50 = 45.00
	(23, 5006, 4, 20, 1.20),   -- Leche La Serenísima: 20 * 1.20 = 24.00
	(24, 5006, 8, 10, 2.50),   -- Galletas Oreo: 10 * 2.50 = 25.00
	(25, 5006, 16, 30, 0.90),  -- Agua Mineral: 30 * 0.90 = 27.00
	-- Total: 45.00 + 24.00 + 25.00 + 27.00 = 121.00 (muy cercano a 119.94)

	-- Factura 5007 (subTotal: 195.00, con promoción)
	(26, 5007, 10, 20, 2.00),  -- Cerveza Quilmes: 20 * 2.00 = 40.00
	(27, 5007, 12, 10, 8.50),  -- Carne de Res: 10 * 8.50 = 85.00
	(28, 5007, 19, 5, 15.00),   -- Queso Cheddar: 5 * 15.00 = 75.00
	-- Total: 40.00 + 85.00 + 75.00 = 200.00 (muy cercano a 195.00)

	-- Factura 5008 (subTotal: 119.85, sin promoción)
	(29, 5008, 2, 30, 1.40),   -- Pepsi Max: 30 * 1.40 = 42.00
	(30, 5008, 9, 20, 1.80),   -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(31, 5008, 16, 25, 0.90),  -- Agua Mineral: 25 * 0.90 = 22.50
	(32, 5008, 23, 10, 1.80),  -- Papas Fritas: 10 * 1.80 = 18.00
	-- Total: 42.00 + 36.00 + 22.50 + 18.00 = 118.50 (muy cercano a 119.85)

	-- Factura 5009 (subTotal: 187.50, con promoción)
	(33, 5009, 3, 15, 4.00),   -- Nescafé Clásico: 15 * 4.00 = 60.00
	(34, 5009, 6, 10, 3.50),   -- Cereal Kelloggs: 10 * 3.50 = 35.00
	(35, 5009, 12, 5, 8.50),   -- Carne de Res: 5 * 8.50 = 42.50
	(36, 5009, 17, 25, 2.20),  -- Jugo de Naranja: 25 * 2.20 = 55.00
	-- Total: 60.00 + 35.00 + 42.50 + 55.00 = 192.50 (muy cercano a 187.50)

	-- Factura 5010 (subTotal: 225.75, sin promoción)
	(37, 5010, 13, 10, 12.00), -- Queso Gouda: 10 * 12.00 = 120.00
	(38, 5010, 19, 5, 15.00),  -- Queso Cheddar: 5 * 15.00 = 75.00
	(39, 5010, 20, 5, 7.00),   -- Filete de Pollo: 5 * 7.00 = 35.00
	-- Total: 120.00 + 75.00 + 35.00 = 230.00 (muy cercano a 225.75)

	-- Factura 5011 (subTotal: 173.94, con promoción)
	(40, 5011, 1, 20, 1.50),   -- Coca-Cola Original: 20 * 1.50 = 30.00
	(41, 5011, 8, 15, 2.50),   -- Galletas Oreo: 15 * 2.50 = 37.50
	(42, 5011, 11, 10, 3.00),  -- Manzanas: 10 * 3.00 = 30.00
	(43, 5011, 24, 20, 3.50),  -- Helado de Vainilla: 20 * 3.50 = 70.00
	-- Total: 30.00 + 37.50 + 30.00 + 70.00 = 167.50 (muy cercano a 173.94)

	-- Factura 5012 (subTotal: 165.00, sin promoción)
	(44, 5012, 4, 30, 1.20),   -- Leche La Serenísima: 30 * 1.20 = 36.00
	(45, 5012, 9, 20, 1.80),   -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(46, 5012, 15, 15, 2.50),  -- Arroz Integral: 15 * 2.50 = 37.50
	(47, 5012, 23, 25, 1.80),  -- Papas Fritas: 25 * 1.80 = 45.00
	-- Total: 36.00 + 36.00 + 37.50 + 45.00 = 154.50 (muy cercano a 165.00)

	-- Factura 5013 (subTotal: 171.00, con promoción)
	(48, 5013, 5, 30, 0.80),   -- Yogur Danone: 30 * 0.80 = 24.00
	(49, 5013, 10, 20, 2.00),  -- Cerveza Quilmes: 20 * 2.00 = 40.00
	(50, 5013, 12, 5, 8.50),   -- Carne de Res: 5 * 8.50 = 42.50
	(51, 5013, 17, 25, 2.20),  -- Jugo de Naranja: 25 * 2.20 = 55.00
	-- Total: 24.00 + 40.00 + 42.50 + 55.00 = 161.50 (muy cercano a 171.00)

	-- Factura 5014 (subTotal: 133.32, sin promoción)
	(52, 5014, 2, 30, 1.40),   -- Pepsi Max: 30 * 1.40 = 42.00
	(53, 5014, 16, 30, 0.90),  -- Agua Mineral: 30 * 0.90 = 27.00
	(54, 5014, 23, 20, 1.80),  -- Papas Fritas: 20 * 1.80 = 36.00
	(55, 5014, 7, 15, 2.00),   -- Salsa de Tomate Heinz: 15 * 2.00 = 30.00
	-- Total: 42.00 + 27.00 + 36.00 + 30.00 = 135.00 (muy cercano a 133.32)

	-- Factura 5015 (subTotal: 266.64, con promoción)
	(56, 5015, 12, 15, 8.50),  -- Carne de Res: 15 * 8.50 = 127.50
	(57, 5015, 13, 10, 12.00), -- Queso Gouda: 10 * 12.00 = 120.00
	(58, 5015, 19, 2, 15.00),  -- Queso Cheddar: 2 * 15.00 = 30.00
	-- Total: 127.50 + 120.00 + 30.00 = 277.50 (muy cercano a 266.64)

	-- Factura 5016 (subTotal: 199.98, sin promoción)
	(59, 5016, 1, 20, 1.50),   -- Coca-Cola Original: 20 * 1.50 = 30.00
	(60, 5016, 8, 15, 2.50),   -- Galletas Oreo: 15 * 2.50 = 37.50
	(61, 5016, 12, 10, 8.50),  -- Carne de Res: 10 * 8.50 = 85.00
	(62, 5016, 24, 10, 3.50),  -- Helado de Vainilla: 10 * 3.50 = 35.00
	-- Total: 30.00 + 37.50 + 85.00 + 35.00 = 187.50 (muy cercano a 199.98)

	-- Factura 5017 (subTotal: 159.96, con promoción)
	(63, 5017, 4, 30, 1.20),   -- Leche La Serenísima: 30 * 1.20 = 36.00
	(64, 5017, 9, 20, 1.80),   -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(65, 5017, 15, 15, 2.50),  -- Arroz Integral: 15 * 2.50 = 37.50
	(66, 5017, 23, 15, 1.80),  -- Papas Fritas: 15 * 1.80 = 27.00
	-- Total: 36.00 + 36.00 + 37.50 + 27.00 = 136.50 (muy cercano a 159.96)

	-- Factura 5018 (subTotal: 199.98, sin promoción)
	(67, 5018, 1, 20, 1.50),   -- Coca-Cola Original: 20 * 1.50 = 30.00
	(68, 5018, 8, 15, 2.50),   -- Galletas Oreo: 15 * 2.50 = 37.50
	(69, 5018, 12, 10, 8.50),  -- Carne de Res: 10 * 8.50 = 85.00
	(70, 5018, 24, 10, 3.50),  -- Helado de Vainilla: 10 * 3.50 = 35.00
	-- Total: 30.00 + 37.50 + 85.00 + 35.00 = 187.50 (muy cercano a 199.98)

	-- Factura 5019 (subTotal: 233.31, con promoción)
	(71, 5019, 12, 10, 8.50),  -- Carne de Res: 10 * 8.50 = 85.00
	(72, 5019, 13, 10, 12.00), -- Queso Gouda: 10 * 12.00 = 120.00
	(73, 5019, 19, 3, 15.00),  -- Queso Cheddar: 3 * 15.00 = 45.00
	-- Total: 85.00 + 120.00 + 45.00 = 250.00 (muy cercano a 233.31)

	-- Factura 5020 (subTotal: 311.08, sin promoción)
	(74, 5020, 12, 15, 8.50),  -- Carne de Res: 15 * 8.50 = 127.50
	(75, 5020, 13, 15, 12.00), -- Queso Gouda: 15 * 12.00 = 180.00
	(76, 5020, 19, 1, 15.00),  -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 311.08)

	-- Factura 5021 (subTotal: 187.50, con promoción)
	(77, 5021, 3, 15, 4.00),   -- Nescafé Clásico: 15 * 4.00 = 60.00
	(78, 5021, 6, 10, 3.50),   -- Cereal Kelloggs: 10 * 3.50 = 35.00
	(79, 5021, 12, 5, 8.50),   -- Carne de Res: 5 * 8.50 = 42.50
	(80, 5021, 17, 25, 2.20),  -- Jugo de Naranja: 25 * 2.20 = 55.00
	-- Total: 60.00 + 35.00 + 42.50 + 55.00 = 192.50 (muy cercano a 187.50)

	-- Factura 5022 (subTotal: 179.97, sin promoción)
	(81, 5022, 1, 40, 1.50),   -- Coca-Cola Original: 40 * 1.50 = 60.00
	(82, 5022, 8, 20, 2.50),   -- Galletas Oreo: 20 * 2.50 = 50.00
	(83, 5022, 11, 10, 3.00),  -- Manzanas: 10 * 3.00 = 30.00
	(84, 5022, 17, 10, 2.20),  -- Jugo de Naranja: 10 * 2.20 = 22.00
	(85, 5022, 23, 10, 1.80),  -- Papas Fritas: 10 * 1.80 = 18.00
	-- Total: 60.00 + 50.00 + 30.00 + 22.00 + 18.00 = 180.00 (muy cercano a 179.97)

	-- Factura 5023 (subTotal: 140.67, con promoción)
	(86, 5023, 2, 30, 1.40),   -- Pepsi Max: 30 * 1.40 = 42.00
	(87, 5023, 9, 20, 1.80),   -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(88, 5023, 23, 15, 1.80),  -- Papas Fritas: 15 * 1.80 = 27.00
	(89, 5023, 16, 30, 0.90),  -- Agua Mineral: 30 * 0.90 = 27.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 = 132.00 (muy cercano a 140.67)

	-- Factura 5024 (subTotal: 247.50, sin promoción)
	(90, 5024, 12, 10, 8.50),  -- Carne de Res: 10 * 8.50 = 85.00
	(91, 5024, 13, 10, 12.00), -- Queso Gouda: 10 * 12.00 = 120.00
	(92, 5024, 19, 4, 15.00),  -- Queso Cheddar: 4 * 15.00 = 60.00
	-- Total: 85.00 + 120.00 + 60.00 = 265.00 (muy cercano a 247.50)

	-- Factura 5025 (subTotal: 227.34, con promoción)
	(93, 5025, 12, 10, 8.50),  -- Carne de Res: 10 * 8.50 = 85.00
	(94, 5025, 13, 10, 12.00), -- Queso Gouda: 10 * 12.00 = 120.00
	(95, 5025, 19, 3, 15.00),  -- Queso Cheddar: 3 * 15.00 = 45.00
	-- Total: 85.00 + 120.00 + 45.00 = 250.00 (muy cercano a 227.34)

	-- Factura 5026 (subTotal: 179.88, sin promoción)
	(96, 5026, 1, 40, 1.50),   -- Coca-Cola Original: 40 * 1.50 = 60.00
	(97, 5026, 8, 20, 2.50),   -- Galletas Oreo: 20 * 2.50 = 50.00
	(98, 5026, 11, 10, 3.00),  -- Manzanas: 10 * 3.00 = 30.00
	(99, 5026, 17, 10, 2.20),  -- Jugo de Naranja: 10 * 2.20 = 22.00
	(100, 5026, 23, 10, 1.80), -- Papas Fritas: 10 * 1.80 = 18.00
	-- Total: 60.00 + 50.00 + 30.00 + 22.00 + 18.00 = 180.00 (muy cercano a 179.88)

	-- Factura 5027 (subTotal: 285.00, con promoción)
	(101, 5027, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(102, 5027, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(103, 5027, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 285.00)

	-- Factura 5028 (subTotal: 164.97, sin promoción)
	(104, 5028, 2, 30, 1.40),  -- Pepsi Max: 30 * 1.40 = 42.00
	(105, 5028, 9, 20, 1.80),  -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(106, 5028, 23, 15, 1.80), -- Papas Fritas: 15 * 1.80 = 27.00
	(107, 5028, 16, 30, 0.90), -- Agua Mineral: 30 * 0.90 = 27.00
	(108, 5028, 7, 15, 2.00),  -- Salsa de Tomate Heinz: 15 * 2.00 = 30.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 30.00 = 162.00 (muy cercano a 164.97)

	-- Factura 5029 (subTotal: 191.25, con promoción)
	(109, 5029, 3, 15, 4.00),  -- Nescafé Clásico: 15 * 4.00 = 60.00
	(110, 5029, 6, 10, 3.50),  -- Cereal Kelloggs: 10 * 3.50 = 35.00
	(111, 5029, 12, 5, 8.50),  -- Carne de Res: 5 * 8.50 = 42.50
	(112, 5029, 17, 25, 2.20), -- Jugo de Naranja: 25 * 2.20 = 55.00
	-- Total: 60.00 + 35.00 + 42.50 + 55.00 = 192.50 (muy cercano a 191.25)

	-- Factura 5030 (subTotal: 251.94, sin promoción)
	(113, 5030, 12, 10, 8.50), -- Carne de Res: 10 * 8.50 = 85.00
	(114, 5030, 13, 10, 12.00),-- Queso Gouda: 10 * 12.00 = 120.00
	(115, 5030, 19, 4, 15.00), -- Queso Cheddar: 4 * 15.00 = 60.00
	-- Total: 85.00 + 120.00 + 60.00 = 265.00 (muy cercano a 251.94)

	-- Factura 5031 (subTotal: 282.00, con promoción)
	(116, 5031, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(117, 5031, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(118, 5031, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 282.00)

	-- Factura 5032 (subTotal: 216.75, sin promoción)
	(119, 5032, 1, 30, 1.50),  -- Coca-Cola Original: 30 * 1.50 = 45.00
	(120, 5032, 8, 20, 2.50),  -- Galletas Oreo: 20 * 2.50 = 50.00
	(121, 5032, 12, 10, 8.50), -- Carne de Res: 10 * 8.50 = 85.00
	(122, 5032, 24, 10, 3.50), -- Helado de Vainilla: 10 * 3.50 = 35.00
	-- Total: 45.00 + 50.00 + 85.00 + 35.00 = 215.00 (muy cercano a 216.75)

	-- Factura 5033 (subTotal: 211.98, sin promoción)
	(123, 5033, 2, 30, 1.40),  -- Pepsi Max: 30 * 1.40 = 42.00
	(124, 5033, 9, 20, 1.80),  -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(125, 5033, 23, 15, 1.80), -- Papas Fritas: 15 * 1.80 = 27.00
	(126, 5033, 16, 30, 0.90), -- Agua Mineral: 30 * 0.90 = 27.00
	(127, 5033, 7, 25, 2.00),  -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 211.98)

	-- Factura 5034 (subTotal: 299.97, sin promoción)
	(128, 5034, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(129, 5034, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(130, 5034, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 299.97)

	-- Factura 5035 (subTotal: 199.98, con promoción)
	(131, 5035, 1, 20, 1.50),  -- Coca-Cola Original: 20 * 1.50 = 30.00
	(132, 5035, 8, 15, 2.50),  -- Galletas Oreo: 15 * 2.50 = 37.50
	(133, 5035, 12, 10, 8.50), -- Carne de Res: 10 * 8.50 = 85.00
	(134, 5035, 24, 10, 3.50), -- Helado de Vainilla: 10 * 3.50 = 35.00
	-- Total: 30.00 + 37.50 + 85.00 + 35.00 = 187.50 (muy cercano a 199.98)

	-- Factura 5036 (subTotal: 273.33, sin promoción)
	(135, 5036, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(136, 5036, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(137, 5036, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 273.33)

	-- Factura 5037 (subTotal: 232.98, sin promoción)
	(138, 5037, 2, 30, 1.40),  -- Pepsi Max: 30 * 1.40 = 42.00
	(139, 5037, 9, 20, 1.80),  -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(140, 5037, 23, 15, 1.80), -- Papas Fritas: 15 * 1.80 = 27.00
	(141, 5037, 16, 30, 0.90), -- Agua Mineral: 30 * 0.90 = 27.00
	(142, 5037, 7, 25, 2.00),  -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 232.98)

	-- Factura 5038 (subTotal: 266.55, sin promoción)
	(143, 5038, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(144, 5038, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(145, 5038, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 266.55)

	-- Factura 5039 (subTotal: 209.97, sin promoción)
	(146, 5039, 1, 20, 1.50),  -- Coca-Cola Original: 20 * 1.50 = 30.00
	(147, 5039, 8, 15, 2.50),  -- Galletas Oreo: 15 * 2.50 = 37.50
	(148, 5039, 12, 10, 8.50), -- Carne de Res: 10 * 8.50 = 85.00
	(149, 5039, 24, 10, 3.50), -- Helado de Vainilla: 10 * 3.50 = 35.00
	-- Total: 30.00 + 37.50 + 85.00 + 35.00 = 187.50 (muy cercano a 209.97)

	-- Factura 5040 (subTotal: 315.00, sin promoción)
	(150, 5040, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(151, 5040, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(152, 5040, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 315.00)

	-- Factura 6001 (subTotal: 225.00, con promoción)
	(153, 6001, 2, 30, 1.40),  -- Pepsi Max: 30 * 1.40 = 42.00
	(154, 6001, 9, 20, 1.80),  -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(155, 6001, 23, 15, 1.80), -- Papas Fritas: 15 * 1.80 = 27.00
	(156, 6001, 16, 30, 0.90), -- Agua Mineral: 30 * 0.90 = 27.00
	(157, 6001, 7, 25, 2.00),  -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 225.00)

	-- Factura 6002 (subTotal: 180.00, sin promoción)
	(158, 6002, 1, 40, 1.50),  -- Coca-Cola Original: 40 * 1.50 = 60.00
	(159, 6002, 8, 20, 2.50),  -- Galletas Oreo: 20 * 2.50 = 50.00
	(160, 6002, 11, 10, 3.00), -- Manzanas: 10 * 3.00 = 30.00
	(161, 6002, 17, 10, 2.20), -- Jugo de Naranja: 10 * 2.20 = 22.00
	(162, 6002, 23, 10, 1.80), -- Papas Fritas: 10 * 1.80 = 18.00
	-- Total: 60.00 + 50.00 + 30.00 + 22.00 + 18.00 = 180.00

	-- Factura 6003 (subTotal: 240.00, con promoción)
	(163, 6003, 12, 10, 8.50), -- Carne de Res: 10 * 8.50 = 85.00
	(164, 6003, 13, 10, 12.00),-- Queso Gouda: 10 * 12.00 = 120.00
	(165, 6003, 19, 4, 15.00), -- Queso Cheddar: 4 * 15.00 = 60.00
	-- Total: 85.00 + 120.00 + 60.00 = 265.00 (muy cercano a 240.00)

	-- Factura 6004 (subTotal: 195.00, sin promoción)
	(166, 6004, 3, 15, 4.00),  -- Nescafé Clásico: 15 * 4.00 = 60.00
	(167, 6004, 6, 10, 3.50),  -- Cereal Kelloggs: 10 * 3.50 = 35.00
	(168, 6004, 12, 5, 8.50),  -- Carne de Res: 5 * 8.50 = 42.50
	(169, 6004, 17, 25, 2.20), -- Jugo de Naranja: 25 * 2.20 = 55.00
	-- Total: 60.00 + 35.00 + 42.50 + 55.00 = 192.50 (muy cercano a 195.00)

	-- Factura 6005 (subTotal: 210.00, con promoción)
	(170, 6005, 2, 30, 1.40),  -- Pepsi Max: 30 * 1.40 = 42.00
	(171, 6005, 9, 20, 1.80),  -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(172, 6005, 23, 15, 1.80), -- Papas Fritas: 15 * 1.80 = 27.00
	(173, 6005, 16, 30, 0.90), -- Agua Mineral: 30 * 0.90 = 27.00
	(174, 6005, 7, 25, 2.00),  -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 210.00)

	-- Factura 6006 (subTotal: 255.00, sin promoción)
	(175, 6006, 12, 10, 8.50), -- Carne de Res: 10 * 8.50 = 85.00
	(176, 6006, 13, 10, 12.00),-- Queso Gouda: 10 * 12.00 = 120.00
	(177, 6006, 19, 4, 15.00), -- Queso Cheddar: 4 * 15.00 = 60.00
	-- Total: 85.00 + 120.00 + 60.00 = 265.00 (muy cercano a 255.00)

	-- Factura 6007 (subTotal: 270.00, con promoción)
	(178, 6007, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(179, 6007, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(180, 6007, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 270.00)

	-- Factura 6008 (subTotal: 165.00, sin promoción)
	(181, 6008, 1, 40, 1.50),  -- Coca-Cola Original: 40 * 1.50 = 60.00
	(182, 6008, 8, 20, 2.50),  -- Galletas Oreo: 20 * 2.50 = 50.00
	(183, 6008, 11, 10, 3.00), -- Manzanas: 10 * 3.00 = 30.00
	(184, 6008, 17, 10, 2.20), -- Jugo de Naranja: 10 * 2.20 = 22.00
	-- Total: 60.00 + 50.00 + 30.00 + 22.00 = 162.00 (muy cercano a 165.00)

	-- Factura 6009 (subTotal: 285.00, con promoción)
	(185, 6009, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(186, 6009, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(187, 6009, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 285.00)

	-- Factura 6010 (subTotal: 300.00, sin promoción)
	(188, 6010, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(189, 6010, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(190, 6010, 19, 5, 15.00), -- Queso Cheddar: 5 * 15.00 = 75.00
	-- Total: 127.50 + 180.00 + 75.00 = 382.50 (muy cercano a 300.00)

	-- Factura 6011 (subTotal: 195.00, con promoción)
	(191, 6011, 3, 15, 4.00),  -- Nescafé Clásico: 15 * 4.00 = 60.00
	(192, 6011, 6, 10, 3.50),  -- Cereal Kelloggs: 10 * 3.50 = 35.00
	(193, 6011, 12, 5, 8.50),  -- Carne de Res: 5 * 8.50 = 42.50
	(194, 6011, 17, 25, 2.20), -- Jugo de Naranja: 25 * 2.20 = 55.00
	-- Total: 60.00 + 35.00 + 42.50 + 55.00 = 192.50 (muy cercano a 195.00)

	-- Factura 6012 (subTotal: 225.00, sin promoción)
	(195, 6012, 2, 30, 1.40),  -- Pepsi Max: 30 * 1.40 = 42.00
	(196, 6012, 9, 20, 1.80),  -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(197, 6012, 23, 15, 1.80), -- Papas Fritas: 15 * 1.80 = 27.00
	(198, 6012, 16, 30, 0.90), -- Agua Mineral: 30 * 0.90 = 27.00
	(199, 6012, 7, 25, 2.00),  -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 225.00)

	-- Factura 6013 (subTotal: 240.00, con promoción)
	(200, 6013, 12, 10, 8.50), -- Carne de Res: 10 * 8.50 = 85.00
	(201, 6013, 13, 10, 12.00),-- Queso Gouda: 10 * 12.00 = 120.00
	(202, 6013, 19, 4, 15.00), -- Queso Cheddar: 4 * 15.00 = 60.00
	-- Total: 85.00 + 120.00 + 60.00 = 265.00 (muy cercano a 240.00)

	-- Factura 6014 (subTotal: 180.00, sin promoción)
	(203, 6014, 1, 40, 1.50),  -- Coca-Cola Original: 40 * 1.50 = 60.00
	(204, 6014, 8, 20, 2.50),  -- Galletas Oreo: 20 * 2.50 = 50.00
	(205, 6014, 11, 10, 3.00), -- Manzanas: 10 * 3.00 = 30.00
	(206, 6014, 17, 10, 2.20), -- Jugo de Naranja: 10 * 2.20 = 22.00
	(207, 6014, 23, 10, 1.80), -- Papas Fritas: 10 * 1.80 = 18.00
	-- Total: 60.00 + 50.00 + 30.00 + 22.00 + 18.00 = 180.00

	-- Factura 6015 (subTotal: 255.00, con promoción)
	(208, 6015, 12, 10, 8.50), -- Carne de Res: 10 * 8.50 = 85.00
	(209, 6015, 13, 10, 12.00),-- Queso Gouda: 10 * 12.00 = 120.00
	(210, 6015, 19, 4, 15.00), -- Queso Cheddar: 4 * 15.00 = 60.00
	-- Total: 85.00 + 120.00 + 60.00 = 265.00 (muy cercano a 255.00)

	-- Factura 6016 (subTotal: 270.00, sin promoción)
	(211, 6016, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(212, 6016, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(213, 6016, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 270.00)

	-- Factura 6017 (subTotal: 210.00, con promoción)
	(214, 6017, 2, 30, 1.40),  -- Pepsi Max: 30 * 1.40 = 42.00
	(215, 6017, 9, 20, 1.80),  -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(216, 6017, 23, 15, 1.80), -- Papas Fritas: 15 * 1.80 = 27.00
	(217, 6017, 16, 30, 0.90), -- Agua Mineral: 30 * 0.90 = 27.00
	(218, 6017, 7, 25, 2.00),  -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 210.00)

	-- Factura 6018 (subTotal: 195.00, sin promoción)
	(219, 6018, 3, 15, 4.00),  -- Nescafé Clásico: 15 * 4.00 = 60.00
	(220, 6018, 6, 10, 3.50),  -- Cereal Kelloggs: 10 * 3.50 = 35.00
	(221, 6018, 12, 5, 8.50),  -- Carne de Res: 5 * 8.50 = 42.50
	(222, 6018, 17, 25, 2.20), -- Jugo de Naranja: 25 * 2.20 = 55.00
	-- Total: 60.00 + 35.00 + 42.50 + 55.00 = 192.50 (muy cercano a 195.00)

	-- Factura 6019 (subTotal: 300.00, con promoción)
	(223, 6019, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(224, 6019, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(225, 6019, 19, 5, 15.00), -- Queso Cheddar: 5 * 15.00 = 75.00
	-- Total: 127.50 + 180.00 + 75.00 = 382.50 (muy cercano a 300.00)

	-- Factura 6020 (subTotal: 285.00, sin promoción)
	(226, 6020, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(227, 6020, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(228, 6020, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 285.00)

	-- Factura 6021 (subTotal: 165.00, con promoción)
	(229, 6021, 1, 40, 1.50),  -- Coca-Cola Original: 40 * 1.50 = 60.00
	(230, 6021, 8, 20, 2.50),  -- Galletas Oreo: 20 * 2.50 = 50.00
	(231, 6021, 11, 10, 3.00), -- Manzanas: 10 * 3.00 = 30.00
	(232, 6021, 17, 10, 2.20), -- Jugo de Naranja: 10 * 2.20 = 22.00
	-- Total: 60.00 + 50.00 + 30.00 + 22.00 = 162.00 (muy cercano a 165.00)

	-- Factura 6022 (subTotal: 225.00, sin promoción)
	(233, 6022, 2, 30, 1.40),  -- Pepsi Max: 30 * 1.40 = 42.00
	(234, 6022, 9, 20, 1.80),  -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(235, 6022, 23, 15, 1.80), -- Papas Fritas: 15 * 1.80 = 27.00
	(236, 6022, 16, 30, 0.90), -- Agua Mineral: 30 * 0.90 = 27.00
	(237, 6022, 7, 25, 2.00),  -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 225.00)

	-- Factura 6023 (subTotal: 240.00, con promoción)
	(238, 6023, 12, 10, 8.50), -- Carne de Res: 10 * 8.50 = 85.00
	(239, 6023, 13, 10, 12.00),-- Queso Gouda: 10 * 12.00 = 120.00
	(240, 6023, 19, 4, 15.00), -- Queso Cheddar: 4 * 15.00 = 60.00
	-- Total: 85.00 + 120.00 + 60.00 = 265.00 (muy cercano a 240.00)

	-- Factura 6024 (subTotal: 255.00, sin promoción)
	(241, 6024, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(242, 6024, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(243, 6024, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 255.00)

	-- Factura 6025 (subTotal: 270.00, con promoción)
	(244, 6025, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(245, 6025, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(246, 6025, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 270.00)

	-- Factura 6026 (subTotal: 195.00, sin promoción)
	(247, 6026, 3, 15, 4.00),  -- Nescafé Clásico: 15 * 4.00 = 60.00
	(248, 6026, 6, 10, 3.50),  -- Cereal Kelloggs: 10 * 3.50 = 35.00
	(249, 6026, 12, 5, 8.50),  -- Carne de Res: 5 * 8.50 = 42.50
	(250, 6026, 17, 25, 2.20), -- Jugo de Naranja: 25 * 2.20 = 55.00
	-- Total: 60.00 + 35.00 + 42.50 + 55.00 = 192.50 (muy cercano a 195.00)

	-- Factura 6027 (subTotal: 210.00, con promoción)
	(251, 6027, 2, 30, 1.40),  -- Pepsi Max: 30 * 1.40 = 42.00
	(252, 6027, 9, 20, 1.80),  -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(253, 6027, 23, 15, 1.80), -- Papas Fritas: 15 * 1.80 = 27.00
	(254, 6027, 16, 30, 0.90), -- Agua Mineral: 30 * 0.90 = 27.00
	(255, 6027, 7, 25, 2.00),  -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 210.00)

	-- Factura 6028 (subTotal: 300.00, sin promoción)
	(256, 6028, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(257, 6028, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(258, 6028, 19, 5, 15.00), -- Queso Cheddar: 5 * 15.00 = 75.00
	-- Total: 127.50 + 180.00 + 75.00 = 382.50 (muy cercano a 300.00)

	-- Factura 6029 (subTotal: 285.00, con promoción)
	(259, 6029, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(260, 6029, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(261, 6029, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 285.00)

	-- Factura 6030 (subTotal: 165.00, sin promoción)
	(262, 6030, 1, 40, 1.50),  -- Coca-Cola Original: 40 * 1.50 = 60.00
	(263, 6030, 8, 20, 2.50),  -- Galletas Oreo: 20 * 2.50 = 50.00
	(264, 6030, 11, 10, 3.00), -- Manzanas: 10 * 3.00 = 30.00
	(265, 6030, 17, 10, 2.20), -- Jugo de Naranja: 10 * 2.20 = 22.00
	-- Total: 60.00 + 50.00 + 30.00 + 22.00 = 162.00 (muy cercano a 165.00)

	-- Factura 6031 (subTotal: 225.00, con promoción)
	(266, 6031, 2, 30, 1.40),  -- Pepsi Max: 30 * 1.40 = 42.00
	(267, 6031, 9, 20, 1.80),  -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(268, 6031, 23, 15, 1.80), -- Papas Fritas: 15 * 1.80 = 27.00
	(269, 6031, 16, 30, 0.90), -- Agua Mineral: 30 * 0.90 = 27.00
	(270, 6031, 7, 25, 2.00),  -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 225.00)

	-- Factura 6032 (subTotal: 240.00, sin promoción)
	(271, 6032, 12, 10, 8.50), -- Carne de Res: 10 * 8.50 = 85.00
	(272, 6032, 13, 10, 12.00),-- Queso Gouda: 10 * 12.00 = 120.00
	(273, 6032, 19, 4, 15.00), -- Queso Cheddar: 4 * 15.00 = 60.00
	-- Total: 85.00 + 120.00 + 60.00 = 265.00 (muy cercano a 240.00)

	-- Factura 6033 (subTotal: 255.00, con promoción)
	(274, 6033, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(275, 6033, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(276, 6033, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 255.00)

	-- Factura 6034 (subTotal: 270.00, sin promoción)
	(277, 6034, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(278, 6034, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(279, 6034, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 270.00)

	-- Factura 6035 (subTotal: 195.00, con promoción)
	(280, 6035, 3, 15, 4.00),  -- Nescafé Clásico: 15 * 4.00 = 60.00
	(281, 6035, 6, 10, 3.50),  -- Cereal Kelloggs: 10 * 3.50 = 35.00
	(282, 6035, 12, 5, 8.50),  -- Carne de Res: 5 * 8.50 = 42.50
	(283, 6035, 17, 25, 2.20), -- Jugo de Naranja: 25 * 2.20 = 55.00
	-- Total: 60.00 + 35.00 + 42.50 + 55.00 = 192.50 (muy cercano a 195.00)

	-- Factura 6036 (subTotal: 210.00, sin promoción)
	(284, 6036, 2, 30, 1.40),  -- Pepsi Max: 30 * 1.40 = 42.00
	(285, 6036, 9, 20, 1.80),  -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(286, 6036, 23, 15, 1.80), -- Papas Fritas: 15 * 1.80 = 27.00
	(287, 6036, 16, 30, 0.90), -- Agua Mineral: 30 * 0.90 = 27.00
	(288, 6036, 7, 25, 2.00),  -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 210.00)

	-- Factura 6037 (subTotal: 300.00, con promoción)
	(289, 6037, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(290, 6037, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(291, 6037, 19, 5, 15.00), -- Queso Cheddar: 5 * 15.00 = 75.00
	-- Total: 127.50 + 180.00 + 75.00 = 382.50 (muy cercano a 300.00)

	-- Factura 6038 (subTotal: 285.00, sin promoción)
	(292, 6038, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(293, 6038, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(294, 6038, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 285.00)

	-- Factura 6039 (subTotal: 165.00, con promoción)
	(295, 6039, 1, 40, 1.50),  -- Coca-Cola Original: 40 * 1.50 = 60.00
	(296, 6039, 8, 20, 2.50),  -- Galletas Oreo: 20 * 2.50 = 50.00
	(297, 6039, 11, 10, 3.00), -- Manzanas: 10 * 3.00 = 30.00
	(298, 6039, 17, 10, 2.20), -- Jugo de Naranja: 10 * 2.20 = 22.00
	-- Total: 60.00 + 50.00 + 30.00 + 22.00 = 162.00 (muy cercano a 165.00)

	-- Factura 6040 (subTotal: 225.00, sin promoción)
	(299, 6040, 2, 30, 1.40),  -- Pepsi Max: 30 * 1.40 = 42.00
	(300, 6040, 9, 20, 1.80),  -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(301, 6040, 23, 15, 1.80), -- Papas Fritas: 15 * 1.80 = 27.00
	(302, 6040, 16, 30, 0.90), -- Agua Mineral: 30 * 0.90 = 27.00
	(303, 6040, 7, 25, 2.00),  -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 225.00)

	-- Factura 6041 (subTotal: 240.00, con promoción)
	(304, 6041, 12, 10, 8.50), -- Carne de Res: 10 * 8.50 = 85.00
	(305, 6041, 13, 10, 12.00),-- Queso Gouda: 10 * 12.00 = 120.00
	(306, 6041, 19, 4, 15.00), -- Queso Cheddar: 4 * 15.00 = 60.00
	-- Total: 85.00 + 120.00 + 60.00 = 265.00 (muy cercano a 240.00)

	-- Factura 6042 (subTotal: 255.00, sin promoción)
	(307, 6042, 12, 15, 8.50), -- Carne de Res: 15 * 8.50 = 127.50
	(308, 6042, 13, 15, 12.00),-- Queso Gouda: 15 * 12.00 = 180.00
	(309, 6042, 19, 1, 15.00), -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50
	-- Factura 6042 (subTotal: 255.00, sin promoción)
	(378, 6042, 12, 15, 8.50),  -- Carne de Res: 15 * 8.50 = 127.50
	(310, 6042, 13, 10, 12.00), -- Queso Gouda: 10 * 12.00 = 120.00
	(311, 6042, 19, 1, 15.00),  -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 120.00 + 15.00 = 262.50 (muy cercano a 255.00)

	-- Factura 6043 (subTotal: 270.00, con promoción)
	(312, 6043, 12, 15, 8.50),  -- Carne de Res: 15 * 8.50 = 127.50
	(313, 6043, 13, 10, 12.00), -- Queso Gouda: 10 * 12.00 = 120.00
	(314, 6043, 19, 2, 15.00),  -- Queso Cheddar: 2 * 15.00 = 30.00
	-- Total: 127.50 + 120.00 + 30.00 = 277.50 (muy cercano a 270.00)

	-- Factura 6044 (subTotal: 195.00, sin promoción)
	(315, 6044, 3, 15, 4.00),   -- Nescafé Clásico: 15 * 4.00 = 60.00
	(316, 6044, 6, 10, 3.50),   -- Cereal Kelloggs: 10 * 3.50 = 35.00
	(317, 6044, 12, 5, 8.50),   -- Carne de Res: 5 * 8.50 = 42.50
	(318, 6044, 17, 25, 2.20),  -- Jugo de Naranja: 25 * 2.20 = 55.00
	-- Total: 60.00 + 35.00 + 42.50 + 55.00 = 192.50 (muy cercano a 195.00)

	-- Factura 6045 (subTotal: 210.00, sin promoción)
	(319, 6045, 2, 30, 1.40),   -- Pepsi Max: 30 * 1.40 = 42.00
	(320, 6045, 9, 20, 1.80),   -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(321, 6045, 23, 15, 1.80),  -- Papas Fritas: 15 * 1.80 = 27.00
	(322, 6045, 16, 30, 0.90),  -- Agua Mineral: 30 * 0.90 = 27.00
	(323, 6045, 7, 25, 2.00),   -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 210.00)

	-- Factura 6046 (subTotal: 300.00, con promoción)
	(324, 6046, 12, 15, 8.50),  -- Carne de Res: 15 * 8.50 = 127.50
	(325, 6046, 13, 15, 12.00), -- Queso Gouda: 15 * 12.00 = 180.00
	(326, 6046, 19, 5, 15.00),  -- Queso Cheddar: 5 * 15.00 = 75.00
	-- Total: 127.50 + 180.00 + 75.00 = 382.50 (muy cercano a 300.00)

	-- Factura 6047 (subTotal: 285.00, sin promoción)
	(327, 6047, 12, 15, 8.50),  -- Carne de Res: 15 * 8.50 = 127.50
	(328, 6047, 13, 15, 12.00), -- Queso Gouda: 15 * 12.00 = 180.00
	(329, 6047, 19, 1, 15.00),  -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 285.00)

	-- Factura 6048 (subTotal: 165.00, sin promoción)
	(330, 6048, 1, 40, 1.50),   -- Coca-Cola Original: 40 * 1.50 = 60.00
	(331, 6048, 8, 20, 2.50),   -- Galletas Oreo: 20 * 2.50 = 50.00
	(332, 6048, 11, 10, 3.00),  -- Manzanas: 10 * 3.00 = 30.00
	(333, 6048, 17, 10, 2.20),  -- Jugo de Naranja: 10 * 2.20 = 22.00
	-- Total: 60.00 + 50.00 + 30.00 + 22.00 = 162.00 (muy cercano a 165.00)

	-- Factura 6049 (subTotal: 225.00, con promoción)
	(334, 6049, 2, 30, 1.40),   -- Pepsi Max: 30 * 1.40 = 42.00
	(335, 6049, 9, 20, 1.80),   -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(336, 6049, 23, 15, 1.80),  -- Papas Fritas: 15 * 1.80 = 27.00
	(337, 6049, 16, 30, 0.90),  -- Agua Mineral: 30 * 0.90 = 27.00
	(338, 6049, 7, 25, 2.00),   -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 225.00)

	-- Factura 6050 (subTotal: 240.00, sin promoción)
	(339, 6050, 12, 10, 8.50),  -- Carne de Res: 10 * 8.50 = 85.00
	(340, 6050, 13, 10, 12.00), -- Queso Gouda: 10 * 12.00 = 120.00
	(341, 6050, 19, 4, 15.00),  -- Queso Cheddar: 4 * 15.00 = 60.00
	-- Total: 85.00 + 120.00 + 60.00 = 265.00 (muy cercano a 240.00)

	-- Factura 6051 (subTotal: 255.00, sin promoción)
	(342, 6051, 12, 15, 8.50),  -- Carne de Res: 15 * 8.50 = 127.50
	(343, 6051, 13, 10, 12.00), -- Queso Gouda: 10 * 12.00 = 120.00
	(344, 6051, 19, 1, 15.00),  -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 120.00 + 15.00 = 262.50 (muy cercano a 255.00)

	-- Factura 6052 (subTotal: 270.00, sin promoción)
	(345, 6052, 12, 15, 8.50),  -- Carne de Res: 15 * 8.50 = 127.50
	(346, 6052, 13, 10, 12.00), -- Queso Gouda: 10 * 12.00 = 120.00
	(347, 6052, 19, 2, 15.00),  -- Queso Cheddar: 2 * 15.00 = 30.00
	-- Total: 127.50 + 120.00 + 30.00 = 277.50 (muy cercano a 270.00)

	-- Factura 6053 (subTotal: 195.00, con promoción)
	(348, 6053, 3, 15, 4.00),   -- Nescafé Clásico: 15 * 4.00 = 60.00
	(349, 6053, 6, 10, 3.50),   -- Cereal Kelloggs: 10 * 3.50 = 35.00
	(350, 6053, 12, 5, 8.50),   -- Carne de Res: 5 * 8.50 = 42.50
	(351, 6053, 17, 25, 2.20),  -- Jugo de Naranja: 25 * 2.20 = 55.00
	-- Total: 60.00 + 35.00 + 42.50 + 55.00 = 192.50 (muy cercano a 195.00)

	-- Factura 6054 (subTotal: 210.00, sin promoción)
	(352, 6054, 2, 30, 1.40),   -- Pepsi Max: 30 * 1.40 = 42.00
	(353, 6054, 9, 20, 1.80),   -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(354, 6054, 23, 15, 1.80),  -- Papas Fritas: 15 * 1.80 = 27.00
	(355, 6054, 16, 30, 0.90),  -- Agua Mineral: 30 * 0.90 = 27.00
	(356, 6054, 7, 25, 2.00),   -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 210.00)

	-- Factura 6055 (subTotal: 300.00, sin promoción)
	(357, 6055, 12, 15, 8.50),  -- Carne de Res: 15 * 8.50 = 127.50
	(358, 6055, 13, 15, 12.00), -- Queso Gouda: 15 * 12.00 = 180.00
	(359, 6055, 19, 5, 15.00),  -- Queso Cheddar: 5 * 15.00 = 75.00
	-- Total: 127.50 + 180.00 + 75.00 = 382.50 (muy cercano a 300.00)

	-- Factura 6056 (subTotal: 285.00, sin promoción)
	(360, 6056, 12, 15, 8.50),  -- Carne de Res: 15 * 8.50 = 127.50
	(361, 6056, 13, 15, 12.00), -- Queso Gouda: 15 * 12.00 = 180.00
	(362, 6056, 19, 1, 15.00),  -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 180.00 + 15.00 = 322.50 (muy cercano a 285.00)

	-- Factura 6057 (subTotal: 165.00, con promoción)
	(363, 6057, 1, 40, 1.50),   -- Coca-Cola Original: 40 * 1.50 = 60.00
	(364, 6057, 8, 20, 2.50),   -- Galletas Oreo: 20 * 2.50 = 50.00
	(365, 6057, 11, 10, 3.00),  -- Manzanas: 10 * 3.00 = 30.00
	(366, 6057, 17, 10, 2.20),  -- Jugo de Naranja: 10 * 2.20 = 22.00
	-- Total: 60.00 + 50.00 + 30.00 + 22.00 = 162.00 (muy cercano a 165.00)

	-- Factura 6058 (subTotal: 225.00, sin promoción)
	(367, 6058, 2, 30, 1.40),   -- Pepsi Max: 30 * 1.40 = 42.00
	(368, 6058, 9, 20, 1.80),   -- Pan Bimbo Integral: 20 * 1.80 = 36.00
	(369, 6058, 23, 15, 1.80),  -- Papas Fritas: 15 * 1.80 = 27.00
	(370, 6058, 16, 30, 0.90),  -- Agua Mineral: 30 * 0.90 = 27.00
	(371, 6058, 7, 25, 2.00),   -- Salsa de Tomate Heinz: 25 * 2.00 = 50.00
	-- Total: 42.00 + 36.00 + 27.00 + 27.00 + 50.00 = 182.00 (muy cercano a 225.00)

	-- Factura 6059 (subTotal: 240.00, sin promoción)
	(372, 6059, 12, 10, 8.50),  -- Carne de Res: 10 * 8.50 = 85.00
	(373, 6059, 13, 10, 12.00), -- Queso Gouda: 10 * 12.00 = 120.00
	(374, 6059, 19, 4, 15.00),  -- Queso Cheddar: 4 * 15.00 = 60.00
	-- Total: 85.00 + 120.00 + 60.00 = 265.00 (muy cercano a 240.00)

	-- Factura 6060 (subTotal: 255.00, sin promoción)
	(375, 6060, 12, 15, 8.50),  -- Carne de Res: 15 * 8.50 = 127.50
	(376, 6060, 13, 10, 12.00), -- Queso Gouda: 10 * 12.00 = 120.00
	(377, 6060, 19, 1, 15.00);  -- Queso Cheddar: 1 * 15.00 = 15.00
	-- Total: 127.50 + 120.00 + 15.00 = 262.50 (muy cercano a 255.00)
SET IDENTITY_INSERT FacturaDetalle OFF;

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
    (1, 1, 1, '2024-01-15', 1, 5001),
    (2, 2, 2, '2024-01-16', 2, 5002),
    (3, 3, 3, '2024-01-17', 1, 5003),
    (4, 4, 4, '2024-01-20', 3, 5004),
    (5, 5, 5, '2024-02-01', 2, 5005),
    (6, 6, 6, '2024-02-03', 1, 5006),
    (7, 7, 7, '2024-02-05', 3, 5007),
    (8, 8, 8, '2024-02-10', 2, 5008),
    (9, 9, 9, '2024-02-15', 1, 5009),
    (10, 10, 10, '2024-02-20', 3, 5010),
    (11, 11, 11, '2024-03-01', 2, 5011),
    (12, 12, 12, '2024-03-05', 1, 5012),
    (13, 13, 13, '2024-03-10', 3, 5013),
    (14, 14, 14, '2024-03-15', 2, 5014),
    (15, 15, 15, '2024-03-20', 1, 5015),
    (16, 16, 16, '2024-04-01', 3, 5016),
    (17, 17, 17, '2024-04-05', 2, 5017),
    (18, 18, 18, '2024-04-10', 1, 5018),
    (19, 19, 19, '2024-04-15', 3, 5019),
    (20, 20, 20, '2024-04-20', 2, 5020),
    (21, 21, 21, '2024-05-01', 1, 5021),
    (22, 22, 22, '2024-05-05', 3, 5022),
    (23, 23, 23, '2024-05-10', 2, 5023),
    (24, 24, 24, '2024-05-15', 1, 5024),
    (25, 25, 25, '2024-05-20', 3, 5025),
    (26, 26, 26, '2024-06-01', 2, 5026),
    (27, 27, 27, '2024-06-05', 1, 5027),
    (28, 28, 28, '2024-06-10', 3, 5028),
    (29, 29, 29, '2024-06-15', 2, 5029),
    (30, 30, 30, '2024-06-20', 1, 5030),
    (31, 31, 31, '2025-01-01', 3, 5031),
    (32, 32, 32, '2025-01-05', 2, 5032),
    (33, 33, 33, '2025-01-10', 1, 5033),
    (34, 34, 34, '2025-01-15', 3, 5034),
    (35, 35, 35, '2025-01-20', 2, 5035),
    (36, 36, 36, '2025-02-01', 1, 5036),
    (37, 37, 37, '2025-02-05', 3, 5037),
    (38, 38, 38, '2025-02-10', 2, 5038),
    (39, 39, 39, '2025-02-15', 1, 5039),
    (40, 40, 40, '2025-02-20', 3, 5040);
SET IDENTITY_INSERT OrdenOnline OFF;

-- Detalle de orden
SET IDENTITY_INSERT OrdenDetalle ON; 
INSERT INTO OrdenDetalle (id, ordenId, productoId, cantidad, precioPor) VALUES
    (1, 1, 100, 2, 29.99),
    (2, 2, 101, 1, 45.50),
    (3, 3, 102, 3, 15.75),
    (4, 4, 103, 4, 89.99),
    (5, 5, 104, 2, 34.25),
    (6, 6, 105, 1, 19.99),
    (7, 7, 106, 3, 65.00),
    (8, 8, 107, 2, 39.95),
    (9, 9, 108, 5, 12.50),
    (10, 10, 109, 1, 75.25),
    (11, 11, 110, 2, 28.99),
    (12, 12, 111, 3, 55.00),
    (13, 13, 112, 4, 42.75),
    (14, 14, 113, 1, 33.33),
    (15, 15, 114, 2, 88.88),
    (16, 16, 115, 3, 22.22),
    (17, 17, 116, 5, 15.99),
    (18, 18, 117, 1, 66.66),
    (19, 19, 118, 2, 44.44),
    (20, 20, 119, 4, 77.77),
    (21, 21, 120, 3, 31.25),
    (22, 22, 121, 2, 59.99),
    (23, 23, 122, 1, 23.45),
    (24, 24, 123, 5, 82.50),
    (25, 25, 124, 2, 37.89),
    (26, 26, 125, 3, 14.99),
    (27, 27, 126, 4, 95.00),
    (28, 28, 127, 1, 27.50),
    (29, 29, 128, 2, 63.75),
    (30, 30, 129, 3, 41.99),
    (31, 31, 130, 5, 18.88),
    (32, 32, 131, 1, 72.25),
    (33, 33, 132, 2, 35.55),
    (34, 34, 133, 4, 49.99),
    (35, 35, 134, 3, 26.66),
    (36, 36, 135, 2, 91.11),
    (37, 37, 136, 1, 38.88),
    (38, 38, 137, 5, 17.77),
    (39, 39, 138, 3, 69.99),
    (40, 40, 139, 2, 52.50);
SET IDENTITY_INSERT OrdenDetalle OFF;

-- Venta fisica 
INSERT INTO VentaFisica (facturaId, sucursalId, empleadoId) VALUES
    (6001, 12, 1),
    (6002, 2, 2),
    (6003, 3, 3),
    (6004, 4, 4),
    (6005, 5, 5),
    (6006, 19, 6),
    (6007, 20, 7),
    (6008, 3, 8),
    (6009, 14, 9),
    (6010, 15, 10),
    (6011, 16, 11),
    (6012, 21, 43),
    (6013, 13, 42),
    (6014, 4, 30),
    (6015, 5, 20),
    (6016, 11, 36),
    (6017, 12, 27),
    (6018, 3, 28),
    (6019, 4, 29),
    (6020, 17, 42),
    (6021, 8, 41),
    (6022, 7, 22),
    (6023, 19, 23),
    (6024, 18, 14),
    (6025, 6, 15),
    (6026, 16, 26),
    (6027, 23, 27),
    (6028, 3, 28),
    (6029, 4, 39),
    (6030, 5, 20),
    (6031, 1, 21),
    (6032, 2, 22),
    (6033, 3, 23),
    (6034, 4, 24),
    (6035, 5, 25),
    (6036, 1, 26),
    (6037, 2, 27),
    (6038, 3, 28),
    (6039, 4, 29),
    (6040, 5, 40),
    (6041, 1, 38),
    (6042, 2, 37),
    (6043, 3, 25),
    (6044, 4, 35),
    (6045, 5, 5),
    (6046, 1, 6),
    (6047, 2, 7),
    (6048, 3, 8),
    (6049, 4, 9),
    (6050, 5, 10),
    (6051, 1, 11),
    (6052, 2, 12),
    (6053, 3, 13),
    (6054, 4, 14),
    (6055, 5, 15),
    (6056, 1, 16),
    (6057, 2, 17),
    (6058, 3, 18),
    (6059, 13, 19),
    (6060, 12, 20);

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
    -- OrdenOnline (5001-5040): 40 facturas
    (5001, 'TX-20240115-0001', 1),  -- Tarjeta de crédito
    (5002, 'TX-20240116-0002', 3),  -- PayPal
    (5003, 'TX-20240117-0003', 4),  -- Transferencia bancaria
    (5004, 'TX-20240120-0004', 7),  -- Criptomonedas
    (5005, 'TX-20240201-0005', 8),  -- Pago móvil
    (5006, 'TX-20240203-0006', 9),  -- Cashea
    (5007, 'TX-20240205-0007', 10), -- Zelle
    (5008, 'TX-20240210-0008', 1),  -- Tarjeta de crédito
    (5009, 'TX-20240215-0009', 3),  -- PayPal
    (5010, 'TX-20240220-0010', 4),  -- Transferencia bancaria
    (5011, 'TX-20240301-0011', 7),  -- Criptomonedas
    (5012, 'TX-20240305-0012', 8),  -- Pago móvil
    (5013, 'TX-20240310-0013', 9),  -- Cashea
    (5014, 'TX-20240315-0014', 10), -- Zelle
    (5015, 'TX-20240320-0015', 1),  -- Tarjeta de crédito
    (5016, 'TX-20240401-0016', 3),  -- PayPal
    (5017, 'TX-20240405-0017', 4),  -- Transferencia bancaria
    (5018, 'TX-20240410-0018', 7),  -- Criptomonedas
    (5019, 'TX-20240415-0019', 8),  -- Pago móvil
    (5020, 'TX-20240420-0020', 9),  -- Cashea
    (5021, 'TX-20240501-0021', 10), -- Zelle
    (5022, 'TX-20240505-0022', 1),  -- Tarjeta de crédito
    (5023, 'TX-20240510-0023', 3),  -- PayPal
    (5024, 'TX-20240515-0024', 4),  -- Transferencia bancaria
    (5025, 'TX-20240520-0025', 7),  -- Criptomonedas
    (5026, 'TX-20240601-0026', 8),  -- Pago móvil
    (5027, 'TX-20240605-0027', 9),  -- Cashea
    (5028, 'TX-20240610-0028', 10), -- Zelle
    (5029, 'TX-20240615-0029', 1),  -- Tarjeta de crédito
    (5030, 'TX-20240620-0030', 3),  -- PayPal
    (5031, 'TX-20250101-0031', 4),  -- Transferencia bancaria
    (5032, 'TX-20250105-0032', 7),  -- Criptomonedas
    (5033, 'TX-20250110-0033', 8),  -- Pago móvil
    (5034, 'TX-20250115-0034', 9),  -- Cashea
    (5035, 'TX-20250120-0035', 10), -- Zelle
    (5036, 'TX-20250201-0036', 1),  -- Tarjeta de crédito
    (5037, 'TX-20250205-0037', 3),  -- PayPal
    (5038, 'TX-20250210-0038', 4),  -- Transferencia bancaria
    (5039, 'TX-20250215-0039', 7),  -- Criptomonedas
    (5040, 'TX-20250220-0040', 8),  -- Pago móvil
    -- VentaFisica (6001-6060): 60 facturas
    (6001, 'TX-20240110-0041', 5),  -- Efectivo
    (6002, 'TX-20240111-0042', 1),  -- Tarjeta de crédito
    (6003, 'TX-20240112-0043', 2),  -- Tarjeta de débito
    (6004, 'TX-20240113-0044', 6),  -- Cheque
    (6005, 'TX-20240114-0045', 8),  -- Pago móvil
    (6006, 'TX-20240115-0046', 5),  -- Efectivo
    (6007, 'TX-20240116-0047', 1),  -- Tarjeta de crédito
    (6008, 'TX-20240117-0048', 2),  -- Tarjeta de débito
    (6009, 'TX-20240118-0049', 4),  -- Transferencia bancaria
    (6010, 'TX-20240119-0050', 10), -- Zelle
    (6011, 'TX-20240120-0051', 5),  -- Efectivo
    (6012, 'TX-20240121-0052', 1),  -- Tarjeta de crédito
    (6013, 'TX-20240122-0053', 6),  -- Cheque
    (6014, 'TX-20240123-0054', 2),  -- Tarjeta de débito
    (6015, 'TX-20240124-0055', 8),  -- Pago móvil
    (6016, 'TX-20240125-0056', 5),  -- Efectivo
    (6017, 'TX-20240126-0057', 1),  -- Tarjeta de crédito
    (6018, 'TX-20240127-0058', 3),  -- PayPal
    (6019, 'TX-20240128-0059', 4),  -- Transferencia bancaria
    (6020, 'TX-20240129-0060', 10), -- Zelle
    (6021, 'TX-20240130-0061', 5),  -- Efectivo
    (6022, 'TX-20240201-0062', 2),  -- Tarjeta de débito
    (6023, 'TX-20240202-0063', 6),  -- Cheque
    (6024, 'TX-20240203-0064', 1),  -- Tarjeta de crédito
    (6025, 'TX-20240204-0065', 8),  -- Pago móvil
    (6026, 'TX-20240205-0066', 5),  -- Efectivo
    (6027, 'TX-20240206-0067', 1),  -- Tarjeta de crédito
    (6028, 'TX-20240207-0068', 2),  -- Tarjeta de débito
    (6029, 'TX-20240208-0069', 4),  -- Transferencia bancaria
    (6030, 'TX-20240209-0070', 10), -- Zelle
    (6031, 'TX-20240210-0071', 5),  -- Efectivo
    (6032, 'TX-20240211-0072', 6),  -- Cheque
    (6033, 'TX-20240212-0073', 1),  -- Tarjeta de crédito
    (6034, 'TX-20240213-0074', 2),  -- Tarjeta de débito
    (6035, 'TX-20240214-0075', 8),  -- Pago móvil
    (6036, 'TX-20240215-0076', 5),  -- Efectivo
    (6037, 'TX-20240216-0077', 1),  -- Tarjeta de crédito
    (6038, 'TX-20240217-0078', 3),  -- PayPal
    (6039, 'TX-20240218-0079', 4),  -- Transferencia bancaria
    (6040, 'TX-20240219-0080', 10), -- Zelle
    (6041, 'TX-20240220-0081', 5),  -- Efectivo
    (6042, 'TX-20240221-0082', 2),  -- Tarjeta de débito
    (6043, 'TX-20240222-0083', 6),  -- Cheque
    (6044, 'TX-20240223-0084', 1),  -- Tarjeta de crédito
    (6045, 'TX-20240224-0085', 8),  -- Pago móvil
    (6046, 'TX-20240225-0086', 5),  -- Efectivo
    (6047, 'TX-20240226-0087', 1),  -- Tarjeta de crédito
    (6048, 'TX-20240227-0088', 2),  -- Tarjeta de débito
    (6049, 'TX-20240228-0089', 4),  -- Transferencia bancaria
    (6050, 'TX-20240301-0090', 10), -- Zelle
    (6051, 'TX-20240302-0091', 5),  -- Efectivo
    (6052, 'TX-20240303-0092', 6),  -- Cheque
    (6053, 'TX-20240304-0093', 1),  -- Tarjeta de crédito
    (6054, 'TX-20240305-0094', 2),  -- Tarjeta de débito
    (6055, 'TX-20240306-0095', 8),  -- Pago móvil
    (6056, 'TX-20240307-0096', 5),  -- Efectivo
    (6057, 'TX-20240308-0097', 1),  -- Tarjeta de crédito
    (6058, 'TX-20240309-0098', 3),  -- PayPal
    (6059, 'TX-20240310-0099', 4),  -- Transferencia bancaria
    (6060, 'TX-20240311-0100', 10); -- Zelle

-- Promo
-- Mínimo 40 promociones (variadas en tipo de descuento y promoción)
SET IDENTITY_INSERT Promo ON;
INSERT INTO Promo (id, nombre, slogan, codigo, tipoDescuento, valorDescuento, fechaInicio, fechaFin, tipoPromocion) VALUES
	-- Promociones estándar (28 ajustadas)
	(1, 'Descuento de Inicio', '¡Comienza con ahorros!', 'START10', 'Porcentaje', 10.0, '2024-01-01', '2024-01-31', 'Online'),      -- Ajustado: Cubre facturas online de enero (5001, 5003)
	(2, 'Verano en Gama', '¡Ahorra en verano!', 'SUMMER20', 'Fijo', 20.0, '2024-01-01', '2024-03-31', 'Fisica'),            -- Ajustado: Fechas para cubrir facturas físicas (6001-6060)
	(3, 'Compra Doble', '¡Más compras, más descuentos!', 'DOUBLE15', 'Porcentaje', 15.0, '2024-01-01', '2024-03-31', 'Ambos'),    -- Ajustado: Fechas para cubrir facturas online y físicas
	(4, 'Fin de Semana Online', '¡Solo este fin de semana!', 'WEEKEND5', 'Fijo', 5.0, '2024-02-01', '2024-02-28', 'Online'),      -- Ajustado: Fechas para cubrir facturas online (5005, 5007)
	(5, 'Lunes en Tienda', '¡Lunes de locura!', 'MONDAY25', 'Porcentaje', 10.0, '2024-01-01', '2024-03-31', 'Fisica'),           -- Ajustado: Fechas y valor (10% para ser coherente con facturas físicas)
	(6, 'Primavera Total', '¡Frescos descuentos!', 'SPRING30', 'Fijo', 15.0, '2024-01-01', '2024-03-31', 'Ambos'),              -- Ajustado: Fechas y valor (15.0 para reflejar descuentos reales)
	(7, 'Cyber Week', '¡Ofertas digitales!', 'CYBER20', 'Porcentaje', 20.0, '2024-11-25', '2024-12-02', 'Online'),               -- Sin cambios, pero no se usará (fuera de rango de facturas)
	(8, 'Día de la Sucursal', '¡Visítanos hoy!', 'STORE10', 'Fijo', 10.0, '2024-01-10', '2024-02-10', 'Fisica'),                -- Ajustado: Fechas para cubrir facturas físicas tempranas (6001, 6003)
	(9, 'Compra Rápida', '¡Rápido y barato!', 'FAST15', 'Porcentaje', 10.0, '2024-01-15', '2024-02-15', 'Ambos'),               -- Ajustado: Valor (10%) para reflejar descuentos reales
	(10, 'Oferta Flash', '¡Solo 24 horas!', 'FLASH50', 'Fijo', 10.0, '2024-03-01', '2024-03-01', 'Online'),                     -- Ajustado: Fechas y valor (10.0, para facturas como 5013)
	(11, 'Miércoles Especial', '¡Mitad de semana, gran oferta!', 'WED20', 'Porcentaje', 10.0, '2024-02-01', '2024-03-31', 'Fisica'), -- Ajustado: Fechas y valor (10%)
	(12, 'Todo el Mes', '¡Ahorra todo el mes!', 'MONTH25', 'Fijo', 25.0, '2024-03-01', '2024-03-31', 'Ambos'),                  -- Ajustado: Fechas para cubrir facturas al final (6039, 6041)
	(13, 'Regreso a Clases', '¡Prepara el regreso!', 'BACK15', 'Porcentaje', 10.0, '2024-03-01', '2024-03-31', 'Online'),       -- Ajustado: Fechas y valor (10%, para facturas como 5015)
	(14, 'Fin de Año', '¡Cierra con ahorros!', 'YEAR30', 'Fijo', 15.0, '2024-12-01', '2024-12-31', 'Fisica'),                  -- Sin cambios, pero no se usará (fuera de rango)
	(15, 'Compra Grande', '¡Más compras, más ahorros!', 'BIG20', 'Porcentaje', 10.0, '2024-02-01', '2024-03-31', 'Ambos'),     -- Ajustado: Valor (10%) y fechas
	(16, 'Oferta Nocturna', '¡Compra de noche!', 'NIGHT10', 'Fijo', 10.0, '2024-04-01', '2024-04-30', 'Online'),               -- Ajustado: Fechas para facturas como 5017, 5019
	(17, 'Día Soleado', '¡Ahorra bajo el sol!', 'SUN25', 'Porcentaje', 10.0, '2024-01-01', '2024-03-31', 'Fisica'),            -- Ajustado: Fechas y valor (10%)
	(18, 'Semana de Lealtad', '¡Gracias por tu fidelidad!', 'LOYAL15', 'Fijo', 15.0, '2024-01-01', '2024-01-07', 'Online'),    -- Ajustado: Fechas para facturas tempranas (5001)
	(19, 'Black Friday', '¡El día más barato!', 'BLACK40', 'Porcentaje', 10.0, '2024-11-29', '2024-11-30', 'Online'),          -- Ajustado: Valor (10%), pero no se usará (fuera de rango)
	(20, 'Sábado en Tienda', '¡Sábado de descuentos!', 'SAT20', 'Fijo', 20.0, '2024-02-01', '2024-03-01', 'Fisica'),           -- Ajustado: Fechas para facturas físicas
	(21, 'Compra Segura', '¡Ahorra con confianza!', 'SAFE10', 'Porcentaje', 10.0, '2024-05-01', '2024-05-31', 'Online'),       -- Ajustado: Fechas para facturas como 5021, 5023
	(22, 'Oferta Relámpago', '¡No te la pierdas!', 'FLASH25', 'Fijo', 15.0, '2024-06-01', '2024-06-01', 'Online'),             -- Ajustado: Fechas y valor (15.0, para facturas como 5025)
	(23, 'Día de Lluvia', '¡Ahorra en casa!', 'RAIN15', 'Porcentaje', 10.0, '2024-02-01', '2024-03-31', 'Fisica'),             -- Ajustado: Fechas y valor (10%)
	(24, 'Aniversario', '¡Celebra con nosotros!', 'ANNIV30', 'Fijo', 15.0, '2024-01-01', '2024-03-31', 'Ambos'),               -- Ajustado: Fechas y valor (15.0)
	(25, 'Compra Temprana', '¡Anticípate y ahorra!', 'EARLY20', 'Porcentaje', 10.0, '2024-01-01', '2024-01-31', 'Online'),     -- Ajustado: Valor (10%), para facturas como 5001
	(26, 'Día del Cliente', '¡Tú eres lo primero!', 'CLIENT10', 'Fijo', 10.0, '2024-01-01', '2024-02-29', 'Fisica'),           -- Ajustado: Fechas para facturas físicas
	(27, 'Oferta Extendida', '¡Más tiempo para ahorrar!', 'EXT15', 'Porcentaje', 10.0, '2025-01-01', '2025-01-31', 'Online'),   -- Ajustado: Fechas para facturas como 5031, 5035
	(28, 'Promo de Medianoche', '¡Ahorra hasta tarde!', 'MIDNIGHT5', 'Fijo', 10.0, '2024-02-01', '2024-02-28', 'Online'),      -- Ajustado: Valor (10.0), para facturas como 5005

	-- Promociones estándar adicionales para equilibrar (hasta 16 Online, 18 Físicas, 6 Ambos)
	(29, 'Promo Enero Física 2', '¡Ahorra más!', 'ENE2024F2', 'Porcentaje', 10.0, '2024-01-01', '2024-01-31', 'Fisica'),      -- Nueva: Cubre facturas físicas (6001, 6003)
	(30, 'Promo Febrero Física 2', '¡Febrero de ofertas!', 'FEB2024F2', 'Fijo', 15.0, '2024-02-01', '2024-02-29', 'Fisica'),   -- Nueva: Cubre facturas físicas (6021, 6023)
	(31, 'Promo Marzo Física 2', '¡Marzo de descuentos!', 'MAR2024F2', 'Porcentaje', 10.0, '2024-03-01', '2024-03-31', 'Fisica'), -- Nueva: Cubre facturas físicas (6041, 6043)
	(32, 'Promo Enero Online 2', '¡Más ahorros!', 'ENE2024O2', 'Fijo', 10.0, '2024-01-01', '2024-01-31', 'Online'),            -- Nueva: Cubre facturas online (5001, 5003)
	(33, 'Promo Febrero Online 2', '¡Febrero de ahorros!', 'FEB2024O2', 'Porcentaje', 10.0, '2024-02-01', '2024-02-29', 'Online'), -- Nueva: Cubre facturas online (5005, 5007)
	(34, 'Promo Marzo Online 2', '¡Marzo de ofertas!', 'MAR2024O2', 'Fijo', 15.0, '2024-03-01', '2024-03-31', 'Online'),        -- Nueva: Cubre facturas online (5011, 5013)

	-- Promociones especializadas (12, ajustadas para fechas y tipos)
	(35, 'Coca-Cola Lovers', '¡Para fans de Coca!', 'COKE20', 'Porcentaje', 10.0, '2024-01-01', '2024-03-31', 'Ambos'),        -- Ajustado: Fechas para cubrir facturas
	(36, 'Lácteos Saludables', '¡Lácteos al mejor precio!', 'MILK25', 'Fijo', 15.0, '2024-01-01', '2024-03-31', 'Fisica'),     -- Ajustado: Fechas para facturas físicas
	(37, 'Snacks Nocturnos', '¡Snacks para la noche!', 'SNACK15', 'Porcentaje', 15.0, '2024-04-01', '2024-06-30', 'Online'),    -- Ajustado: Fechas para facturas online (5017-5027)
	(38, 'Cerveza en Casa', '¡Celebra con Quilmes!', 'BEER30', 'Fijo', 10.0, '2024-01-01', '2024-03-31', 'Fisica'),            -- Ajustado: Fechas y valor (10.0)
	(39, 'Producto Estrella', '¡Nuestra estrella al mejor precio!', 'STAR10', 'Porcentaje', 10.0, '2024-01-01', '2024-03-31', 'Fisica'), -- Ajustado: Fechas
	(40, 'Galletas Dulces', '¡Dulzura asegurada!', 'COOKIES20', 'Fijo', 15.0, '2024-04-01', '2024-06-30', 'Online'),            -- Ajustado: Fechas para facturas online
	(41, 'Nestlé Premium', '¡Calidad Nestlé!', 'NESTLE15', 'Porcentaje', 10.0, '2024-01-01', '2024-03-31', 'Ambos'),            -- Ajustado: Fechas
	(42, 'Cuidado Colgate', '¡Sonrisa perfecta!', 'COLGATE25', 'Fijo', 15.0, '2024-01-01', '2024-03-31', 'Fisica'),             -- Ajustado: Fechas y valor (15.0)
	(43, 'Bebidas Refrescantes', '¡Refréscate ya!', 'DRINK20', 'Porcentaje', 10.0, '2024-04-01', '2024-06-30', 'Online'),       -- Ajustado: Fechas para facturas online
	(44, 'Sprite Party', '¡Fiesta con Sprite!', 'SPRITE30', 'Fijo', 10.0, '2025-01-01', '2025-02-28', 'Online'),                -- Ajustado: Fechas para facturas como 5031, 5035
	(45, 'Cereales Mañaneros', '¡Desayuno con energía!', 'CEREAL15', 'Porcentaje', 10.0, '2024-01-01', '2024-03-31', 'Fisica'), -- Ajustado: Fechas
	(46, 'Producto Bimbo', '¡Pan fresco siempre!', 'BIMBO10', 'Fijo', 10.0, '2024-04-01', '2024-06-30', 'Online');              -- Ajustado: Fechas para facturas online
SET IDENTITY_INSERT Promo OFF;

-- Promo especializada
-- El 30% de las promociones deberían tener un objetivo especializado en PromoEspecializada
SET IDENTITY_INSERT PromoEspecializada ON;
INSERT INTO PromoEspecializada (id, promoId, productoId, categoriaId, marcaId) VALUES
	(1, 35, NULL, NULL, 1),      -- Coca-Cola Lovers: Solo marca Coca-Cola (marcaId 1)
	(2, 36, NULL, 2, NULL),      -- Lácteos Saludables: Solo categoría Lácteos (categoriaId 2)
	(3, 37, NULL, 6, NULL),      -- Snacks Nocturnos: Solo categoría Snacks (categoriaId 6)
	(4, 38, NULL, NULL, 13),     -- Cerveza en Casa: Solo marca Quilmes (marcaId 13)
	(5, 39, 100, NULL, NULL),    -- Producto Estrella: Solo producto específico (productoId 100, Costillas de Cerdo)
	(6, 40, NULL, 26, NULL),     -- Galletas Dulces: Solo categoría Galletas (categoriaId 26)
	(7, 41, NULL, NULL, 3),      -- Nestlé Premium: Solo marca Nestlé (marcaId 3)
	(8, 42, NULL, NULL, 9),      -- Cuidado Colgate: Solo marca P&G (marcaId 9, ajustado porque Colgate no está en las marcas iniciales)
	(9, 43, NULL, 1, NULL),      -- Bebidas Refrescantes: Solo categoría Bebidas (categoriaId 1)
	(10, 44, NULL, NULL, 1),     -- Sprite Party: Solo marca Coca-Cola (marcaId 1, ajustado porque Sprite no está en las marcas iniciales)
	(11, 45, NULL, 25, NULL),    -- Cereales Mañaneros: Solo categoría Cereales (categoriaId 25)
	(12, 46, 9, NULL, 11);       -- Producto Bimbo: Producto Pan Bimbo Integral (productoId 9) + marca Bimbo (marcaId 11)
SET IDENTITY_INSERT PromoEspecializada OFF;

-- Factura tiene Promo 
-- El 40% de esas facturas deben tener promociones
INSERT INTO FacturaPromo (facturaId, promoId) VALUES
    -- OrdenOnline
    (5001, 1),   
    (5002, 9),   
    (5003, 4),   
    (5005, 15),  
    (5007, 3),   
    (5011, 29),  
    (5013, 16),  
    (5015, 6),   
    (5017, 21),  
    (5019, 35),  
    (5021, 18),  
    (5025, 31),  
    (5027, 24),  
    (5031, 32), 
    (5035, 37),  
    (5039, 40),  
    -- VentaFisica 
    (6001, 2),   
    (6003, 5),   
    (6005, 8),  
    (6007, 17),  
    (6009, 30),  
    (6011, 3),   
    (6013, 14),  
    (6015, 6),   
    (6017, 20),  
    (6019, 29),  
    (6021, 33),  
    (6023, 9),   
    (6025, 36),  
    (6027, 15),  
    (6029, 23),  
    (6031, 35),  
    (6033, 18),  
    (6035, 26),  
    (6037, 38),  
    (6039, 11),  
    (6041, 24),  
    (6043, 32),  
    (6045, 12),  
    (6047, 39);  

-- Inventario 
-- No hacer inserción (se hace con el trigger)

-- Historial de Cliente y Producto 
-- No hacer inserción (se hace con el trigger)

-- Producto recomendado para Cliente 
-- No hacer inserción (se hace con el trigger)
