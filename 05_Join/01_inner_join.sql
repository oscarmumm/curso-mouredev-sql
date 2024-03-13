/* INNER JOIN nos sirve para obtener los datos comunes de ambas tablas */

SELECT * FROM users
INNER JOIN dni;

SELECT * FROM users             -- seleccionamos todos los datos de users
INNER JOIN dni                  -- indicamos la tabla con la que queremos ver el join
ON users.user_id = dni.user_id; -- indicamos las claves que utilizan para referenciarse
/* como resultado obtendremos una tabla que será la unión de las tablas users y dni */

SELECT * FROM users
JOIN dni
ON users.user_id = dni.user_id;
/* en la ayoría de motores de bases de datos la palabra INNER no es necesaria */

SELECT name, dni_number FROM users
INNER JOIN dni
ON users.user_id = dni.user_id
ORDER BY age ASC;
/* en este caso hemos acotado el resultado de nuestra búsqueda agregando aglunos parámetros, como por ejemplo
con 'SELECT name, dni_number' le estamos diciendo que solo necesito esas dos columnas, y con: 'ORDER BY age ASC'
le estamos diciendo que queremos ordenar los datos de manera ascendente segun su valor de age */

SELECT * FROM users
JOIN companies
ON users.company_id = companies.company_id;
/* en este caso hemos hecho un JOIN con una tabla que tiene relación 1:N, users:companies y obtendremos
todos los campos de la tabla users donde se relacionan con la tabla companies */

SELECT companies.name, users.name FROM companies
JOIN users
ON users.company_id = companies.company_id;
/* hemos modificado la query para obtener solo el nombre de la compañía y el nombre del usuario, 
también hemos invertido que tabla deberá mostrarse en primer lugar */

SELECT users.name, languages.name FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;
/* en este caso estamos haciendo un JOIN de una relacion N:N, es decir, a través de la tabla intermedia
por eso hemos declarado un JOIN para cada tabla, y hemos declarado sus claves.
a su vez hemos filtrado el select con las columnas name de las tablas users y languages */