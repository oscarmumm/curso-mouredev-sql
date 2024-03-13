
CREATE INDEX idx_name ON users(name);
/* crea un indice llamado idx_name sobre la columna name de la tabla users */

CREATE UNIQUE INDEX idx_name ON users(name);
/* crea un indice único llamado idx_name sobre la columna name de la tabla users */

CREATE UNIQUE INDEX idx_name ON users(name, surname);
/* crea un indice único llamado idx_name sobre las columnas name y surname de la tabla users */

DROP INDEX idx_name ON users;
/* elimina el indice idx_name de la tabla users */