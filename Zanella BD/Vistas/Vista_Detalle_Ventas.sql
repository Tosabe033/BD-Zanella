USE zanellaventasbuenosaires;
-- Eliminar la vista si ya existe
DROP VIEW IF EXISTS Vista_Detalle_Ventas;

-- Crear la nueva vista
CREATE VIEW Vista_Detalle_Ventas AS
SELECT 
    v.id_venta,
    CONCAT(c.nombre, ' ', c.apellido) AS cliente,
    v.fecha_venta,
    'Motovehiculo' AS tipo_producto,
    m.marca AS descripcion,
    dvm.cantidad,
    dvm.precio_unitario,
    dvm.subtotal
FROM 
    Ventas v
JOIN Clientes c ON v.id_cliente = c.id_cliente
JOIN Detalle_ventas_motovehiculos dvm ON v.id_venta = dvm.id_venta
JOIN Motovehiculos m ON dvm.id_motovehiculo = m.id_motovehiculo
UNION ALL
SELECT 
    v.id_venta,
    CONCAT(c.nombre, ' ', c.apellido) AS cliente,
    v.fecha_venta,
    'Repuesto' AS tipo_producto,
    r.descripcion,
    dvr.cantidad,
    dvr.precio_unitario,
    dvr.subtotal
FROM 
    Ventas v
JOIN Clientes c ON v.id_cliente = c.id_cliente
JOIN Detalle_ventas_repuestos dvr ON v.id_venta = dvr.id_venta
JOIN Repuestos r ON dvr.id_repuesto = r.id_repuesto;
