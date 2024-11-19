-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS ZanellaVentasBuenosAires;
USE ZanellaVentasBuenosAires;

-- Tabla de clientes
CREATE TABLE Clientes (
    id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellido VARCHAR(100) NOT NULL,
    dni VARCHAR(20) UNIQUE NOT NULL,
    direccion VARCHAR(255) NOT NULL,
    ciudad VARCHAR(100) NOT NULL,
    provincia VARCHAR(100) DEFAULT 'Buenos Aires',
    telefono VARCHAR(20),
    email VARCHAR(100),
    fecha_registro DATE NOT NULL
);

-- Tabla de motovehículos
CREATE TABLE Motovehiculos (
    id_motovehiculo INT AUTO_INCREMENT PRIMARY KEY,
    marca VARCHAR(50) NOT NULL,
    modelo VARCHAR(100) NOT NULL,
    año INT NOT NULL,
    cilindrada INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL
);

-- Tabla de repuestos
CREATE TABLE Repuestos (
    id_repuesto INT AUTO_INCREMENT PRIMARY KEY,
    descripcion VARCHAR(255) NOT NULL,
    id_motovehiculo INT NOT NULL,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    FOREIGN KEY (id_motovehiculo) REFERENCES Motovehiculos(id_motovehiculo)
);

-- Tabla de ventas
CREATE TABLE Ventas (
    id_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT NOT NULL,
    fecha_venta DATE NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    tipo_venta ENUM('Motovehiculo', 'Repuesto') NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES Clientes(id_cliente)
);

-- Tabla detalle de ventas de motovehículos
CREATE TABLE Detalle_ventas_motovehiculos (
    id_detalle_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_venta INT NOT NULL,
    id_motovehiculo INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    subtotal DECIMAL(10, 2) AS (cantidad * precio_unitario) STORED,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
    FOREIGN KEY (id_motovehiculo) REFERENCES Motovehiculos(id_motovehiculo)
);

-- Tabla detalle de ventas de repuestos
CREATE TABLE Detalle_ventas_repuestos (
    id_detalle_venta INT AUTO_INCREMENT PRIMARY KEY,
    id_venta INT NOT NULL,
    id_repuesto INT NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    subtotal DECIMAL(10, 2) AS (cantidad * precio_unitario) STORED,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta),
    FOREIGN KEY (id_repuesto) REFERENCES Repuestos(id_repuesto)
);

-- Tabla de compras de repuestos
CREATE TABLE Compras (
    id_compra INT AUTO_INCREMENT PRIMARY KEY,
    id_repuesto INT NOT NULL,
    fecha_compra DATE NOT NULL,
    cantidad INT NOT NULL,
    precio_unitario DECIMAL(10, 2) NOT NULL,
    subtotal DECIMAL(10, 2) AS (cantidad * precio_unitario) STORED,
    FOREIGN KEY (id_repuesto) REFERENCES Repuestos(id_repuesto)
);

-- Tabla de facturas
CREATE TABLE Facturas (
    id_factura INT AUTO_INCREMENT PRIMARY KEY,
    id_venta INT NOT NULL,
    fecha_emision DATE NOT NULL,
    total DECIMAL(10, 2) NOT NULL,
    metodo_pago ENUM('Efectivo', 'Tarjeta', 'Transferencia') NOT NULL,
    FOREIGN KEY (id_venta) REFERENCES Ventas(id_venta)
);
