CREATE TABLE `hello_mysql`.`email_history` (
  `email_history_id` INT NOT NULL AUTO_INCREMENT,
  `user_id` INT NOT NULL,
  `email` VARCHAR(100) NULL,
  PRIMARY KEY (`email_history_id`),
  UNIQUE INDEX `email_history_id_UNIQUE` (`email_history_id` ASC) VISIBLE);
/* primero creamos una nueva tabla email_history donde guardaremos los viejos emails */


delimiter |

CREATE TRIGGER tg_email
AFTER UPDATE
ON users
FOR EACH ROW
BEGIN
	IF OLD.email <> NEW.email THEN
		INSERT INTO email_history (user_id, email)
        VALUES (OLD.user_id, OLD.email)
	END IF
END;

delimiter;
/* luego creamos el trigger, el cual, al actualizar el valor de un email en la tabla users
creará un nuevo campo en la tabla email_history que habiamos creado, mostrando el valor que tenía
anteriormente el email */

UPDATE users SET email = 'nuevomail@gmail.com' WHERE user_id = 1;
/* comando que utilizamos para actualizar un mail en la tabla users y comprobar que
el trigger funciona */

DROP TRIGGER tg_email;
/* para eliminar un trigger */