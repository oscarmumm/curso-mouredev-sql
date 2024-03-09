SELECT * FROM users WHERE age = 15;
-- la palabra reservada where se utiliza para acotar el resultado de la búsqueda en la base de datos
-- por ejemplo en esta sentencia nos devolverá aquellos usuarios de la tabla que tengan la edad de 15

SELECT name FROM users WHERE age = 15;
-- esta query nos traerá solo los nombres de los usuarios que cumplan con la condición que le hemos impuesto

SELECT DISTINCT age FROM users WHERE age = 15;
-- esta query nos devolverá el valor 15, puesto que estamos filtrando por el valor age igual  a 15, pero,
-- a pesar de que este se repite, la palabra DISTINCT hace que solo nos muestre el valo, no su repetición