CREATE DATABASE users;

CREATE TABLE users.user (
	username VARCHAR(50) PRIMARY KEY,
	password VARCHAR(200),
	name VARCHAR(200)
);