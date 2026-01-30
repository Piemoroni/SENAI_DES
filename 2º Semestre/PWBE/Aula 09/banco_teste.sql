DROP DATABASE IF EXISTS banco_teste;
CREATE DATABASE banco_teste;

USE banco_teste;

CREATE TABLE usuario (
      id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(153) NOT NULL,
    email VARCHAR(100) NOT NULL,
    senha VARCHAR(100) NOT NULL
);

CREATE TABLE posts (
      id INTEGER AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    conteudo VARCHAR(200) NOT NULL,
    id_usuario INTEGER,
    FOREIGN KEY (id_usuario) REFERENCES usuario(id)
);

ALTER TABLE usuario
ADD COLUMN cargo VARCHAR(40);

//Exercicio: 

Temos:
-listar e cadastrar

Colocar em posts:
-Listar tem que ser gerente - FEITO
-Cadastrar tem q ser gerente - FEITO
-Excluir tem q ser surpevisor - FEITO
-Atualizar tem q ser surpevisor - FEITO

henreques.com - 30 - Gerente
bento.com - 02 - Supervisor




