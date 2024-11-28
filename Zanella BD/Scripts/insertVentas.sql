USE zanellaventasbuenosaires;
DELIMITER $$
CREATE PROCEDURE InsertarVentas()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE max_clientes INT;

    -- Obtener la cantidad de clientes existentes
    SELECT COUNT(*) INTO max_clientes FROM Clientes;

    WHILE i <= 1000 DO
        INSERT INTO Ventas (id_cliente, fecha_venta, total, tipo_venta)
        VALUES (
            FLOOR(1 + RAND() * max_clientes),                      -- ID de cliente aleatorio
            CURDATE() - INTERVAL FLOOR(RAND() * 365) DAY,          -- Fecha aleatoria en el último año
            ROUND(1000 + RAND() * 50000, 2),                       -- Total aleatorio
            IF(RAND() > 0.5, 'Motovehiculo', 'Repuesto')           -- Tipo de venta aleatorio
        );
        SET i = i + 1;
    END WHILE;
END $$
DELIMITER ;

CALL InsertarVentas();