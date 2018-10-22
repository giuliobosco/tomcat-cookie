/*
 * Remove users database if exists.
 */
DROP DATABASE IF EXISTS users;

/*
 * Create users database.
 */
CREATE DATABASE users;

/*
 * Create user table in users database.
 */
CREATE TABLE users.user (
	username VARCHAR(64) PRIMARY KEY ,
	password VARCHAR(200),
	name VARCHAR(200)
);

/*
 * Create is_valid_user(varchar) procedure in users database.
 * Used for check if the username is valid.
 */
DELIMITER //
CREATE PROCEDURE users.is_valid_user(username VARCHAR(64))
	BEGIN
		SELECT user.username, user.username FROM users.user WHERE username LIKE user.username;
	END //
DELIMITER ;

/*
 * Insert some test data in user table of users database.
 */
INSERT INTO users.user (username, password, name) VALUES ('root', 'root', 'Root');