DROP DATABASE menu;

CREATE DATABASE menu;

USE menu;

CREATE TABLE Nutricionista(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(120) NOT NULL,
CRN VARCHAR(120) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE usario(
id INT NOT NULL AUTO_INCREMENT,
nome VARCHAR(120) NOT NULL,
email VARCHAR(120) NOT NULL,
senha VARCHAR(120) NOT NULL,
PRIMARY KEY(id)
);

CREATE TABLE ingredientes(
id INT NOT NULL AUTO_INCREMENT,
descrição VARCHAR(120) NOT NULL,
calorias FLOAT NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE cardapio(
id INT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(120) NOT NULL,
data DATE NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE item(
id INT NOT NULL AUTO_INCREMENT,
descrição VARCHAR(120) NOT NULL,
calorias FLOAT NOT NULL,
PRIMARY KEY(id)
);

SELECT cardápio.tipo, item.descrição FROM cardápio INNER JOIN item ON cardápio.tipo = item.descrição;