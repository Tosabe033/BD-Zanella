USE zanellaventasbuenosaires;

DELIMITER $$
CREATE PROCEDURE InsertarFacturas()
BEGIN
    DECLARE i INT DEFAULT 1;
    DECLARE max_ventas INT;

    -- Obtener la cantidad de ventas existentes
    SELECT COUNT(*) INTO max_ventas FROM Ventas;

    WHILE i <= 1000 DO
        INSERT INTO Facturas (id_venta, fecha_emision, total, metodo_pago)
        VALUES (
            FLOOR(1 + RAND() * max_ventas),                          -- ID de venta aleatorio
            CURDATE() - INTERVAL FLOOR(RAND() * 365) DAY,            -- Fecha aleatoria en el último año
            ROUND(1000 + RAND() * 50000, 2),                         -- Total aleatorio
            CASE FLOOR(RAND() * 3)
                WHEN 0 THEN 'Efectivo'
                WHEN 1 THEN 'Tarjeta'
                WHEN 2 THEN 'Transferencia'
            END                                                     -- Método de pago aleatorio
        );
        SET i = i + 1;
    END WHILE;
END $$
DELIMITER ;

CALL InsertarFacturas;