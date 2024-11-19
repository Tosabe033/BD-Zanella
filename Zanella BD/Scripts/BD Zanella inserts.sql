-- Insertar en la tabla Clientes
INSERT INTO Clientes (nombre, apellido, dni, direccion, ciudad, telefono, email, fecha_registro) VALUES
('Juan', 'Pérez', '30754098', 'Calle Falsa 123', 'La Plata', '2214501234', 'juan.perez@gmail.com', '2023-01-15'),
('María', 'García', '29765098', 'Av. Libertador 999', 'Mar del Plata', '2236601122', 'maria.garcia@gmail.com', '2023-02-20'),
('Carlos', 'Ramirez', '40765045', 'Av. Mitre 456', 'San Fernando', '1134504567', 'carlos.ramirez@yahoo.com', '2023-03-10'),
('Lucía', 'González', '29756044', 'Calle 9 de Julio 785', 'Bahía Blanca', '2914557890', 'lucia.gonzalez@hotmail.com', '2023-06-30'),
('Pedro', 'Mendez', '30758098', 'Av. Centenario 564', 'Tigre', '1145678901', 'pedro.mendez@gmail.com', '2023-05-05');

-- Insertar en la tabla Motovehiculos
INSERT INTO Motovehiculos (marca, modelo, año, cilindrada, precio, stock) VALUES
('Zanella', 'ZB 110', 2023, 110, 200000, 20),
('Zanella', 'RX 150', 2023, 150, 300000, 15),
('Zanella', 'Gforce 200', 2023, 200, 350000, 10),
('Zanella', 'RX 200', 2022, 200, 400000, 8),
('Zanella', 'ZR 250', 2023, 250, 500000, 5),
('Zanella', 'Styler Cruiser 150', 2023, 150, 380000, 7);

-- Insertar en la tabla Repuestos
INSERT INTO Repuestos (descripcion, id_motovehiculo, precio, stock) VALUES
('Kit transmisión ZB 110', 1, 2500, 50),
('Filtro de aceite RX 150', 2, 1500, 30),
('Cubierta delantera Gforce 200', 3, 9000, 20),
('Manillar RX 200', 4, 6000, 15),
('Kit frenos ZR 250', 5, 8500, 10),
('Escape Styler Cruiser 150', 6, 11000, 8);

-- Insertar en la tabla Ventas
INSERT INTO Ventas (id_cliente, fecha_venta, total, tipo_venta) VALUES
(1, '2023-07-15', 200000, 'Motovehiculo'),
(2, '2023-07-20', 450000, 'Motovehiculo'),
(3, '2023-08-01', 7000, 'Repuesto'),
(4, '2023-08-10', 250000, 'Motovehiculo'),
(5, '2023-08-15', 5000, 'Repuesto');

-- Insertar en la tabla Detalle_ventas_motovehiculos
INSERT INTO Detalle_ventas_motovehiculos (id_venta, id_motovehiculo, cantidad, precio_unitario) VALUES
(1, 1, 1, 200000),
(2, 5, 1, 450000),
(4, 3, 1, 250000);

-- Insertar en la tabla Detalle_ventas_repuestos
INSERT INTO Detalle_ventas_repuestos (id_venta, id_repuesto, cantidad, precio_unitario) VALUES
(3, 2, 2, 1500),
(5, 1, 3, 2500),
(5, 4, 1, 6000);

-- Insertar en la tabla Compras
INSERT INTO Compras (id_repuesto, fecha_compra, cantidad, precio_unitario) VALUES
(1, '2023-07-01', 100, 2200),
(2, '2023-07-05', 50, 1200),
(3, '2023-08-10', 30, 8500),
(4, '2023-08-12', 40, 5600),
(6, '2023-09-10', 50, 10000);

-- Insertar en la tabla Facturas
INSERT INTO Facturas (id_venta, fecha_emision, total, metodo_pago) VALUES
(1, '2023-07-16', 200000, 'Efectivo'),
(2, '2023-07-21', 450000, 'Tarjeta'),
(3, '2023-08-02', 3000, 'Transferencia'),
(4, '2023-08-11', 250000, 'Efectivo'),
(5, '2023-08-16', 5000, 'Tarjeta');
