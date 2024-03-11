SELECT * FROM users WHERE email IS NULL;
-- nos deveulve aquellos usuarios donde el email es nulo

SELECT * FROM users WHERE email IS NOT NULL;
-- devuelve aquellos usuarios deonde el email NO es nulo

SELECT * FROM users WHERE email IS NOT NULL AND age = 15;
-- devuelve aquellos usuarios deonde el email NO es nulo y age es igual a 15

SELECT name, surname, IFNULL(age, 0)  FROM users;
-- devuelve las columnas name, surname y age, en los valores null de age los reemplaza con un 0