DROP DATABASE IF EXISTS clinica;
CREATE DATABASE clinica;
USE clinica;

CREATE TABLE pacientes(
id INTEGER AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL, 
telefone VARCHAR(300),
data_nascimento DATE,
cpf VARCHAR(15),
senha VARCHAR(100),
email VARCHAR(100)
);

CREATE TABLE funcionarios (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL, 
email VARCHAR(300),
data_nascimento DATE,
senha VARCHAR(100),
cargo VARCHAR(100)
);

CREATE TABLE consultas (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
id_paciente INTEGER,
id_funcionario INTEGER,
data DATE,
hora TIME,
status VARCHAR(100),
FOREIGN KEY (id_paciente) REFERENCES pacientes(id),
FOREIGN KEY (id_funcionario) REFERENCES funcionarios(id)
);