SELECT name, init_date AS 'Fecha de inicio en programacion' FROM users;
-- devuelve las columnas name e init_date de la tabla, pero le cambia el nombre a init_date

SELECT CONCAT(name, ' ', surname) FROM users;
-- devuelve las columnas name y surname unidas campo por campo

SELECT CONCAT(name, ' ', surname) AS 'Nombre completo' FROM users;
-- devuelve una columna llamada 'Nombre completo' donde encontraremos los valores de
-- las columnas name y surname concatenados