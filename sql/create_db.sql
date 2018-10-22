DROP DATABASE IF EXISTS users;

CREATE DATABASE users;

CREATE TABLE users.user (
	username VARCHAR(50) PRIMARY KEY,
	password VARCHAR(200),
	name VARCHAR(200)
);

--
-- DEFINE STORED PROCEDURES
--

DELIMITER //
CREATE PROCEDURE is_valid_user(IN username varchar(64))
	BEGIN
		SELECT username, name FROM users.user WHERE username LIKE user.username;
	END // DELIMITER ;

INSERT INTO users.user (username, password, name) VALUES ('root', 'root', 'Root');