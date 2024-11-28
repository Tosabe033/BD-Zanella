USE zanellaventasbuenosaires;
DELIMITER $$
CREATE PROCEDURE InsertarMotovehiculos()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 1000 DO
        INSERT INTO Motovehiculos (marca, modelo, año, cilindrada, precio, stock)
        VALUES (
            CASE FLOOR(RAND() * 5)
                WHEN 0 THEN 'Honda'
                WHEN 1 THEN 'Yamaha'
                WHEN 2 THEN 'Suzuki'
                WHEN 3 THEN 'Kawasaki'
                WHEN 4 THEN 'Zanella'
            END,                                               -- Marca aleatoria
            CONCAT('Modelo', FLOOR(RAND() * 100)),             -- Modelo ficticio
            FLOOR(2010 + RAND() * 15),                         -- Año entre 2010 y 2024
            FLOOR(50 + RAND() * 950),                          -- Cilindrada entre 50cc y 1000cc
            ROUND(100000 + RAND() * 900000, 2),                -- Precio entre $100,000 y $1,000,000
            FLOOR(1 + RAND() * 50)                             -- Stock entre 1 y 50
        );
        SET i = i + 1;
    END WHILE;
END $$
DELIMITER ;


-- Ejecutar el procedimiento
CALL InsertarMotovehiculos();
