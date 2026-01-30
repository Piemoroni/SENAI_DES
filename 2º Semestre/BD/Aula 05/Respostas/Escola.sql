/* Escola - Exercíco 1: */

DROP DATABASE IF EXISTS escola;  
CREATE DATABASE escola; 

USE escola;

CREATE TABLE professores (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(100),
  telefone VARCHAR(16)
);

CREATE TABLE disciplinas (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  professor_id INTEGER,
  FOREIGN KEY (professor_id) REFERENCES professores(id)
);

CREATE TABLE turmas (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  periodo VARCHAR(20)
);

CREATE TABLE possui(
id INTEGER AUTO_INCREMENT PRIMARY KEY,
turma_id INTEGER,
disciplina_id INTEGER,
FOREIGN KEY(turma_id) REFERENCES turmas(id),
FOREIGN KEY(disciplina_id) REFERENCES disciplinas(id)
);


INSERT INTO professores (nome, email, telefone)
VALUES ("Pietra Moroni", "pmoroni@gmail.com", "(19) 97586-4523");
SELECT * FROM professores;


INSERT INTO disciplinas (nome, professor_id)
VALUES ("Matemática", "1");
SELECT * FROM disciplinas;


INSERT INTO turmas (nome, periodo)
VALUES ("2º EM B", "Diurno");
SELECT * FROM turmas;


INSERT INTO possui (turma_id, disciplina_id)
VALUES ("1", "1");
SELECT * FROM possui;









