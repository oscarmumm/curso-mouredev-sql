ALTER TABLE persons8
ADD surname varchar(150);
/* en este ejemplo agregamos el campo surname a la tabla persons8 */

ALTER TABLE persons8
RENAME COLUMN surname TO description;
/* en este ejemplo renombramos la columna surname, su nuevo nombre es description */

ALTER TABLE persons8
MODIFY COLUMN description VARCHAR(230);
/* acá modificamos el tipo de dato de la columna description, en este caso le asignamos
un string con un máximo de 230 caracteres */

ALTER TABLE persons8
DROP COLUMN description;
/* eliminamos la columna description de la tabla */