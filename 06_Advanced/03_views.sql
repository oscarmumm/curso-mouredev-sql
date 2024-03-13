/* las vistas se utilizan para poder acceder mas facilmente 
a una consulta que realizamos con frecuencia*/

CREATE VIEW v_adult_users AS 
SELECT name, age
FROM users
WHERE age >= 18;
/* en este ejemplo estamos creando una vista llamada v_adult_users
que nos mostrará una lista de los usuarios mayores de edad de la tabla users */

SELECT * FROM v_adult_users;
/* luego utilizamos la consulta para observar la view */