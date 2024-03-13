/* LEFT JOIN trae todos los datos de la primera tabla y aquellos que tengan una
referencia en la segunda */

SELECT * FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;
/* en este ejemplo traeremos a todos los usuarios de la tabla users y de la tabla dni solo
los campos que tengan su correspondencia con la tabla users. aquellos campos de dni que no
tengan valor de referencia apareceran con null */

SELECT name, dni_number FROM users
LEFT JOIN dni
ON users.user_id = dni.user_id;
/* mismo que el anterior, pero solo nos mostrará las columnas de name y dni_number */

SELECT name, dni_number FROM dni
LEFT JOIN users
ON users.user_id = dni.user_id;
/* intercambiamos el orden de las tablas, en este caso traerá todos los campos de la tabla dni, 
mientras de que de la tabla users solo aquellos que tengan su correspondiente referencia
aquellos campos de la tabla users que no tengan valor de referencia aparecerán con null */

SELECT users.name, languages.name 
FROM users
LEFT JOIN users_languages ON users.user_id = users_languages.user_id
LEFT JOIN languages ON users_languages.language_id = languages.language_id;
/* en este caso hacemos un LEFT JOIN desde la tabla users, utilizando las tablas users_languages
y languages, para ver los nombres de los usuarios y de aquellos lenguajes de programacion 
que saben */