INSERT INTO users (user_id, name, surname) VALUES (8, 'Maria', 'Lopez');
/* insertamos un nuevo campo en la tabla, primero colocamos entre paréntesis las columnas a las que le
vamos a asignar valores, y luego de la palabra reservada VALUES colocamos entre parentesis los
valores que tendremos en dichas columnas */

INSERT INTO users (name, surname) VALUES ('Paco', 'Perez');
/* si no especificamos el valor de user_id, pero lo tenemos correctamente configurado
como promary key y autoincremental, al agregar un usuario de esta manera se le asignará
automáticamente el id correspondiente */

INSERT INTO users (user_id, name, surname) VALUES (11, 'El', 'Merma');
/* vemos como también podemos saltarnos ids de forma manual, en este caso nos saltamos el id 10 */