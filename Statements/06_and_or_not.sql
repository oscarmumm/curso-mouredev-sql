SELECT * FROM users WHERE NOT email = 'sara@gmail.com';
-- devuelve aquellos campos donde el valor de email no sea igual a sara@gmail.com

SELECT * FROM users WHERE NOT email = 'sara@gmail.com' AND age = 15;
-- devuelve aquellos campos donde el valor de email no sea igual a sara@gmail.com y además el valor de age sea 15

SELECT * FROM users WHERE NOT email = 'sara@gmail.com' OR age = 15;
-- devuelve aquellos campos donde el valor de email no sea igual a sara@gmail.com o el valor de age sea 15