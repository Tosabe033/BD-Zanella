USE zanellaventasbuenosaires;
DROP VIEW IF EXISTS Vista_Resumen_Ventas_Clientes;
CREATE VIEW Vista_Resumen_Ventas_Clientes AS
SELECT 
    c.id_cliente,
    CONCAT(c.nombre, ' ', c.apellido) AS cliente,
    c.email,
    c.ciudad,
    c.provincia,
    SUM(CASE WHEN v.tipo_venta = 'Motovehiculo' THEN v.total ELSE 0 END) AS total_motovehiculos,
    SUM(CASE WHEN v.tipo_venta = 'Repuesto' THEN v.total ELSE 0 END) AS total_repuestos,
    SUM(v.total) AS total_compras
FROM 
    Clientes c
LEFT JOIN Ventas v ON c.id_cliente = v.id_cliente
GROUP BY 
    c.id_cliente, c.nombre, c.apellido, c.email, c.ciudad, c.provincia;