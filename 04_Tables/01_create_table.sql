CREATE TABLE persons (
	id int NOT NULL AUTO_INCREMENT,
    name varchar(100) NOT NULL,
    age int,
    email varchar(50),
    created datetime DEFAULT CURRENT_TIMESTAMP(),
    UNIQUE(id),
    PRIMARY KEY(id),
    CHECK(age>=18)
);
/* en este ejemplo creamos una tabla con las siguientes características
columna id, con tipo de dato entero, su valor no puede ser nulo, y se auto-incrementará;
columna name, tipo de dato string (máximo 100 caracteres), no puede ser nulo;
columna age, tipo de dato entero;
columna email, tipo de dato string (máximo 50 caracteres);
columna created, tipo de dato datetime, por defecto utiliza la funcion CREATE_TIMESTAMP para obtener la fecha de creación;
a su vez decimos que el id debe ser único y debe ser la clave primaria;
tabmién agregamos la restricción que la edad de los usuarios debe ser igual o mayor a 18 */