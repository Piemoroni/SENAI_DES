/* Musicas - Exercíco 3: */

DROP DATABASE IF EXISTS musicas;  
CREATE DATABASE musicas; 

USE musicas;

CREATE TABLE usuarios (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  email VARCHAR(50)
);

CREATE TABLE playlist (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  usuario_id INTEGER,
  nome VARCHAR(100),
  FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);


CREATE TABLE musicas (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  titulo VARCHAR(100),
  artista VARCHAR(50),
  duracao_minutos INTEGER
);

CREATE TABLE playlist_musica (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  playlist_id INTEGER,
  musica_id INTEGER,
  ordem INTEGER,
  FOREIGN KEY (playlist_id) REFERENCES playlist(id),
  FOREIGN KEY (musica_id) REFERENCES musicas(id)
);


INSERT INTO usuarios (nome, email)
VALUES ("Pietra Moroni", "pmoroni@gmail.com");
SELECT * FROM usuarios;


INSERT INTO playlist (usuario_id, nome)
VALUES ("1", "Musicas SENAI DES");
SELECT * FROM playlist;


INSERT INTO musicas (titulo, artista, duracao_minutos)
VALUES ("Banco de Dados", "Reenye e Robson", "2 minutos");
SELECT * FROM musicas;


INSERT INTO playlist_musica (playlist_id, musica_id, ordem)
VALUES ("1", "1", "1º");
SELECT * FROM playlist_musica;


