CREATE DATABASE bancoAgendaContatos;

CREATE TABLE cidade (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    cep INT NOT NULL
);

CREATE TABLE bairro (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    cidade VARCHAR(100) NOT NULL
);

CREATE TABLE contato (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL,
    apelido VARCHAR(100),
    email VARCHAR(100),
    ddd VARCHAR(2),
    telefone VARCHAR(9),
    idCidade INT,
    FOREIGN KEY (idCidade) REFERENCES cidade(id)
);

CREATE TABLE tipo_contato (
    id INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(100) NOT NULL
);
