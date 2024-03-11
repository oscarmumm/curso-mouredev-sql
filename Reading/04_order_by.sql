SELECT * FROM users ORDER BY age ASC;
-- nos muestra la tabla con los datos ordenados por el parámetro age, de forma ascendente
-- si no se indica ASC igual funciona de esta manera por defecto

SELECT * FROM users ORDER BY age DESC;
-- nos muestra la tabla con los datos ordenados por el parámetro age, de forma descendente

SELECT * FROM users WHERE email='sara@gmail.com' ORDER BY age DESC;
-- nos muestra la fila de la tabla donde el email coincide con el indicado y lo ordena de forma descendente