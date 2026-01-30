CREATE TABLE departamento (
  id INT PRIMARY KEY,
  nome VARCHAR(100)
);

CREATE TABLE funcionarios (
  id INT PRIMARY KEY,
  nome VARCHAR(100),
  cargo VARCHAR(50),
  departamento_id INT,
  FOREIGN KEY (departamento_id) REFERENCES departamento(id)
);

