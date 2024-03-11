/* ---------- REGLA DE ORO ---------- */
/* NO OLVIDAR EL WHERE!!! 
siempre que hacemos un update dedemos filtrar los datos, porque sino estariamos
afectando a toda la base de datos!!!!
Por ejemplo en la siguiente sentencia: */
UPDATE users SET age = 21;
/* estaríamos cambiando la edad de todos los usuarios de la tabla a 21!!! 
Si por ejemplo quisieramos actualizar el valor de age del usuario con id 11 haríamos: */
UPDATE users SET age = 21 WHERE user_id = 11;
/* en este ejemplo actuaizamos el valor de age a 21 al usuario con id 11 */

UPDATE users SET age = 20, init_date = '2023-10-12' WHERE user_id = 11;
/* ejempo similar al anterior, solo que además modificamos su valor de init_date */