DROP DATABASE IF EXISTS barbearia;
CREATE DATABASE barbearia;

USE barbearia;

CREATE TABLE clientes (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  data_nascimento VARCHAR(100),
  senha VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE barbeiros (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  data_nascimento VARCHAR(100),
  cpf VARCHAR(16),
  senha VARCHAR(100),
  email VARCHAR(100)
);

CREATE TABLE servicos (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  descricao VARCHAR(200),
  preco DECIMAL(10,2)
);

CREATE TABLE atendimentos (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  id_cliente INT,
  id_barbeiro INT,
  id_servico INT,
  data DATETIME,
  FOREIGN KEY (id_cliente) REFERENCES clientes(id),
  FOREIGN KEY (id_barbeiro) REFERENCES barbeiros(id),
  FOREIGN KEY (id_servico) REFERENCES servicos(id)
);

INSERT INTO clientes VALUES (DEFAULT, 'Pietra Moroni', '2009/03/27', 'pietra@gmail.com');
INSERT INTO clientes VALUES (DEFAULT, 'Alice Rodrigues', '2009/06/20', 'alice@gmail.com');
INSERT INTO clientes VALUES (DEFAULT, 'Murilo Chiarello', '2009/02/16 ', 'murilo@gmail.com');

INSERT INTO barbeiros VALUES (DEFAULT, 'Natalia Marangoni', '2009/04/13','589.023.455-63', 'natalia@gmail.com');
INSERT INTO barbeiros VALUES (DEFAULT, 'Leticia Doff', '2008/12/30', '203.569.855-19', 'leticia@gmail.com');
INSERT INTO barbeiros VALUES (DEFAULT, 'Maria Eduarda Urbano', '2009/05/10', '539.201.166-63', 'dudam@gmail.com');

INSERT INTO servicos VALUES (DEFAULT, 'Corte de Barba', '15.00');
INSERT INTO servicos VALUES (DEFAULT, 'Corte de Cabelo', '45.00');
INSERT INTO servicos VALUES (DEFAULT, 'Corte de Sobrancelha', '10.00');

INSERT INTO atendimentos VALUES (DEFAULT, '1', '1', '1', '2025/11/11 14:30');
INSERT INTO atendimentos VALUES (DEFAULT, '2', '3', '2', '2025/11/12 15:30');
INSERT INTO atendimentos VALUES (DEFAULT, '3', '2', '3', '2025/11/13 17:25');
INSERT INTO atendimentos VALUES (DEFAULT, '1', '2', '2', '2025/11/12 20:30');


/* A agenda de um barbeiro para um dia específico. */
SELECT clientes.nome AS cliente, servicos.descricao AS servico, atendimentos.data AS data_atendimento
FROM atendimentos
INNER JOIN clientes ON atendimentos.id_cliente = clientes.id
INNER JOIN servicos ON atendimentos.id_servico = servicos.id
WHERE atendimentos.id_barbeiro = 1 AND DATE(atendimentos.data) = '2025-11-11';

/* O histórico de serviços de um cliente. */
SELECT servicos.descricao AS servico, barbeiros.nome AS barbeiro, atendimentos.data AS data_atendimento
FROM atendimentos
INNER JOIN servicos ON atendimentos.id_servico = servicos.id
INNER JOIN barbeiros ON atendimentos.id_barbeiro = barbeiros.id
WHERE atendimentos.id_cliente = 1;

/* O faturamento total de cada barbeiro em um mês. */
SELECT barbeiros.nome AS barbeiro, SUM(servicos.preco) AS faturamento
FROM atendimentos
INNER JOIN servicos ON atendimentos.id_servico = servicos.id
INNER JOIN barbeiros ON atendimentos.id_barbeiro = barbeiros.id
WHERE MONTH(atendimentos.data) = 11 AND YEAR(atendimentos.data) = 2025
GROUP BY barbeiros.nome;

/* Qual o serviço mais popular (mais agendado). */
SELECT servicos.descricao AS servico, 
COUNT(atendimentos.id) AS quantidade
FROM atendimentos
INNER JOIN servicos ON atendimentos.id_servico = servicos.id
GROUP BY servicos.descricao
ORDER BY quantidade DESC;