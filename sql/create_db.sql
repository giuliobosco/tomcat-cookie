/*
 * If the database users already exist remove it.
 */
DROP DATABASE IF EXISTS users;

/*
 * Create the users database.
 */
CREATE DATABASE users;

/*
 * Create the user table.
 */
CREATE TABLE users.user (
	username VARCHAR(50) PRIMARY KEY,
	password VARCHAR(200),
	name VARCHAR(200)
);

/*
 * ---------------------------------------------------------------------------------------------------------- procedures
 */

/*
 * Check user procedure.
 */
DELIMITER //
CREATE PROCEDURE is_valid_user(IN username varchar(64))
	BEGIN
		SELECT username, name FROM users.user WHERE username LIKE user.username;
	END // DELIMITER ;

/*
 * --------------------------------------------------------------------------------------------------------- insert data
 */
INSERT INTO users.user (username, password, name) VALUES ('root', 'root', 'Root');