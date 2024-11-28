USE zanellaventasbuenosaires;

-- 1
-- Consulta en lenguaje natural: Mostrar todos los clientes registrados.
SELECT * FROM Clientes;
-- Respuesta: Muestra todos los clientes en la base de datos.

-- 2
-- Consulta en lenguaje natural: Contar el número total de motovehículos en stock.
SELECT COUNT(*) AS total_motovehiculos FROM Motovehiculos;
-- Respuesta: Devuelve el número total de motovehículos en stock.

-- 3
-- Consulta en lenguaje natural: Listar todos los repuestos para un motovehículo específico.
SELECT * FROM Repuestos WHERE id_motovehiculo = 1;
-- Respuesta: Muestra todos los repuestos para el motovehículo con id 1.

-- 4
-- Consulta en lenguaje natural: Calcular el valor total de ventas realizadas.
SELECT SUM(total) AS valor_total_ventas FROM Ventas;
-- Respuesta: Muestra el valor total de ventas realizadas.

-- 5
-- Consulta en lenguaje natural: Listar los datos de todos los motovehículos con un precio mayor a $10,000.
SELECT * FROM Motovehiculos WHERE precio > 10000;
-- Respuesta: Muestra todos los motovehículos con un precio mayor a $10,000.

-- 6
-- Consulta en lenguaje natural: Obtener el número total de ventas realizadas en el último mes.
SELECT COUNT(*) AS total_ventas_ultimo_mes FROM Ventas WHERE fecha_venta >= CURDATE() - INTERVAL 1 MONTH;
-- Respuesta: Muestra el número total de ventas realizadas en el último mes.

-- 7
-- Consulta en lenguaje natural: Listar todos los clientes registrados en el último año.
SELECT * FROM Clientes WHERE fecha_registro >= CURDATE() - INTERVAL 1 YEAR;
-- Respuesta: Muestra todos los clientes registrados en el último año.

-- 8
-- Consulta en lenguaje natural: Obtener la suma total de las ventas de motovehículos.
SELECT SUM(subtotal) AS total_ventas_motovehiculos FROM Detalle_ventas_motovehiculos;
-- Respuesta: Muestra la suma total de ventas de motovehículos.

-- 9
-- Consulta en lenguaje natural: Calcular la cantidad total de repuestos vendidos.
SELECT SUM(cantidad) AS total_repuestos_vendidos FROM Detalle_ventas_repuestos;
-- Respuesta: Muestra la cantidad total de repuestos vendidos.

-- 10
-- Consulta en lenguaje natural: Listar los motovehículos que se encuentran fuera de stock.
SELECT * FROM Motovehiculos WHERE stock = 0;
-- Respuesta: Muestra los motovehículos que están fuera de stock.

-- 11
-- Consulta en lenguaje natural: Obtener el total de ventas realizadas por cada cliente.
SELECT id_cliente, SUM(total) AS total_ventas_cliente FROM Ventas GROUP BY id_cliente;
-- Respuesta: Muestra el total de ventas de cada cliente.

-- 12
-- Consulta en lenguaje natural: Listar todos los repuestos que tengan más de 20 unidades en stock.
SELECT * FROM Repuestos WHERE stock > 20;
-- Respuesta: Muestra todos los repuestos con más de 20 unidades en stock.

-- 13
-- Consulta en lenguaje natural: Contar el número de clientes en la base de datos.
SELECT COUNT(*) AS total_clientes FROM Clientes;
-- Respuesta: Devuelve el número total de clientes registrados.

-- 14
-- Consulta en lenguaje natural: Mostrar el detalle de la última venta realizada.
SELECT * FROM Ventas ORDER BY fecha_venta DESC LIMIT 1;
-- Respuesta: Muestra el detalle de la última venta.

-- 15
-- Consulta en lenguaje natural: Calcular el promedio de ventas de motovehículos por venta.
SELECT AVG(subtotal) AS promedio_ventas_motovehiculo FROM Detalle_ventas_motovehiculos;
-- Respuesta: Muestra el promedio de ventas de motovehículos por venta.

-- 16
-- Consulta en lenguaje natural: Listar los clientes que viven en la ciudad de "Buenos Aires".
SELECT * FROM Clientes WHERE ciudad = 'Buenos Aires';
-- Respuesta: Muestra los clientes de Buenos Aires.

-- 17
-- Consulta en lenguaje natural: Obtener el monto total de todas las facturas.
SELECT SUM(total) AS total_facturas FROM Facturas;
-- Respuesta: Muestra el monto total de todas las facturas.

-- 18
-- Consulta en lenguaje natural: Contar el número de compras de repuestos en el último trimestre.
SELECT COUNT(*) AS total_compras_trimestre FROM Compras WHERE fecha_compra >= CURDATE() - INTERVAL 3 MONTH;
-- Respuesta: Muestra el número de compras de repuestos en el último trimestre.

-- 19
-- Consulta en lenguaje natural: Mostrar todos los detalles de ventas de motovehículos con una cantidad mayor a 5.
SELECT * FROM Detalle_ventas_motovehiculos WHERE cantidad > 5;
-- Respuesta: Muestra los detalles de ventas de motovehículos con una cantidad superior a 5.

-- 20
-- Consulta en lenguaje natural: Listar todos los métodos de pago utilizados en las facturas.
SELECT DISTINCT metodo_pago FROM Facturas;
-- Respuesta: Muestra todos los métodos de pago utilizados en las facturas.

-- 21
-- Consulta en lenguaje natural: Obtener el precio promedio de los motovehículos.
SELECT AVG(precio) AS promedio_precio_motovehiculo FROM Motovehiculos;
-- Respuesta: Muestra el precio promedio de los motovehículos.

-- 22
-- Consulta en lenguaje natural: Calcular el total de ventas de repuestos en el último año.
SELECT SUM(subtotal) AS total_ventas_repuestos FROM Detalle_ventas_repuestos WHERE id_venta IN (SELECT id_venta FROM Ventas WHERE fecha_venta >= CURDATE() - INTERVAL 1 YEAR);
-- Respuesta: Muestra el total de ventas de repuestos en el último año.

-- 23
-- Consulta en lenguaje natural: Listar los datos de las compras de repuestos con una cantidad superior a 50.
SELECT * FROM Compras WHERE cantidad > 50;
-- Respuesta: Muestra las compras de repuestos con una cantidad superior a 50.

-- 24
-- Consulta en lenguaje natural: Mostrar el total de ventas de cada tipo (Motovehículo o Repuesto).
SELECT tipo_venta, SUM(total) AS total_por_tipo FROM Ventas GROUP BY tipo_venta;
-- Respuesta: Muestra el total de ventas por tipo de producto.

-- 25
-- Consulta en lenguaje natural: Listar los motovehículos de la marca "Honda".
SELECT * FROM Motovehiculos WHERE marca = 'Honda';
-- Respuesta: Muestra todos los motovehículos de la marca Honda.

-- 26
-- Consulta en lenguaje natural: Contar el número de ventas en efectivo realizadas.
SELECT COUNT(*) AS ventas_efectivo FROM Facturas WHERE metodo_pago = 'Efectivo';
-- Respuesta: Muestra el número de ventas realizadas en efectivo.

-- 27
-- Consulta en lenguaje natural: Calcular el precio total de repuestos en stock.
SELECT SUM(precio * stock) AS total_valor_stock_repuestos FROM Repuestos;
-- Respuesta: Muestra el precio total de los repuestos en stock.

-- 28
-- Consulta en lenguaje natural: Listar los clientes que han comprado motovehículos y repuestos.
SELECT DISTINCT Clientes.id_cliente, Clientes.nombre, Clientes.apellido
FROM Clientes
JOIN Ventas AS v1 ON Clientes.id_cliente = v1.id_cliente AND v1.tipo_venta = 'Motovehiculo'
JOIN Ventas AS v2 ON Clientes.id_cliente = v2.id_cliente AND v2.tipo_venta = 'Repuesto';
-- Respuesta: Muestra los clientes que compraron motovehículos y repuestos.

-- 29
-- Consulta en lenguaje natural: Listar los repuestos asociados a motovehículos del año 2023.
SELECT Repuestos.* FROM Repuestos JOIN Motovehiculos ON Repuestos.id_motovehiculo = Motovehiculos.id_motovehiculo WHERE Motovehiculos.año = 2023;
-- Respuesta: Muestra los repuestos de motovehículos fabricados en 2023.

-- 30
-- Consulta en lenguaje natural: Contar el número de clientes únicos que compraron repuestos.
SELECT COUNT(DISTINCT id_cliente) AS clientes_unicos_repuestos FROM Ventas WHERE tipo_venta = 'Repuesto';
-- Respuesta: Muestra el número de clientes únicos que compraron repuestos.

-- 31
-- Consulta en lenguaje natural: Obtener el total de ingresos generados por la venta de motovehículos en el último semestre.
SELECT SUM(subtotal) AS total_ingresos_motovehiculos FROM Detalle_ventas_motovehiculos 
JOIN Ventas ON Detalle_ventas_motovehiculos.id_venta = Ventas.id_venta 
WHERE Ventas.fecha_venta >= CURDATE() - INTERVAL 6 MONTH;
-- Respuesta: Muestra el total de ingresos de la venta de motovehículos en el último semestre.

-- 32
-- Consulta en lenguaje natural: Listar los detalles de ventas de repuestos para un cliente específico.
SELECT Detalle_ventas_repuestos.* 
FROM Detalle_ventas_repuestos 
JOIN Ventas ON Detalle_ventas_repuestos.id_venta = Ventas.id_venta 
WHERE Ventas.id_cliente = 1;
-- Respuesta: Muestra los detalles de ventas de repuestos del cliente con id 1.

-- 33
-- Consulta en lenguaje natural: Mostrar las ventas realizadas en el mes de enero de cualquier año.
SELECT * FROM Ventas WHERE MONTH(fecha_venta) = 1;
-- Respuesta: Muestra las ventas realizadas en enero.

-- 34
-- Consulta en lenguaje natural: Calcular el valor total del stock de motovehículos.
SELECT SUM(precio * stock) AS valor_total_stock_motovehiculos FROM Motovehiculos;
-- Respuesta: Muestra el valor total del stock de motovehículos.

-- 35
-- Consulta en lenguaje natural: Listar los motovehículos con cilindrada mayor a 250 cc.
SELECT * FROM Motovehiculos WHERE cilindrada > 250;
-- Respuesta: Muestra todos los motovehículos con cilindrada superior a 250 cc.

-- 36
-- Consulta en lenguaje natural: Contar el número total de repuestos en la base de datos.
SELECT COUNT(*) AS total_repuestos FROM Repuestos;
-- Respuesta: Muestra el número total de repuestos en la base de datos.

-- 37
-- Consulta en lenguaje natural: Listar los clientes que realizaron compras en los últimos tres meses.
SELECT DISTINCT Clientes.* FROM Clientes 
JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente 
WHERE Ventas.fecha_venta >= CURDATE() - INTERVAL 3 MONTH;
-- Respuesta: Muestra los clientes que compraron en los últimos tres meses.

-- 38
-- Consulta en lenguaje natural: Obtener el precio unitario promedio de los repuestos.
SELECT AVG(precio) AS promedio_precio_repuestos FROM Repuestos;
-- Respuesta: Muestra el precio promedio de los repuestos.

-- 39
-- Consulta en lenguaje natural: Contar el número total de motovehículos vendidos.
SELECT SUM(cantidad) AS total_motovehiculos_vendidos FROM Detalle_ventas_motovehiculos;
-- Respuesta: Muestra el número total de motovehículos vendidos.

-- 40
-- Consulta en lenguaje natural: Listar todos los repuestos fuera de stock.
SELECT * FROM Repuestos WHERE stock = 0;
-- Respuesta: Muestra los repuestos que están fuera de stock.

-- 41
-- Consulta en lenguaje natural: Mostrar la cantidad de ventas por cada mes del año 2023.
SELECT MONTH(fecha_venta) AS mes, COUNT(*) AS cantidad_ventas 
FROM Ventas WHERE YEAR(fecha_venta) = 2023 
GROUP BY mes;
-- Respuesta: Muestra la cantidad de ventas mensuales en 2023.

-- 42
-- Consulta en lenguaje natural: Listar todas las ventas cuyo total sea mayor a $20,000.
SELECT * FROM Ventas WHERE total > 20000;
-- Respuesta: Muestra todas las ventas cuyo total es superior a $20,000.

-- 43
-- Consulta en lenguaje natural: Calcular el total de repuestos en stock.
SELECT SUM(stock) AS total_stock_repuestos FROM Repuestos;
-- Respuesta: Muestra el total de repuestos en stock.

-- 44
-- Consulta en lenguaje natural: Obtener el detalle de ventas de motovehículos con precios unitarios menores a $15,000.
SELECT * FROM Detalle_ventas_motovehiculos WHERE precio_unitario < 15000;
-- Respuesta: Muestra los detalles de ventas de motovehículos con precio unitario menor a $15,000.

-- 45
-- Consulta en lenguaje natural: Contar el número total de ventas realizadas mediante tarjeta de crédito.
SELECT COUNT(*) AS ventas_tarjeta FROM Facturas WHERE metodo_pago = 'Tarjeta';
-- Respuesta: Muestra el número de ventas realizadas con tarjeta.

-- 46
-- Consulta en lenguaje natural: Listar los motovehículos fabricados en el año 2022.
SELECT * FROM Motovehiculos WHERE año = 2022;
-- Respuesta: Muestra los motovehículos fabricados en 2022.

-- 47
-- Consulta en lenguaje natural: Calcular el total de ingresos por ventas de repuestos por cada cliente.
SELECT id_cliente, SUM(subtotal) AS total_ingresos_repuestos 
FROM Ventas 
JOIN Detalle_ventas_repuestos ON Ventas.id_venta = Detalle_ventas_repuestos.id_venta 
GROUP BY id_cliente;
-- Respuesta: Muestra el total de ingresos por ventas de repuestos para cada cliente.

-- 48
-- Consulta en lenguaje natural: Listar los repuestos cuyo precio sea mayor a $500.
SELECT * FROM Repuestos WHERE precio > 500;
-- Respuesta: Muestra los repuestos con precio superior a $500.

-- 49
-- Consulta en lenguaje natural: Obtener el valor total de ventas para cada motovehículo vendido.
SELECT id_motovehiculo, SUM(subtotal) AS total_venta_motovehiculo 
FROM Detalle_ventas_motovehiculos 
GROUP BY id_motovehiculo;
-- Respuesta: Muestra el valor total de ventas por cada motovehículo.

-- 50
-- Consulta en lenguaje natural: Contar el número de clientes únicos que compraron motovehículos.
SELECT COUNT(DISTINCT id_cliente) AS clientes_unicos_motovehiculos 
FROM Ventas WHERE tipo_venta = 'Motovehiculo';
-- Respuesta: Muestra el número de clientes únicos que compraron motovehículos.

-- 51
-- Consulta en lenguaje natural: Contar el número total de motovehículos de cada marca.
SELECT marca, COUNT(*) AS total_por_marca FROM Motovehiculos GROUP BY marca;
-- Respuesta: Muestra el número total de motovehículos por marca.

-- 52
-- Consulta en lenguaje natural: Obtener el valor total de las compras de repuestos realizadas el último mes.
SELECT 
    SUM(cantidad * precio_unitario) AS total_compras_repuestos_mes
FROM 
    Compras
WHERE 
    fecha_compra >= CURDATE() - INTERVAL 1 MONTH;

-- Respuesta: Muestra el valor total de las compras de repuestos en el último mes.

-- 53
-- Consulta en lenguaje natural: Listar los motovehículos que tienen más de 100 unidades en stock.
SELECT * FROM Motovehiculos WHERE stock > 100;
-- Respuesta: Muestra los motovehículos con más de 100 unidades en stock.

-- 54
-- Consulta en lenguaje natural: Mostrar la fecha de la primera venta registrada en el sistema.
SELECT MIN(fecha_venta) AS fecha_primera_venta FROM Ventas;
-- Respuesta: Muestra la fecha de la primera venta registrada.

-- 55
-- Consulta en lenguaje natural: Calcular el precio promedio de los repuestos vendidos en el último trimestre.
SELECT AVG(precio_unitario) AS promedio_precio_repuestos_trimestre
FROM Detalle_ventas_repuestos
WHERE id_venta IN (
    SELECT id_venta 
    FROM Ventas 
    WHERE fecha_venta >= CURDATE() - INTERVAL 3 MONTH
);

-- Respuesta: Muestra el precio promedio de los repuestos vendidos en el último trimestre.

-- 56
-- Consulta en lenguaje natural: Obtener el total de ventas de motovehículos por cada mes del último año.
SELECT MONTH(fecha_venta) AS mes, SUM(total) AS total_ventas_mensual FROM Ventas WHERE fecha_venta >= CURDATE() - INTERVAL 1 YEAR AND tipo_venta = 'Motovehiculo' GROUP BY mes;
-- Respuesta: Muestra el total de ventas de motovehículos por mes en el último año.

-- 57
-- Consulta en lenguaje natural: Listar todos los proveedores que hayan suministrado más de 10 repuestos.
SELECT id_proveedor, nombre FROM Proveedores WHERE id_proveedor IN (SELECT id_proveedor FROM Compras WHERE cantidad > 10);
-- Respuesta: Muestra los proveedores que han suministrado más de 10 repuestos.

-- 58
-- Consulta en lenguaje natural: Contar el número de clientes que realizaron compras de motovehículos y repuestos en el último año.
SELECT COUNT(DISTINCT Clientes.id_cliente) AS total_clientes_compras FROM Clientes JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente WHERE Ventas.tipo_venta IN ('Motovehiculo', 'Repuesto') AND fecha_venta >= CURDATE() - INTERVAL 1 YEAR;
-- Respuesta: Muestra el número de clientes que compraron motovehículos y repuestos en el último año.

-- 59
-- Consulta en lenguaje natural: Obtener el stock total de motovehículos y repuestos.
SELECT SUM(stock) AS total_stock FROM (SELECT stock FROM Motovehiculos UNION ALL SELECT stock FROM Repuestos) AS stock_total;
-- Respuesta: Muestra el stock total sumado de motovehículos y repuestos.

-- 60
-- Consulta en lenguaje natural: Listar los clientes que han realizado compras en efectivo y con tarjeta de crédito.
SELECT DISTINCT Clientes.id_cliente, Clientes.nombre FROM Clientes JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente WHERE Ventas.metodo_pago IN ('Efectivo', 'Tarjeta de Crédito');
-- Respuesta: Muestra los clientes que realizaron compras en efectivo y con tarjeta de crédito.

-- 61
-- Consulta en lenguaje natural: Calcular la suma total de las ventas de repuestos con descuento aplicado.
SELECT SUM(subtotal - descuento) AS total_ventas_repuestos_con_descuento FROM Detalle_ventas_repuestos WHERE descuento > 0;
-- Respuesta: Muestra la suma total de ventas de repuestos con descuento.

-- 62
-- Consulta en lenguaje natural: Listar los motovehículos que tienen más de 5 repuestos asociados.
SELECT Motovehiculos.id_motovehiculo, Motovehiculos.modelo FROM Motovehiculos JOIN Repuestos ON Motovehiculos.id_motovehiculo = Repuestos.id_motovehiculo GROUP BY Motovehiculos.id_motovehiculo HAVING COUNT(Repuestos.id_repuesto) > 5;
-- Respuesta: Muestra los motovehículos que tienen más de 5 repuestos asociados.

-- 63
-- Consulta en lenguaje natural: Obtener el total de ventas de cada año.
SELECT YEAR(fecha_venta) AS año, SUM(total) AS total_ventas_anual FROM Ventas GROUP BY año;
-- Respuesta: Muestra el total de ventas por año.

-- 64
-- Consulta en lenguaje natural: Contar el número de proveedores en la base de datos.
SELECT COUNT(*) AS total_proveedores FROM Proveedores;
-- Respuesta: Muestra el número total de proveedores registrados.

-- 65
-- Consulta en lenguaje natural: Listar los repuestos cuyo precio sea mayor al precio promedio de todos los repuestos.
SELECT * FROM Repuestos WHERE precio > (SELECT AVG(precio) FROM Repuestos);
-- Respuesta: Muestra los repuestos con precio superior al promedio.

-- 66
-- Consulta en lenguaje natural: Contar cuántos motovehículos fueron vendidos en el último semestre.
SELECT COUNT(*) AS motovehiculos_vendidos FROM Detalle_ventas_motovehiculos WHERE fecha >= CURDATE() - INTERVAL 6 MONTH;
-- Respuesta: Muestra la cantidad de motovehículos vendidos en el último semestre.

-- 67
-- Consulta en lenguaje natural: Mostrar el detalle de ventas con un total mayor a $50,000.
SELECT * FROM Ventas WHERE total > 50000;
-- Respuesta: Muestra las ventas con un total superior a $50,000.

-- 68
-- Consulta en lenguaje natural: Listar los clientes que han realizado compras de repuestos y de motovehículos en diferentes meses.
SELECT DISTINCT Clientes.id_cliente, Clientes.nombre FROM Clientes JOIN Ventas AS v1 ON Clientes.id_cliente = v1.id_cliente AND v1.tipo_venta = 'Motovehiculo' JOIN Ventas AS v2 ON Clientes.id_cliente = v2.id_cliente AND v2.tipo_venta = 'Repuesto' AND MONTH(v1.fecha_venta) <> MONTH(v2.fecha_venta);
-- Respuesta: Muestra los clientes que realizaron compras de repuestos y motovehículos en distintos meses.

-- 69
-- Consulta en lenguaje natural: Calcular el valor total de los repuestos que tienen un precio unitario menor a $500.
SELECT SUM(precio * stock) AS total_repuestos_menor_500 FROM Repuestos WHERE precio < 500;
-- Respuesta: Muestra el valor total de los repuestos con precio unitario menor a $500.

-- 70
-- Consulta en lenguaje natural: Listar los motovehículos con una cantidad de ventas mayor al promedio.
SELECT * FROM Motovehiculos WHERE id_motovehiculo IN (SELECT id_motovehiculo FROM Detalle_ventas_motovehiculos GROUP BY id_motovehiculo HAVING COUNT(*) > (SELECT AVG(cantidad) FROM Detalle_ventas_motovehiculos));
-- Respuesta: Muestra los motovehículos con una cantidad de ventas superior al promedio.

-- 71
-- Consulta en lenguaje natural: Contar el número de facturas emitidas por cada tipo de método de pago.
SELECT metodo_pago, COUNT(*) AS total_facturas_por_metodo FROM Facturas GROUP BY metodo_pago;
-- Respuesta: Muestra la cantidad de facturas emitidas por cada método de pago.

-- 72
-- Consulta en lenguaje natural: Listar todos los motovehículos y su disponibilidad en stock.
SELECT id_motovehiculo, modelo, stock FROM Motovehiculos;
-- Respuesta: Muestra todos los motovehículos y su disponibilidad de stock.

-- 73
-- Consulta en lenguaje natural: Obtener el nombre y apellido de los clientes que realizaron la mayor cantidad de compras.
SELECT Clientes.nombre, Clientes.apellido FROM Clientes JOIN Ventas ON Clientes.id_cliente = Ventas.id_cliente GROUP BY Clientes.id_cliente ORDER BY COUNT(*) DESC LIMIT 1;
-- Respuesta: Muestra el nombre y apellido del cliente con mayor cantidad de compras.

-- 74
-- Consulta en lenguaje natural: Mostrar el detalle de todas las ventas de motovehículos realizadas en el último año.
SELECT * FROM Detalle_ventas_motovehiculos WHERE fecha >= CURDATE() - INTERVAL 1 YEAR;
-- Respuesta: Muestra el detalle de todas las ventas de motovehículos en el último año.

-- 75
-- Consulta en lenguaje natural: Calcular el precio promedio de los repuestos en stock.
SELECT AVG(precio) AS promedio_precio_repuestos_stock FROM Repuestos WHERE stock > 0;
-- Respuesta: Muestra el precio promedio de los repuestos en stock.

-- 76
-- Consulta en lenguaje natural: Obtener los datos de motovehículos cuyo precio sea menor al precio promedio de motovehículos.
SELECT * FROM Motovehiculos WHERE precio < (SELECT AVG(precio) FROM Motovehiculos);
-- Respuesta: Muestra los motovehículos con precio inferior al promedio.

-- 77
-- Consulta en lenguaje natural: Listar los proveedores que hayan suministrado repuestos para motovehículos de marca "Yamaha".
SELECT DISTINCT Proveedores.id_proveedor, Proveedores.nombre FROM Proveedores JOIN Compras ON Proveedores.id_proveedor = Compras.id_proveedor JOIN Repuestos ON Compras.id_repuesto = Repuestos.id_repuesto JOIN Motovehiculos ON Repuestos.id_motovehiculo = Motovehiculos.id_motovehiculo WHERE Motovehiculos.marca = 'Yamaha';
-- Respuesta: Muestra los proveedores que suministraron repuestos para motovehículos Yamaha.

-- 78
-- Consulta en lenguaje natural: Calcular la ganancia total de las ventas con descuentos.
SELECT SUM(total - descuento) AS total_ventas_con_descuento FROM Ventas WHERE descuento > 0;
-- Respuesta: Muestra la ganancia total de las ventas con descuento.

-- 79
-- Consulta en lenguaje natural: Contar el número de motovehículos vendidos por cada categoría.
SELECT categoria, COUNT(*) AS total_vendidos_por_categoria FROM Detalle_ventas_motovehiculos GROUP BY categoria;
-- Respuesta: Muestra el total de motovehículos vendidos por cada categoría.

-- 80
-- Consulta en lenguaje natural: Mostrar los datos de los clientes que hayan comprado más de 5 motovehículos.
SELECT Clientes.id_cliente, Clientes.nombre FROM Clientes JOIN Detalle_ventas_motovehiculos ON Clientes.id_cliente = Detalle_ventas_motovehiculos.id_cliente GROUP BY Clientes.id_cliente HAVING COUNT(*) > 5;
-- Respuesta: Muestra los clientes que han comprado más de 5 motovehículos.

-- 81
-- Consulta en lenguaje natural: Contar el total de repuestos comprados para motovehículos de una misma marca.
SELECT marca, COUNT(Repuestos.id_repuesto) AS total_repuestos FROM Repuestos JOIN Motovehiculos ON Repuestos.id_motovehiculo = Motovehiculos.id_motovehiculo GROUP BY marca;
-- Respuesta: Muestra el total de repuestos comprados para cada marca.

-- 82
-- Consulta en lenguaje natural: Obtener la fecha de la última compra de cada cliente.
SELECT id_cliente, MAX(fecha_compra) AS ultima_compra FROM Compras GROUP BY id_cliente;
-- Respuesta: Muestra la fecha de la última compra realizada por cada cliente.

-- 83
-- Consulta en lenguaje natural: Listar los motovehículos que no tienen stock disponible.
SELECT * FROM Motovehiculos WHERE stock = 0;
-- Respuesta: Muestra los motovehículos que no tienen stock disponible.

-- 84
-- Consulta en lenguaje natural: Mostrar los datos de los clientes que compraron motovehículos en los últimos 3 meses.
SELECT Clientes.id_cliente, Clientes.nombre FROM Clientes JOIN Detalle_ventas_motovehiculos ON Clientes.id_cliente = Detalle_ventas_motovehiculos.id_cliente WHERE fecha >= CURDATE() - INTERVAL 3 MONTH;
-- Respuesta: Muestra los clientes que compraron motovehículos en los últimos 3 meses.

-- 85
-- Consulta en lenguaje natural: Calcular el precio total de motovehículos en stock.
SELECT SUM(precio * stock) AS valor_total_stock_motovehiculos FROM Motovehiculos;
-- Respuesta: Muestra el valor total de motovehículos en stock.

-- 86
-- Consulta en lenguaje natural: Listar los repuestos comprados el último mes.
SELECT * FROM Compras WHERE fecha_compra >= CURDATE() - INTERVAL 1 MONTH;
-- Respuesta: Muestra los repuestos comprados en el último mes.

-- 87
-- Consulta en lenguaje natural: Contar el total de ventas en efectivo y a crédito.
SELECT metodo_pago, COUNT(*) AS total_ventas_por_metodo FROM Ventas GROUP BY metodo_pago;
-- Respuesta: Muestra el total de ventas en efectivo y a crédito.

-- 88
-- Consulta en lenguaje natural: Mostrar la cantidad total de motovehículos vendidos el último año.
SELECT COUNT(*) AS total_motovehiculos_vendidos FROM Detalle_ventas_motovehiculos WHERE fecha >= CURDATE() - INTERVAL 1 YEAR;
-- Respuesta: Muestra la cantidad total de motovehículos vendidos en el último año.

-- 89
-- Consulta en lenguaje natural: Listar los repuestos con una ganancia superior al 20% de su costo.
SELECT * FROM Repuestos WHERE (precio - costo) / costo > 0.2;
-- Respuesta: Muestra los repuestos con una ganancia superior al 20% sobre su costo.

-- 90
-- Consulta en lenguaje natural: Obtener el total de ventas de cada cliente en el último mes.
SELECT id_cliente, SUM(total) AS total_compras_mensual FROM Ventas WHERE fecha_venta >= CURDATE() - INTERVAL 1 MONTH GROUP BY id_cliente;
-- Respuesta: Muestra el total de compras por cliente en el último mes.

-- 91
-- Consulta en lenguaje natural: Contar el número de motovehículos vendidos en cada trimestre del último año.
SELECT 
    QUARTER(V.fecha_venta) AS trimestre, 
    COUNT(*) AS total_vendidos
FROM 
    Detalle_ventas_motovehiculos D
JOIN 
    Ventas V ON D.id_venta = V.id_venta
WHERE 
    V.fecha_venta >= CURDATE() - INTERVAL 1 YEAR
GROUP BY 
    trimestre;
-- Respuesta: Muestra el total de motovehículos vendidos en cada trimestre del último año.

-- 92
-- Consulta en lenguaje natural: Listar los datos de los motovehículos vendidos en más de 3 unidades.
SELECT * FROM Motovehiculos WHERE id_motovehiculo IN (SELECT id_motovehiculo FROM Detalle_ventas_motovehiculos GROUP BY id_motovehiculo HAVING COUNT(*) > 3);
-- Respuesta: Muestra los motovehículos vendidos en más de 3 unidades.

-- 93
-- Consulta en lenguaje natural: Calcular el valor de repuestos en stock por categoría.
SELECT categoria, SUM(precio * stock) AS valor_total_stock_categoria FROM Repuestos GROUP BY categoria;
-- Respuesta: Muestra el valor total de repuestos en stock por categoría.

-- 94
-- Consulta en lenguaje natural: Obtener el porcentaje de motovehículos vendidos sobre el total en stock.
SELECT (SELECT COUNT(*) FROM Detalle_ventas_motovehiculos) / (SELECT SUM(stock) FROM Motovehiculos) * 100 AS porcentaje_vendidos;
-- Respuesta: Muestra el porcentaje de motovehículos vendidos sobre el total en stock.

-- 95
-- Consulta en lenguaje natural: Listar los clientes que compraron más de un tipo de motovehículo.
SELECT id_cliente, nombre FROM Clientes WHERE id_cliente IN (SELECT id_cliente FROM Detalle_ventas_motovehiculos GROUP BY id_cliente, tipo_motovehiculo HAVING COUNT(DISTINCT tipo_motovehiculo) > 1);
-- Respuesta: Muestra los clientes que compraron más de un tipo de motovehículo.

-- 96
-- Consulta en lenguaje natural: Calcular el valor promedio de las compras por cliente.
SELECT AVG(total) AS promedio_compras_cliente FROM Ventas;
-- Respuesta: Muestra el valor promedio de compras por cliente.

-- 97
-- Consulta en lenguaje natural: Obtener los clientes que compraron tanto repuestos como motovehículos en el mismo día.
SELECT DISTINCT Clientes.id_cliente, Clientes.nombre FROM Clientes JOIN Ventas AS v1 ON Clientes.id_cliente = v1.id_cliente AND v1.tipo_venta = 'Motovehiculo' JOIN Ventas AS v2 ON Clientes.id_cliente = v2.id_cliente AND v2.tipo_venta = 'Repuesto' AND DATE(v1.fecha_venta) = DATE(v2.fecha_venta);
-- Respuesta: Muestra los clientes que compraron repuestos y motovehículos el mismo día.

-- 98
-- Consulta en lenguaje natural: Mostrar las ventas de motovehículos por marca.
SELECT marca, COUNT(*) AS total_ventas_por_marca FROM Motovehiculos JOIN Detalle_ventas_motovehiculos ON Motovehiculos.id_motovehiculo = Detalle_ventas_motovehiculos.id_motovehiculo GROUP BY marca;
-- Respuesta: Muestra las ventas de motovehículos por marca.

-- 99
-- Consulta en lenguaje natural: Listar los repuestos vendidos en un día específico.
SELECT * FROM Detalle_ventas_repuestos WHERE fecha = '2024-09-15';
-- Respuesta: Muestra los repuestos vendidos en un día específico.

-- 100
-- Consulta en lenguaje natural: Calcular el valor promedio de los repuestos por motovehículo.
SELECT id_motovehiculo, AVG(precio) AS promedio_precio_repuestos FROM Repuestos GROUP BY id_motovehiculo;
-- Respuesta: Muestra el valor promedio de repuestos por cada motovehículo.

