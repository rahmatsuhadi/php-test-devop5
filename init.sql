CREATE DATABASE IF NOT EXISTS php_db;
USE php_db;

CREATE TABLE IF NOT EXISTS users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    email VARCHAR(100)
);

INSERT INTO users (name, email) VALUES ('Eka', 'eka@email.com');
INSERT INTO users (name, email) VALUES ('Kyaaa ', 'kyuy1@email.com');
INSERT INTO users (name, email) VALUES ('Jujuni ', 'jujuni@email.com');
INSERT INTO users (name, email) VALUES ('Jane ', 'jane@example.com');
INSERT INTO users (name, email) VALUES ('Ani ', 'ani@example.com');
