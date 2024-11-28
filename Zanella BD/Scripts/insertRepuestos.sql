USE zanellaventasbuenosaires;
DELIMITER $$
CREATE PROCEDURE InsertarRepuestos()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE max_motovehiculo_id INT;

    -- Obtener el ID máximo de motovehículos para garantizar relaciones válidas
    SELECT MAX(id_motovehiculo) INTO max_motovehiculo_id FROM Motovehiculos;

    WHILE i <= 1000 DO
        INSERT INTO Repuestos (descripcion, id_motovehiculo, precio, stock)
        VALUES (
            CONCAT('Repuesto ', i),                           -- Descripción ficticia
            FLOOR(1 + RAND() * max_motovehiculo_id),          -- ID de motovehículo aleatorio existente
            ROUND(1000 + RAND() * 9000, 2),                   -- Precio entre $1,000 y $10,000
            FLOOR(1 + RAND() * 100)                           -- Stock entre 1 y 100 unidades
        );
        SET i = i + 1;
    END WHILE;
END $$
DELIMITER ;
CALL InsertarRepuestos;
