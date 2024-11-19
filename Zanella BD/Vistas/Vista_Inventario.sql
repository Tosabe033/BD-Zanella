USE zanellaventasbuenosaires;
DROP VIEW IF EXISTS Vista_Resumen_Ventas_Clientes;
CREATE VIEW Vista_Inventario AS
SELECT 
    'Motovehiculo' AS tipo_producto,
    m.marca AS descripcion,
    CONCAT(m.modelo, ' (', m.cilindrada, 'cc)') AS detalles,
    m.precio AS precio_unitario,
    m.stock AS stock_disponible
FROM 
    Motovehiculos m
UNION ALL
SELECT 
    'Repuesto' AS tipo_producto,
    r.descripcion,
    CONCAT('Compatible con ID Motovehiculo: ', r.id_motovehiculo) AS detalles,
    r.precio AS precio_unitario,
    r.stock AS stock_disponible
FROM 
    Repuestos r;
