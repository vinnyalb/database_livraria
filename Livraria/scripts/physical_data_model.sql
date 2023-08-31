CREATE DATABASE livraria;

USE livraria;
GO

CREATE TABLE livro(
    idlivro INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    isnb VARCHAR(13) NOT NULL UNIQUE,
    titulo VARCHAR(50) NOT NULL,
    ano_publicacao INT(4) NOT NULL,
    preco FLOAT(10, 2) NOT NULL,
    numero_de_paginas INT(4),
    sinopse VARCHAR(1000) NOT NULL
);

CREATE TABLE cliente(
    idcliente INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    nome_cliente VARCHAR(30) NOT NULL,
    endereco VARCHAR(100) NOT NULL,
    telefone CHAR(14) NOT NULL,
    email VARCHAR(30) NOT NULL CHECK(CHARINDEX('@', email) > 0)
);

CREATE TABLE genero(
    idgenero INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    nome_genero VARCHAR(30) NOT NULL,
    id_livro INT,
    FOREIGN KEY (id_livro) REFERENCES livro(idlivro)
);

CREATE TABLE editora(
    ideditora INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    nome_editora VARCHAR(30) NOT NULL,
    endereco_editora VARCHAR(100) NOT NULL,
    telefone_editora CHAR(14) NOT NULL,
    email_editora VARCHAR(30) NOT NULL CHECK(CHARINDEX('@', email) > 0),
    id_livro INT,
    FOREIGN KEY (id_livro) REFERENCES livro(idlivro)
 );

CREATE TABLE autor(
    idautor INT IDENTITY(1,1) NOT NULL PRIMARY KEY,
    nome_autor VARCHAR(30) NOT NULL,
    biografia VARCHAR(1000) NOT NULL,
    id_livro INT,
    FOREIGN KEY (id_livro) REFERENCES livro(idlivro)
);

CREATE TABLE pedido(
    idpedido INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    data_pedido DATE NOT NULL,
    id_cliente INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(idcliente)
);

CREATE TABLE cliente_pedido_livro(
    idcliente_pedido_livro INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
    id_cliente INT NOT NULL,
    id_pedido INT NOT NULL,
    id_livro INT NOT NULL,
    FOREIGN KEY (id_cliente) REFERENCES cliente(idcliente),
    FOREIGN KEY (id_pedido) REFERENCES pedido(idpedido),
    FOREIGN KEY (id_livro) REFERENCES livro(idlivro)
);