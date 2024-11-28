USE zanellaventasbuenosaires;
DELIMITER $$
CREATE PROCEDURE InsertarDetalleVentasMotovehiculos()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE max_ventas INT;
    DECLARE max_motovehiculos INT;

    -- Obtener cantidad de ventas y motovehículos
    SELECT COUNT(*) INTO max_ventas FROM Ventas;
    SELECT COUNT(*) INTO max_motovehiculos FROM Motovehiculos;

    WHILE i <= 1000 DO
        INSERT INTO Detalle_ventas_motovehiculos (id_venta, id_motovehiculo, cantidad, precio_unitario)
        VALUES (
            FLOOR(1 + RAND() * max_ventas),                          -- ID de venta aleatorio
            FLOOR(1 + RAND() * max_motovehiculos),                   -- ID de motovehículo aleatorio
            FLOOR(1 + RAND() * 10),                                  -- Cantidad aleatoria
            ROUND(50000 + RAND() * 100000, 2)                        -- Precio unitario aleatorio
        );
        SET i = i + 1;
    END WHILE;
END $$
DELIMITER ;
CALL InsertarDetalleVentasMotovehiculos();
