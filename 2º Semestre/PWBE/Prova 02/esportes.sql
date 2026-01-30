DROP DATABASE IF EXISTS esportes;
CREATE DATABASE esportes;
USE esportes;

CREATE TABLE alunos(
id INTEGER AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL, 
turma VARCHAR(300) NOT NULL
);

CREATE TABLE equipamentos (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(100) NOT NULL, 
categoria VARCHAR(300) NOT NULL,
quantidade VARCHAR(100) NOT NULL
);

CREATE TABLE locacoes (
id INTEGER AUTO_INCREMENT PRIMARY KEY,
data_locacao DATE NOT NULL,
data_devolucao DATE NOT NULL,
id_aluno INTEGER NOT NULL,
id_equipamento INTEGER NOT NULL,
FOREIGN KEY (id_aluno) REFERENCES alunos(id),
FOREIGN KEY (id_equipamento) REFERENCES equipamentos(id)
);

INSERT INTO alunos VALUES (DEFAULT, 'Pietra Moroni', '2º EM B');
INSERT INTO alunos VALUES (DEFAULT, 'Reenye Lima', '3º EM A');
INSERT INTO alunos VALUES (DEFAULT, 'Robson Souza', '2º EM A');

INSERT INTO equipamentos VALUES (DEFAULT, 'Bola', 'Vôlei', '4');
INSERT INTO equipamentos VALUES (DEFAULT, 'Colete', 'Equipamento', '25');
INSERT INTO equipamentos VALUES (DEFAULT, 'Mini Gol', 'Futebol/futsal', '10');

INSERT INTO locacoes VALUES (DEFAULT, '2025-11-28', '2025-12-10', '1', '1');
INSERT INTO locacoes VALUES (DEFAULT, '2025-12-01', '2025-12-15', '2', '3');
INSERT INTO locacoes VALUES (DEFAULT, '2025-11-24', '2025-11-30', '3', '2');

SELECT equipamentos.categoria AS categoria,
COUNT(locacoes.id) AS total_locacoes
FROM locacoes
INNER JOIN equipamentos
ON locacoes.id_equipamento = equipamentos.id
GROUP BY equipamentos.categoria
ORDER BY total_locacoes DESC;

SELECT alunos.nome AS aluno, 
COUNT(locacoes.id) AS total_locacoes 
FROM locacoes 
INNER JOIN alunos 
ON locacoes.id_aluno = alunos.id 
GROUP BY alunos.nome 
ORDER BY total_locacoes DESC;

SELECT equipamentos.nome AS equipamento, 
COUNT(locacoes.id) AS total_locacoes 
FROM locacoes 
INNER JOIN equipamentos 
ON locacoes.id_equipamento = equipamentos.id 
GROUP BY equipamentos.nome 
ORDER BY total_locacoes DESC;




