USE zanellaventasbuenosaires;
DELIMITER $$
CREATE PROCEDURE InsertarDetalleVentasRepuestos()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE max_ventas INT;
    DECLARE max_repuestos INT;

    -- Obtener cantidad de ventas y repuestos
    SELECT COUNT(*) INTO max_ventas FROM Ventas;
    SELECT COUNT(*) INTO max_repuestos FROM Repuestos;

    WHILE i <= 1000 DO
        INSERT INTO Detalle_ventas_repuestos (id_venta, id_repuesto, cantidad, precio_unitario)
        VALUES (
            FLOOR(1 + RAND() * max_ventas),                          -- ID de venta aleatorio
            FLOOR(1 + RAND() * max_repuestos),                       -- ID de repuesto aleatorio
            FLOOR(1 + RAND() * 20),                                  -- Cantidad aleatoria
            ROUND(100 + RAND() * 1000, 2)                            -- Precio unitario aleatorio
        );
        SET i = i + 1;
    END WHILE;
END $$
DELIMITER ;
CALL InsertarDetalleVentasRepuestos();