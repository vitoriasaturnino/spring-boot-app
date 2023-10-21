drop schema if exists springbootapp;

drop user if exists 'user'@'localhost';

create schema springbootapp;

create user 'user'@'localhost' identified by 'pass123';

grant select, insert, delete, update on springbootapp.* to user@'localhost';

use springbootapp;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- Inserir usuário 1
INSERT INTO users (name, email, password)
VALUES ('Usuário 1', 'usuario1@example.com', 'senha1');

-- Inserir usuário 2
INSERT INTO users (name, email, password)
VALUES ('Usuário 2', 'usuario-- Inserir usuário 2
INSERT INTO users (name, email, password)
VALUES2@example.com', 'senha2');

-- Inserir usuário 3
INSERT INTO users (name, email, password)
VALUES ('Usuário 3', 'usuario3@example.com', 'senha3');
