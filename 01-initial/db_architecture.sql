-- главная таблица для описания пользователя
DROP DATABASE IF EXISTS telegram;
CREATE DATABASE telegram;
USE telegram;

DROP TABLE IF EXISTS users;
CREATE TABLE users (
	id BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
	firstname VARCHAR(100),
	lastname VARCHAR(100), 
	login VARCHAR (100),
	email VARCHAR(100) UNIQUE,
	password_hash VARCHAR(256),
	phone BIGINT UNSIGNED UNIQUE,
	
	INDEX idx_users_usernames(firstname, lastname)
);