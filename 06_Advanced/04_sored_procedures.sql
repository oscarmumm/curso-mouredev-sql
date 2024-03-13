DELIMITER //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END

CALL p_all_users();

DELIMITER //
CREATE PROCEDURE p_age_users(IN age_param INT)
BEGIN
	SELECT * FROM users WHERE age = age_param;
END //
/* creamos un procedure que actua similar a una funcion, ya que recibirá un parámetro
y nos devolverá los datos en funcion de el */
CALL p_age_users(15);
/*esta query devolverá la tabla con aquellos usuarios que tengan 15 años*/