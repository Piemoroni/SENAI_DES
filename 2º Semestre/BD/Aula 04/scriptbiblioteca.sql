DROP DATABASE IF EXISTS biblioteca;  /* Apaga o banco de dados se já for existente */
CREATE DATABASE biblioteca; /* Cria um bando de dados */

USE biblioteca;

/* Cria tabela de "usuarios" */
CREATE TABLE usuarios (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100),
  nascimento DATE
);


/* Cria tabela de "livros" */
CREATE TABLE livros (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100) NOT NULL,
  autor VARCHAR(100) NOT NULL,
  publicacao VARCHAR(4)
);


/* Cria tabela de "emprestimos" */
CREATE TABLE emprestimos (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  usuario_id INTEGER,
  livro_id INTEGER,
  data_emprestimo DATE,
  data_devolucao DATE,
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
  FOREIGN KEY (livro_id) REFERENCES livros(id)
);


/* Insere 3 usuarios */
INSERT INTO usuarios (nome, email, nascimento)
VALUES ("Pietra Moroni", "pmoroni@gmail.com", "2009/03/27");

INSERT INTO usuarios (nome, email, nascimento)
VALUES ("Alice Costa Rodrigues da Silva", "acosta@gmail.com", "2009/06/20");

INSERT INTO usuarios (nome, email, nascimento)
VALUES ("Natalia Marangoni", "natmarangoni@gmail.com", "2009/04/13");


/* Consulta todos os registros */
SELECT * FROM usuarios;


/* Consulta apenas com o id 2*/
SELECT * FROM usuarios WHERE id = 2; 


/* Insere 3 novos livros */
INSERT INTO livros (titulo, autor, publicacao)
VALUES ("Dom Casmurro", "Machado de Assis", "1899");

INSERT INTO livros (titulo, autor, publicacao)
VALUES ("O Cortico", "Aluisio Azevedo", "1890");

INSERT INTO livros (titulo, autor, publicacao)
VALUES ("Olhos dagua", "Conceicao Evaristo", "2014");


/* Consulta todos os reistros */
SELECT * FROM livros;

/* Consulta titulo e ano de publicacao do livro com id 3 */
SELECT titulo, publicacao FROM livros WHERE id = 3;


/* Insere 2 registros aos emprestimos */
INSERT INTO emprestimos (usuario_id, livro_id, data_emprestimo)
VALUES 
(1, 2, "2023-01-01"),
(3, 1, "2023-02-01");


/* Consulta todos os registros */
SELECT * FROM emprestimos;

/* Consulta apenas id e data de emprestimo */
SELECT usuario_id, data_emprestimo FROM emprestimos;


/* Adicion data de devolucao */
UPDATE emprestimos
SET data_devolucao = "2023-01-10"
WHERE id = 2;


/* Consulta o registro alterado */
SELECT * FROM emprestimos;


/* Remove um reistro da tabela */
DELETE FROM emprestimos
WHERE id = 1;


/* Consulta todos os registros */
SELECT * FROM emprestimos;


/* Consulta id para validar remocao */
SELECT * FROM emprestimos
WHERE id = 1;







