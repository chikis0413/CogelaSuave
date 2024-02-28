USE proyect;

DELIMITER //
CREATE FUNCTION consultar_usuario(cedula_param VARCHAR(10))
RETURNS TABLE USUARIO DELI
BEGIN
    DECLARE result_table TABLE(Nombre VARCHAR(50), Cedula VARCHAR(10), Correo VARCHAR(50), Telefono VARCHAR(10), Genero VARCHAR(15), FechaNacimiento VARCHAR(10));

    INSERT INTO result_table
    SELECT *
    FROM USUARIO
    WHERE Cedula = cedula_param;

    RETURN result_table;
END //
DELIMITER ;


SELECT * FROM consultar_usuario("1234567890");
