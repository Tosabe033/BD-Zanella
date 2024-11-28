USE zanellaventasbuenosaires;

DELIMITER $$
CREATE PROCEDURE InsertarCompras()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE max_repuesto_id INT;

    -- Obtener el ID máximo de repuestos para garantizar relaciones válidas
    SELECT MAX(id_repuesto) INTO max_repuesto_id FROM Repuestos;

    WHILE i <= 1000 DO
        INSERT INTO Compras (id_repuesto, fecha_compra, cantidad, precio_unitario)
        VALUES (
            FLOOR(1 + RAND() * max_repuesto_id),               -- ID de repuesto aleatorio existente
            CURDATE() - INTERVAL FLOOR(RAND() * 365) DAY,      -- Fecha de compra aleatoria en el último año
            FLOOR(1 + RAND() * 50),                            -- Cantidad entre 1 y 50 unidades
            ROUND(1000 + RAND() * 9000, 2)                     -- Precio unitario entre $1,000 y $10,000
        );
        SET i = i + 1;
    END WHILE;
END $$
DELIMITER ;
CALL InsertarCompras;