SELECT *,
CASE
	WHEN  age > 17 THEN 'Es mayor de edad'
    ELSE 'Es menor de edad'
END AS agetext
FROM users;
-- devuelve la tabla de resultados con una columna llamada agetext con el texto
-- 'Es mayor de edad' o 'Es menor de edad' según la condicion que hemos pasado
-- en este caso age > 17

SELECT *,
CASE
	WHEN  age > 17 THEN true
    ELSE false
END AS 'Es mayor de edad?'
FROM users;
-- misma lógica que el anterior, solo que en la columna que agrega
-- representa el resultado con 1 o 0 según el valor booleano del resultado de la comparación

SELECT *,
CASE
	WHEN  age > 18 THEN 'Es mayor de edad'
    WHEN age = 18 THEN 'Acaba de cumplir la mayoria de edad'
    ELSE 'Es menor de edad'
END AS 'Es mayor de edad?'
FROM users;
-- similar al primer caso, solo que se le agrega una nueva condicion donde agrega un mensaje
-- cuando el campo age es igual a 18