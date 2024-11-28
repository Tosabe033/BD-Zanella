USE zanellaventasbuenosaires;
DELIMITER $$
CREATE PROCEDURE InsertClientes()
BEGIN
    DECLARE i INT DEFAULT 1;

    WHILE i <= 1000 DO
        INSERT INTO Clientes (nombre, apellido, dni, direccion, ciudad, provincia, telefono, email, fecha_registro)
        VALUES (
            CONCAT('Nombre', i),                                 -- Nombre ficticio
            CONCAT('Apellido', i),                              -- Apellido ficticio
            LPAD(FLOOR(RAND() * 100000000 + 10000000), 8, '0'), -- DNI aleatorio de 8 dígitos
            CONCAT('Calle Falsa ', FLOOR(RAND() * 500)),         -- Dirección ficticia
            'Ciudad Ejemplo',                                   -- Ciudad fija para simplicidad
            'Buenos Aires',                                     -- Provincia fija
            CONCAT('+54 11 ', FLOOR(RAND() * 1000000)),         -- Teléfono ficticio
            CONCAT('cliente', i, '@ejemplo.com'),               -- Email ficticio
            CURDATE() - INTERVAL FLOOR(RAND() * 365) DAY        -- Fecha de registro aleatoria
        );
        SET i = i + 1;
    END WHILE;
END $$
DELIMITER ;


-- Ejecutar el procedimiento
CALL InsertClientes();
