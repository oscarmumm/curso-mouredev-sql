/* ---------- RELACION 1 : 1 ---------- */

CREATE TABLE dni (
	dni_id int AUTO_INCREMENT PRIMARY KEY,
	dni_number int NOT NUll,
    user_id int,
    UNIQUE(dni_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id)
);
/* esta tabla dni la creamos y relacionamos con la tabla users, donde user_id era su
primary key, la utilizamos como la foreign key de la tabla que hemos creado, creando una relación de 1:1 */


/* ---------- RELACION 1 : N ---------- */

CREATE TABLE companies(
    company_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100)
)
/* primero creamos una tabla companies */

ALTER TABLE users
ADD company_id int;
/* despues modificamos la tabla users agregando la columna company_id */

ALTER TABLE users
ADD CONSTRAINT fk_companies
FOREIGN KEY(company_id) REFERENCES companies(company_id);
/* en este ejemplo estamos agregando el constraint fk_companies, mediante el cual indicamos la referencia
de la tabla companies (cuya primary key es company_id) con la foreign key de nuesttra tabla de users */


/* ---------- RELACION N : N ---------- */
CREATE TABLE languages(
	language_id int AUTO_INCREMENT PRIMARY KEY,
    name varchar(100) NOT NULL
);
/* primero creamos una tabla de lenguajes */

CREATE TABLE users_languages(
	users_language_id int AUTO_INCREMENT PRIMARY KEY,
    user_id int,
    language_id int,
    FOREIGN KEY(language_id) REFERENCES languages(language_id),
    FOREIGN KEY(user_id) REFERENCES users(user_id),
    UNIQUE(user_id, language_id)
);
/* luego creamos una tabla que servirá de intermediria para guardar las relaciones
en ella definimos un id para cada usuario, para cada lenguaje y para cada relacion
luego las referenciamos con sus claves foraneas directamente */

-- Insert
-- Insertamos los siguientes datos en la tabla dni
INSERT INTO dni (dni_number, user_id) VALUES (11111111, 1);
INSERT INTO dni (dni_number, user_id) VALUES (22222222, 2);
INSERT INTO dni (dni_number, user_id) VALUES (33333333, 3);
INSERT INTO dni (dni_number) VALUES (44444444);

-- Insertamos los siguientes datos en la tabla companies
INSERT INTO companies (name) VALUES ('MoureDev');
INSERT INTO companies (name) VALUES ('Apple');
INSERT INTO companies (name) VALUES ('Google');

-- Actualizamos los datos de la tabla users para asignar las compañías donde trabajan los usuarios
UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 3;
UPDATE users SET company_id = 3 WHERE user_id = 4;
UPDATE users SET company_id = 1 WHERE user_id = 7;  

-- Insertamos datos dentro de la tabla languages
INSERT INTO languages (name) VALUES ('Swift');
INSERT INTO languages (name) VALUES ('Kotlin');
INSERT INTO languages (name) VALUES ('JavaScript');
INSERT INTO languages (name) VALUES ('Java');
INSERT INTO languages (name) VALUES ('Python');
INSERT INTO languages (name) VALUES ('C#');
INSERT INTO languages (name) VALUES ('Cobol');

-- Insertamos datos en la tabla users_languages, la cual era una tabla intermedia
INSERT INTO users_languages (user_id, language_id) VALUES (1 , 1);
INSERT INTO users_languages (user_id, language_id) VALUES (1 , 2);
INSERT INTO users_languages (user_id, language_id) VALUES (1 , 5);
INSERT INTO users_languages (user_id, language_id) VALUES (2 , 3);
INSERT INTO users_languages (user_id, language_id) VALUES (2 , 5);