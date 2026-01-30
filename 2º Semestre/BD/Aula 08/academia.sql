DROP DATABASE If EXISTS academia;
CREATE DATABASE academia;
USE academia;

CREATE TABLE planostreino(
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nome_plano VARCHAR(100) NOT NULL, 
    objetivo VARCHAR(300),
    tipo_exercicio VARCHAR(100),
    duracao_semanas INT
);
CREATE TABLE alunos(
    aluno_id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    gênero_F_M VARCHAR(1),
    telefone VARCHAR(20),
    plano_id INT,
    FOREIGN KEY (plano_id) REFERENCES planostreino(id)
);

