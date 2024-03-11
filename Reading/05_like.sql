SELECT * FROM users WHERE email LIKE '%gmail.com';
-- nos devuelve todos los usuarios que contengan el valor gmail.com dentro del campo email
-- el símbolo % se utiliza para indicar que el contenido anterior del string de búsqueda
-- debe ser ignorado

SELECT * FROM users WHERE email LIKE 'sara%';
-- nos devuelve aquellos campos donde el valor de email comience por sara y continúe de forma indistinta (%)

SELECT * FROM users WHERE email LIKE '%@%';
-- devuelve aquellos campos donde el valor de email contenga el caracter @