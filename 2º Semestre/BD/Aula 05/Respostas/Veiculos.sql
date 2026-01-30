
/* Veiculos - Exercíco 2: */

DROP DATABASE IF EXISTS veiculos;  
CREATE DATABASE veiculos; 

USE veiculos;

CREATE TABLE clientes (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100) NOT NULL,
  cpf VARCHAR(14)
);

CREATE TABLE veiculos (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  modelo VARCHAR(50),
  placa VARCHAR(7),
  categoria VARCHAR(100)
);


CREATE TABLE contratos (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  veiculo_id INTEGER,
  cliente_id INTEGER,
  data_inicio DATE,
  data_fim DATE,
  valor DECIMAL(10,2),
  FOREIGN KEY (veiculo_id) REFERENCES veiculos(id),
  FOREIGN KEY (cliente_id) REFERENCES clientes(id)
);

CREATE TABLE manutencoes (
  id INTEGER AUTO_INCREMENT PRIMARY KEY,
  veiculo_id INTEGER,
  tipo VARCHAR(100),
  data DATE,
  observacao VARCHAR(100),
  FOREIGN KEY (veiculo_id) REFERENCES veiculos(id)
);


INSERT INTO clientes (nome, cpf)
VALUES ("Pietra Moroni", "589.459.122-56");
SELECT * FROM clientes;


INSERT INTO veiculos (modelo, placa, categoria)
VALUES ("Fiat Pulse", "DHR5K55", "SUV");
SELECT * FROM veiculos;


INSERT INTO contratos (veiculo_id, cliente_id, data_inicio, data_fim, valor)
VALUES ("1", "1", "2025/09/02", "2025/10/02", "100000,00");
SELECT * FROM contratos;


INSERT INTO manutencoes (veiculo_id, tipo, data, observacao)
VALUES ("1", "SUV", "2025/09/02", "Veiculo com rodas perfuradas");
SELECT * FROM manutencoes;















