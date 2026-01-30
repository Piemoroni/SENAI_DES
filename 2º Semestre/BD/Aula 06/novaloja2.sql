DROP DATABASE IF EXISTS novaloja2;
CREATE DATABASE novaloja2;

USE novaloja2;

CREATE TABLE clientes_loja (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nome VARCHAR(100),
  email VARCHAR(100),
  telefone VARCHAR(20),
  cidade VARCHAR(50),
  idade INT,
  renda_mensal DECIMAL(10,2),
  status VARCHAR(20),
  data_cadastro DATE
);

INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Ana Vitória Cardoso', 'vieiraluiz-henrique@vieira.net', '+55 (051) 8428 2676', 'Rio de Janeiro', 47, 6854.59, 'inativo', '2024-03-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Beatriz Nogueira', 'cardosoenzo-gabriel@hotmail.com', '51 0025 1768', 'Salvador', 39, 2427.15, 'pendente', '2025-04-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiz Gustavo da Mota', 'novaesmaria-clara@porto.org', '71 2036-0808', 'Rio de Janeiro', 39, 8656.51, 'ativo', '2025-05-23');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Thiago Moura', 'enzo-gabriel56@ferreira.br', '(031) 1292 8212', 'Curitiba', 18, 1857.55, 'pendente', '2023-12-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Maitê Teixeira', 'luna39@das.org', '31 0780-7523', 'Rio de Janeiro', 48, 3326.62, 'pendente', '2024-04-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sophie Novaes', 'marcos-vinicius41@silva.br', '(061) 2874-9691', 'Rio de Janeiro', 66, 9885.86, 'inativo', '2024-01-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Mariana da Luz', 'da-rosabianca@uol.com.br', '', 'Rio de Janeiro', 54, 7059.6, 'pendente', '2024-06-11');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ian Correia', 'marianascimento@da.br', '(081) 3030-4909', 'Porto Alegre', 64, 9112.27, 'inativo', '2024-10-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Vitor Gabriel Barros', 'isabelsantos@silveira.br', '+55 (084) 8059-6906', 'Belo Horizonte', 52, 6271.61, 'ativo', '2024-07-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Lucas Ferreira', '', '+55 (084) 3624-1803', 'São Paulo', 61, 7320.44, 'pendente', '2023-12-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Eduardo Gomes', 'gfarias@ribeiro.br', '(061) 7459-3643', 'Recife', 63, 8313.69, 'inativo', '2023-12-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Gabriel Duarte', 'cfogaca@bol.com.br', '+55 (031) 9429-9046', 'Belo Horizonte', 40, 4369.85, 'ativo', '2025-07-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Breno Novaes', 'danieladas-neves@bol.com.br', '61 9962 6498', 'Rio de Janeiro', 42, 1299.16, 'inativo', '2024-12-23');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maysa Costela', 'azevedoluigi@hotmail.com', '', 'Belo Horizonte', 26, 4304.39, 'ativo', '2024-10-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Nina da Cunha', 'da-luzluiz-felipe@pires.br', '61 4010-5547', 'Curitiba', 23, 9729.24, 'ativo', '2024-10-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiza Moraes', 'pietropereira@gmail.com', '81 3243 8452', 'Rio de Janeiro', 27, 6610.54, 'ativo', '2023-11-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiza das Neves', 'ana-julia93@da.br', '0300 562 9575', 'Curitiba', 39, 4331.33, 'ativo', '2023-11-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Fernanda Correia', 'ycarvalho@carvalho.br', '(021) 6493 5182', 'Belo Horizonte', 54, 6788.42, 'inativo', '2024-10-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Lucas Teixeira', 'melosabrina@sales.br', '0800-219-7442', 'Salvador', 53, 1995.34, 'ativo', '2025-01-23');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Isabelly Araújo', '', '(071) 2921 5653', 'Curitiba', 45, 2048.02, 'pendente', '2024-02-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Yuri Farias', 'luiz-otaviomartins@castro.org', '', 'Rio de Janeiro', 40, 9818.1, 'ativo', '2023-10-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Francisco da Costa', 'aliciacostela@melo.net', '+55 (071) 2222 5311', 'Porto Alegre', 55, 2390.73, 'ativo', '2025-06-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Nunes', 'da-cunhaluiz-felipe@bol.com.br', '(031) 7607-0606', 'Curitiba', 34, 7342.65, 'ativo', '2025-05-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Eduarda Nunes', 'correiaclarice@das.org', '11 7904-7630', 'Fortaleza', 49, 2967.96, 'ativo', '2024-05-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Otávio Carvalho', 'sabrinasales@hotmail.com', '+55 (051) 2508 4640', 'Curitiba', 58, 9680.71, 'pendente', '2025-07-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lavínia Moreira', 'brenda67@da.br', '+55 (031) 2651-5186', 'Belo Horizonte', 32, 5529.44, 'ativo', '2024-07-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Otávio Cardoso', 'martinsbenjamin@sales.com', '+55 84 9037 5923', 'Recife', 47, 7932.23, 'ativo', '2024-06-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sabrina Nogueira', 'duartebruna@viana.br', '', 'Rio de Janeiro', 47, 8253.07, 'inativo', '2024-09-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Natália da Rocha', 'miguel05@fernandes.org', '21 9198 6338', 'Porto Alegre', 29, 2182.49, 'ativo', '2025-06-15');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Clarice Castro', '', '11 6981-1510', 'Recife', 20, 2200.84, 'ativo', '2025-05-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bárbara Ferreira', 'rgoncalves@rodrigues.br', '+55 31 9259 3051', 'São Paulo', 25, 2735.7, 'inativo', '2023-12-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiz Otávio Freitas', 'vianaluiz-gustavo@gmail.com', '61 9348-4799', 'Salvador', 46, 9137.86, 'ativo', '2024-02-16');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lorena Aragão', 'leticiapires@rocha.net', '+55 41 1982-8710', 'Salvador', 42, 7968.75, 'pendente', '2024-03-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Otávio Cardoso', 'da-matabrenda@hotmail.com', '+55 84 8129-5628', 'Porto Alegre', 61, 2661.96, 'pendente', '2024-02-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Arthur Alves', 'caue72@barbosa.net', '', 'Salvador', 56, 5573.79, 'ativo', '2024-04-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bruno Fogaça', 'eduardada-rocha@dias.com', '0500-835-3754', 'Porto Alegre', 45, 6441.76, 'ativo', '2025-08-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Lucas Vieira', 'moraesantonio@ig.com.br', '+55 (061) 6617 4026', 'Rio de Janeiro', 26, 3308.12, 'inativo', '2025-05-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Augusto Azevedo', 'ofarias@bol.com.br', '(061) 7078-0568', 'Fortaleza', 41, 4213.97, 'ativo', '2025-07-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiz Otávio das Neves', 'joao-migueljesus@yahoo.com.br', '11 3746 6182', 'Belo Horizonte', 45, 8136.42, 'inativo', '2024-11-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sofia Nunes', '', '+55 (051) 9404 7907', 'Salvador', 41, 8922.69, 'pendente', '2024-10-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Enzo Ribeiro', 'qmonteiro@ig.com.br', '+55 (051) 6545 4709', 'Rio de Janeiro', 29, 9175.79, 'inativo', '2024-02-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Clara Oliveira', 'mariana59@da.br', '', 'Salvador', 64, 9887.84, 'pendente', '2025-08-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Joaquim Pires', 'pietro29@monteiro.br', '(051) 1096-4995', 'Fortaleza', 58, 9012.37, 'inativo', '2025-01-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Vinicius Rodrigues', 'antonio00@hotmail.com', '+55 (081) 3290-8202', 'Salvador', 21, 3193.74, 'ativo', '2024-12-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Juan Barbosa', 'tpeixoto@teixeira.com', '+55 (031) 5295-0392', 'Belo Horizonte', 53, 4961.56, 'inativo', '2025-01-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Miguel Ferreira', 'augusto77@yahoo.com.br', '31 6622 6173', 'Curitiba', 36, 1616.34, 'pendente', '2024-06-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lucca Souza', 'unovaes@hotmail.com', '+55 (031) 3698 4469', 'Belo Horizonte', 23, 6370.59, 'inativo', '2023-12-23');
INSERT INTO clientes_loja VALUES (DEFAULT, 'André Monteiro', 'marcos-vinicius09@gmail.com', '61 7306 7639', 'Rio de Janeiro', 57, 6947.6, 'ativo', '2024-10-16');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Levi Costela', 'hsantos@bol.com.br', '', 'Fortaleza', 66, 8128.17, 'pendente', '2024-05-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Vicente Vieira', '', '+55 (071) 7541-4886', 'Curitiba', 61, 4667.26, 'ativo', '2024-10-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Luiza Farias', 'foliveira@uol.com.br', '+55 (071) 8313 8471', 'Fortaleza', 41, 8291.06, 'pendente', '2024-04-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiz Felipe da Rocha', 'lalves@bol.com.br', '+55 (021) 3459 7382', 'Rio de Janeiro', 62, 2262.53, 'ativo', '2024-01-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Enzo Gabriel Porto', 'asilveira@bol.com.br', '81 6669-8624', 'Curitiba', 52, 3977.13, 'inativo', '2025-02-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Eduardo Farias', 'qfreitas@souza.br', '+55 (081) 7278 8113', 'Fortaleza', 36, 8853.99, 'ativo', '2025-08-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Pietra Teixeira', 'vinicius92@gmail.com', '0800 812 5592', 'Rio de Janeiro', 48, 4734.01, 'inativo', '2025-06-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Yasmin da Mota', 'da-motaryan@viana.br', '', 'Curitiba', 35, 4078.02, 'pendente', '2024-07-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Igor Cardoso', 'ramosdiego@bol.com.br', '+55 (031) 3034 0281', 'São Paulo', 65, 6397.3, 'pendente', '2024-04-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiza Martins', 'sophiamelo@moraes.com', '+55 41 1297-8943', 'Fortaleza', 66, 3361.61, 'pendente', '2025-03-29');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Vicente Araújo', 'vvieira@moura.com', '41 3528 8284', 'Recife', 22, 8665.41, 'inativo', '2024-01-23');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Felipe Pinto', '', '11 7443-8070', 'Salvador', 22, 8444.25, 'ativo', '2024-01-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Gustavo das Neves', 'sofiarezende@ig.com.br', '+55 71 0127 8648', 'Belo Horizonte', 64, 6683.01, 'ativo', '2024-04-11');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Kevin Pereira', 'mouramurilo@lima.com', '81 7727 7254', 'Recife', 39, 6787.43, 'pendente', '2025-07-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Marcelo da Conceição', 'limaemilly@uol.com.br', '', 'Rio de Janeiro', 27, 9183.51, 'inativo', '2023-10-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Diogo Alves', 'calebefreitas@ig.com.br', '0900-764-4753', 'Fortaleza', 26, 6065.49, 'pendente', '2023-12-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Cauã Castro', 'nogueiraluana@barros.com', '+55 (081) 4380-7517', 'Salvador', 61, 1493.39, 'inativo', '2024-10-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiz Miguel da Rosa', 'ljesus@bol.com.br', '+55 84 6589 1409', 'Recife', 34, 2685.02, 'ativo', '2025-03-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bruna Costela', 'isislima@souza.net', '(084) 0107-9611', 'Porto Alegre', 35, 8656.54, 'ativo', '2024-05-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Benjamin Moura', 'rodriguesluiz-felipe@bol.com.br', '+55 84 7798 5700', 'Recife', 27, 9143.58, 'ativo', '2024-12-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Mariana Moreira', 'santosandre@cardoso.br', '(081) 7878-6987', 'Fortaleza', 54, 4473.21, 'inativo', '2024-03-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Alexia Barros', '', '(011) 8554-2108', 'Porto Alegre', 37, 6937.57, 'pendente', '2023-09-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'André das Neves', 'joao-pedroda-cunha@gmail.com', '+55 21 9816 2710', 'São Paulo', 19, 9141.76, 'inativo', '2023-12-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bianca Campos', 'vieiraeduardo@fernandes.br', '+55 (061) 8649-3934', 'Rio de Janeiro', 52, 2784.73, 'ativo', '2025-02-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Thiago Almeida', 'mariasilveira@lima.br', '71 9427-6424', 'Curitiba', 40, 2381.22, 'inativo', '2024-11-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lucca da Rosa', 'lorena54@da.com', '+55 (021) 9282 4340', 'Recife', 31, 2147.6, 'ativo', '2024-10-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bernardo Carvalho', 'bmoura@cardoso.org', '+55 (084) 7639 9873', 'Rio de Janeiro', 54, 2877.71, 'pendente', '2024-07-11');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Benjamin Rezende', 'freitasana-vitoria@da.br', '71 4904 3316', 'Salvador', 57, 8698.3, 'pendente', '2024-08-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Otávio Aragão', 'isabella36@gmail.com', '', 'Recife', 55, 9403.68, 'inativo', '2024-01-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Felipe Costela', 'ugoncalves@ig.com.br', '31 0806-8387', 'Belo Horizonte', 69, 8834.98, 'inativo', '2024-06-23');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Emilly Rodrigues', 'ibarbosa@yahoo.com.br', '(081) 8216 1128', 'Belo Horizonte', 33, 2973.6, 'inativo', '2024-05-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Luiza da Paz', '', '41 7145 3106', 'Recife', 44, 3982.52, 'inativo', '2025-04-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Caroline Azevedo', 'pireslucca@uol.com.br', '(051) 0725 6165', 'Rio de Janeiro', 39, 9809.04, 'inativo', '2024-01-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lucca Nunes', 'rochapietro@da.br', '+55 (011) 5136-6204', 'Recife', 52, 8246.37, 'pendente', '2024-11-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Otávio Campos', 'ana-livia13@gmail.com', '(011) 9539-2001', 'Porto Alegre', 59, 7618.68, 'inativo', '2025-04-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Giovanna Dias', 'mourasarah@melo.org', '', 'Fortaleza', 68, 1482.51, 'inativo', '2024-10-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiz Henrique Oliveira', 'dnogueira@carvalho.com', '84 6922 8451', 'Fortaleza', 44, 1339.71, 'inativo', '2025-02-15');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bruna Vieira', 'arezende@santos.br', '+55 (084) 3946 3108', 'Salvador', 37, 7028.79, 'inativo', '2025-04-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Pietra Freitas', 'larissa34@uol.com.br', '84 6268-7147', 'Curitiba', 25, 7733.89, 'pendente', '2024-07-16');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Vitor Rocha', 'tlima@hotmail.com', '(071) 9831 9646', 'Belo Horizonte', 66, 2074.52, 'ativo', '2024-09-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Júlia Monteiro', 'cardosoenzo@gmail.com', '(041) 2614 0407', 'Curitiba', 46, 8824.97, 'ativo', '2024-03-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Vitória Moraes', '', '+55 61 4118-2811', 'Porto Alegre', 20, 9914.47, 'ativo', '2024-10-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Bernardo Rezende', 'castromanuela@correia.com', '', 'Belo Horizonte', 37, 7096.72, 'pendente', '2025-07-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Daniela Oliveira', 'noahnovaes@viana.com', '+55 (041) 1808-4734', 'Fortaleza', 19, 9642.67, 'pendente', '2024-04-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bernardo Pereira', 'rezendemaria-fernanda@lopes.br', '84 2930-3692', 'Salvador', 32, 7055.63, 'ativo', '2024-06-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Mariane Alves', 'alicecampos@hotmail.com', '+55 81 6679-0098', 'Belo Horizonte', 64, 2868.33, 'ativo', '2024-07-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Júlia da Cruz', 'osales@bol.com.br', '+55 (084) 1395 5187', 'Salvador', 19, 2438.25, 'pendente', '2025-06-23');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Sophia Nascimento', 'elisa41@jesus.com', '+55 (011) 1732-5485', 'Fortaleza', 56, 6628.09, 'ativo', '2025-03-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Ian Silveira', 'rodrigo21@rocha.com', '+55 11 5457 9155', 'Fortaleza', 37, 6874.98, 'pendente', '2025-01-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Raquel Novaes', 'cavalcantiaugusto@souza.com', '', 'Curitiba', 31, 9421.75, 'pendente', '2023-10-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Enzo Almeida', 'dpires@barros.br', '(084) 4600 3931', 'Fortaleza', 68, 8911.18, 'inativo', '2025-02-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Matheus Costela', '', '(081) 2254 0532', 'Fortaleza', 62, 5557.31, 'ativo', '2023-10-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Mirella Caldeira', 'thalescunha@ig.com.br', '+55 71 5423 9430', 'Curitiba', 48, 4042.24, 'ativo', '2025-01-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Pinto', 'rodrigorocha@gmail.com', '(071) 4714 0266', 'Rio de Janeiro', 28, 4321.47, 'ativo', '2025-08-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Eloah Ramos', 'diasbarbara@gmail.com', '+55 84 2003-6331', 'São Paulo', 62, 9885.51, 'inativo', '2025-07-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Leonardo Vieira', 'jsales@hotmail.com', '61 9633-1207', 'São Paulo', 22, 4638.08, 'ativo', '2025-01-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Otávio da Rosa', 'pedro-lucasfreitas@da.com', '', 'Porto Alegre', 62, 5522.39, 'ativo', '2024-09-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Henrique Teixeira', 'wrezende@bol.com.br', '11 9555-6813', 'Salvador', 26, 6027.08, 'ativo', '2025-05-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Leonardo Alves', 'gabriellopes@ig.com.br', '+55 (051) 4499 7859', 'Recife', 42, 5743.67, 'pendente', '2024-04-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Carolina Silva', 'dda-cruz@da.br', '+55 (071) 6680-4481', 'Belo Horizonte', 66, 1719.75, 'inativo', '2024-08-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Yago Farias', 'enzo-gabrielalves@uol.com.br', '+55 61 4880-1824', 'Salvador', 61, 8211.2, 'inativo', '2025-04-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lara Ribeiro', '', '+55 (031) 3772-4375', 'Curitiba', 48, 6251.58, 'pendente', '2024-04-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Igor Jesus', 'lorenzomendes@nunes.org', '51 6386 1386', 'Porto Alegre', 18, 5005.06, 'pendente', '2024-10-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Erick da Paz', 'mariane71@da.com', '', 'São Paulo', 51, 9254.89, 'inativo', '2024-12-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Joaquim Barbosa', 'leonardo60@uol.com.br', '(041) 0319 4429', 'Rio de Janeiro', 40, 2014.41, 'pendente', '2023-11-11');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Matheus da Luz', 'miguel69@gmail.com', '31 5861 8182', 'Recife', 64, 4216.1, 'inativo', '2025-02-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Guilherme Barros', 'arthur48@uol.com.br', '+55 84 2784 0763', 'Recife', 68, 2610.88, 'ativo', '2023-10-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Fernanda Ribeiro', 'francisco73@gmail.com', '+55 51 9153 2000', 'Porto Alegre', 63, 7346.73, 'ativo', '2024-06-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Vicente Ferreira', 'eduardo35@viana.br', '+55 11 4663-9112', 'Fortaleza', 42, 4076.22, 'ativo', '2024-07-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Eduarda Lima', 'amandacaldeira@rezende.com', '(031) 0734 7614', 'Recife', 59, 9274.08, 'inativo', '2024-08-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Vitor Gabriel Gomes', 'raquel44@silveira.com', '', 'Porto Alegre', 53, 6877.25, 'ativo', '2024-11-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Isis Cardoso', '', '(084) 5423 2201', 'Salvador', 55, 1638.42, 'inativo', '2024-05-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Giovanna Pereira', 'emanuella07@uol.com.br', '+55 81 5453-3711', 'Curitiba', 31, 9684.11, 'ativo', '2023-12-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Emanuel Porto', 'pietro76@uol.com.br', '11 0554-9360', 'Fortaleza', 49, 8374.3, 'inativo', '2024-03-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Alice Freitas', 'ifogaca@uol.com.br', '81 4637-0632', 'Curitiba', 29, 4862.83, 'pendente', '2024-08-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Luigi Silva', 'ceciliacunha@yahoo.com.br', '0300 395 8916', 'Recife', 40, 7174.44, 'ativo', '2023-10-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Silva', 'ecardoso@gmail.com', '+55 41 0110-9676', 'Recife', 49, 9730.03, 'inativo', '2024-05-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Manuela da Costa', 'cvieira@uol.com.br', '', 'Belo Horizonte', 53, 9878.3, 'ativo', '2025-02-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Erick Moreira', 'sophie51@yahoo.com.br', '+55 21 1672-5451', 'Recife', 43, 6012.37, 'inativo', '2023-11-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Eduarda Silva', 'da-luzyasmin@costa.br', '31 7121-5650', 'Salvador', 34, 3354.84, 'pendente', '2024-06-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Lucas Barros', 'odias@ig.com.br', '(061) 4715 4257', 'Belo Horizonte', 49, 4019.26, 'pendente', '2023-12-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Dias', '', '(051) 2873 8136', 'Salvador', 67, 5546.63, 'inativo', '2023-12-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Clara Cunha', 'lucas-gabrielfogaca@uol.com.br', '31 8700-6543', 'Porto Alegre', 61, 4108.69, 'inativo', '2024-11-15');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Marcos Vinicius Oliveira', 'pedro-henrique40@oliveira.br', '0800 724 0327', 'Fortaleza', 54, 6592.98, 'pendente', '2024-02-23');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Mariane Teixeira', 'caraujo@bol.com.br', '', 'Recife', 69, 9020.17, 'inativo', '2024-03-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Pedro da Paz', 'rcorreia@yahoo.com.br', '0900 038 5921', 'Salvador', 63, 1803.03, 'ativo', '2025-04-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Augusto Jesus', 'sarah82@gmail.com', '+55 (051) 6410-2348', 'Rio de Janeiro', 49, 1406.24, 'inativo', '2024-10-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Luiz Henrique Lima', 'camposluana@gmail.com', '11 4825-3414', 'Curitiba', 31, 3672.67, 'ativo', '2025-03-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Luiza Teixeira', 'lorena59@rezende.com', '(021) 8265 0068', 'Salvador', 41, 8129.85, 'ativo', '2025-05-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Alice da Cunha', 'ycampos@gmail.com', '31 5668 8057', 'Belo Horizonte', 48, 9427.73, 'pendente', '2024-12-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Enzo Gabriel Ferreira', 'valentinacaldeira@freitas.org', '+55 11 2370-2966', 'Salvador', 70, 7933.55, 'inativo', '2025-06-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Marina Silva', '', '(011) 2422 8376', 'São Paulo', 24, 4774.46, 'pendente', '2023-09-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Maria Vitória Freitas', 'jalmeida@ig.com.br', '+55 (031) 2357 7514', 'Porto Alegre', 58, 4563.6, 'ativo', '2024-10-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Laura Costa', 'joao-guilhermenascimento@gmail.com', '0500-790-9646', 'Rio de Janeiro', 39, 5587.81, 'pendente', '2024-05-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Alexandre Azevedo', 'helenamelo@rezende.org', '(084) 1419 1920', 'Fortaleza', 50, 9670.4, 'inativo', '2024-07-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Pietra Costela', 'maria-claravieira@gmail.com', '+55 61 0269-2561', 'Fortaleza', 48, 5420.82, 'ativo', '2024-02-15');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Larissa Pereira', 'barbosaana-sophia@yahoo.com.br', '+55 (011) 4731 4757', 'São Paulo', 57, 6461.52, 'ativo', '2024-11-29');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lorenzo Viana', 'rgoncalves@goncalves.com', '41 2916 4304', 'Salvador', 23, 2416.52, 'ativo', '2024-04-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Esther Nascimento', 'monteirojoao-pedro@gmail.com', '', 'Belo Horizonte', 24, 9191.34, 'pendente', '2025-02-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Anthony Rocha', 'ana-juliarezende@viana.net', '+55 21 3971-4647', 'Belo Horizonte', 43, 5571.37, 'ativo', '2023-09-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Helena Duarte', 'dda-cruz@fernandes.br', '11 4465-4731', 'Curitiba', 69, 2700.34, 'inativo', '2024-01-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Valentina Caldeira', '', '+55 (061) 9159-2409', 'Salvador', 21, 2254.1, 'pendente', '2024-07-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Agatha Santos', 'da-cunhamarcela@uol.com.br', '31 9602 1361', 'Curitiba', 41, 4472.19, 'ativo', '2025-07-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Maria Vitória Rodrigues', 'cardosomariane@cardoso.net', '+55 51 7196 1434', 'Curitiba', 44, 4430.59, 'ativo', '2024-03-16');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Eloah Barbosa', 'lara15@yahoo.com.br', '81 9435 0784', 'Rio de Janeiro', 37, 4419.45, 'ativo', '2023-10-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Ana Vitória Cardoso', 'da-conceicaoarthur@freitas.com', '', 'Porto Alegre', 39, 3255.11, 'inativo', '2024-07-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Vitor Gabriel Gonçalves', 'rebecamoraes@uol.com.br', '(061) 6514 5665', 'Recife', 40, 6746.81, 'inativo', '2024-03-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Brenda da Mota', 'thiagosouza@ramos.net', '(071) 5313-3294', 'Belo Horizonte', 62, 7621.5, 'pendente', '2025-03-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Diogo Fogaça', 'moreirajoana@ramos.com', '0500-217-6674', 'Belo Horizonte', 54, 8609.9, 'inativo', '2024-03-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Isis Teixeira', 'matheus19@gmail.com', '(071) 6648 7945', 'Recife', 56, 6887.34, 'ativo', '2025-01-29');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Julia Pires', 'mcardoso@uol.com.br', '(084) 8317-7215', 'Porto Alegre', 35, 2088.89, 'inativo', '2024-11-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Camila Cardoso', '', '21 4605-5262', 'Salvador', 50, 6400.17, 'pendente', '2025-09-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Renan Carvalho', 'ccostela@aragao.br', '', 'São Paulo', 32, 1765.46, 'inativo', '2025-07-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Vitor Cardoso', 'yagosilva@hotmail.com', '+55 84 9884-8227', 'São Paulo', 27, 8557.73, 'inativo', '2025-09-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bryan da Conceição', 'amandacaldeira@ig.com.br', '(071) 6386-4499', 'Belo Horizonte', 52, 6961.75, 'inativo', '2025-09-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiz Henrique Pereira', 'nicole89@uol.com.br', '+55 (031) 4344 3823', 'Recife', 68, 2417.81, 'pendente', '2025-08-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Davi Luiz da Conceição', 'ramosolivia@bol.com.br', '+55 84 3031-8396', 'Salvador', 20, 6009.2, 'inativo', '2024-10-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Gabriel Barros', 'fcunha@gmail.com', '(061) 5664-0135', 'Curitiba', 55, 7641.73, 'pendente', '2024-07-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lucca Monteiro', 'thalescastro@almeida.br', '+55 (071) 5920-0654', 'Belo Horizonte', 18, 1274.72, 'inativo', '2025-07-16');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luna da Rosa', 'rcaldeira@goncalves.com', '', 'Fortaleza', 63, 5061.6, 'pendente', '2024-04-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Matheus da Paz', 'enricopinto@ig.com.br', '+55 81 6786-8801', 'Belo Horizonte', 36, 5260.61, 'pendente', '2025-04-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Eduardo da Cunha', '', '0500-229-1954', 'Belo Horizonte', 68, 7110.34, 'pendente', '2025-01-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Letícia Rocha', 'vinicius39@uol.com.br', '+55 21 4678 4706', 'São Paulo', 56, 2360.76, 'ativo', '2024-11-15');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Vitória Cardoso', 'hsouza@ig.com.br', '(051) 6338 2435', 'Porto Alegre', 30, 1571.08, 'pendente', '2024-03-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Olivia Silva', 'marianada-cunha@mendes.net', '(011) 2563-7970', 'São Paulo', 21, 6794.49, 'pendente', '2025-03-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Júlia Moraes', 'mirelladuarte@goncalves.org', '+55 84 3452 2189', 'Fortaleza', 49, 3347.87, 'pendente', '2025-04-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Julia Cardoso', 'moraeslucas-gabriel@hotmail.com', '', 'Fortaleza', 48, 4104.8, 'ativo', '2024-01-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiz Felipe Dias', 'maria-juliacardoso@moreira.com', '84 1736 0277', 'Belo Horizonte', 18, 9403.64, 'ativo', '2025-08-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Ana Vitória Rodrigues', 'qpeixoto@rezende.br', '+55 31 2668-3192', 'Recife', 63, 6329.77, 'inativo', '2023-11-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Isadora Fernandes', 'andrefreitas@yahoo.com.br', '+55 51 4000 1221', 'Recife', 28, 4346.66, 'inativo', '2025-02-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Brenda Lopes', 'castrojoao-felipe@da.br', '41 3171-5817', 'Rio de Janeiro', 19, 4898.29, 'inativo', '2024-01-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Yago Almeida', '', '(021) 4266 5188', 'Recife', 42, 3751.87, 'inativo', '2024-09-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Evelyn Gomes', 'almeidarafaela@cavalcanti.br', '+55 (084) 0440 5549', 'Rio de Janeiro', 64, 1841.85, 'ativo', '2024-03-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Levi Correia', 'correialorenzo@bol.com.br', '', 'Recife', 30, 3123.07, 'ativo', '2025-09-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'André Pinto', 'nunesenrico@teixeira.br', '0800 692 7476', 'Salvador', 52, 7446.26, 'inativo', '2024-06-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Pedro Gomes', 'maria-fernandafogaca@rezende.br', '0500-452-7678', 'Rio de Janeiro', 28, 1413.95, 'pendente', '2024-03-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Julia Freitas', 'aduarte@jesus.com', '+55 (061) 4053 9506', 'Porto Alegre', 45, 6390.22, 'inativo', '2023-11-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Murilo Azevedo', 'qgomes@gmail.com', '+55 51 2752 0769', 'Salvador', 42, 8081.12, 'ativo', '2025-07-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Cecília Nascimento', 'laura63@ig.com.br', '(051) 5571-8750', 'Belo Horizonte', 43, 4830.11, 'pendente', '2024-02-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Martins', 'rebeca01@bol.com.br', '(051) 9133-3288', 'Porto Alegre', 50, 7401.4, 'pendente', '2024-01-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiza Dias', 'teixeirapedro-henrique@souza.net', '', 'Belo Horizonte', 22, 5386.34, 'inativo', '2024-04-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Vitória Cavalcanti', '', '+55 51 4019 2039', 'Rio de Janeiro', 48, 6581.94, 'inativo', '2025-02-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lucas Gabriel Pereira', 'ada-rocha@rocha.br', '+55 11 4936 8265', 'Belo Horizonte', 61, 6012.47, 'pendente', '2024-01-16');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiz Henrique Duarte', 'rodrigolopes@uol.com.br', '+55 (041) 9981-8797', 'Porto Alegre', 42, 5038.73, 'ativo', '2024-08-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Clara Rocha', 'yda-cruz@hotmail.com', '+55 (031) 3429-3789', 'São Paulo', 49, 8881.12, 'ativo', '2024-10-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Davi Lucas Dias', 'arezende@caldeira.com', '84 0933 0517', 'Porto Alegre', 22, 4563.91, 'ativo', '2024-09-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bruna Ramos', 'bianca49@bol.com.br', '+55 (031) 3316 7627', 'São Paulo', 60, 9052.58, 'pendente', '2025-01-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Levi da Rosa', 'cavalcantileandro@dias.br', '', 'Belo Horizonte', 22, 3421.5, 'inativo', '2023-09-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Murilo Novaes', 'sophia79@yahoo.com.br', '(051) 4111 6560', 'Fortaleza', 29, 8465.38, 'ativo', '2025-06-29');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Maria Fernanda Moreira', 'joao-gabrielribeiro@uol.com.br', '+55 (071) 7481-1150', 'São Paulo', 51, 1291.97, 'pendente', '2024-04-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Marcelo Pinto', 'moraesclarice@vieira.br', '(061) 3201-8224', 'Fortaleza', 36, 9896.16, 'pendente', '2024-01-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Ana Clara Duarte', '', '+55 (031) 3945-3567', 'Salvador', 56, 2452.81, 'pendente', '2024-01-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Miguel Peixoto', 'uaragao@uol.com.br', '+55 (021) 4804 2890', 'Belo Horizonte', 35, 3432.96, 'ativo', '2025-01-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Felipe Fernandes', 'raquel35@hotmail.com', '+55 51 7641 6270', 'Fortaleza', 31, 6133.92, 'pendente', '2024-11-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Clara Teixeira', 'joaquim96@yahoo.com.br', '', 'Rio de Janeiro', 36, 2880.86, 'ativo', '2025-04-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Levi Dias', 'benicio05@uol.com.br', '(041) 8635 0116', 'Porto Alegre', 67, 3084.62, 'ativo', '2025-05-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luana da Costa', 'uoliveira@nogueira.br', '+55 11 2367 6715', 'Rio de Janeiro', 33, 4358.7, 'inativo', '2024-03-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lorena Fogaça', 'rafaelda-rocha@das.com', '+55 (071) 6774 0845', 'Belo Horizonte', 58, 8979.62, 'pendente', '2024-09-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Fernando Carvalho', 'yrezende@yahoo.com.br', '41 6481 9563', 'Fortaleza', 61, 1649.02, 'inativo', '2025-06-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Anthony Caldeira', 'olivia79@bol.com.br', '+55 (031) 2870 1326', 'Belo Horizonte', 61, 6214.92, 'ativo', '2024-11-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Alana Barros', 'xnovaes@duarte.net', '(071) 8582 2148', 'Fortaleza', 21, 3714.17, 'pendente', '2024-08-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Arthur Cavalcanti', '', '81 5621 4994', 'São Paulo', 38, 4071.68, 'inativo', '2024-12-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Benjamin Jesus', 'yvieira@ferreira.com', '+55 41 1374 2933', 'São Paulo', 32, 6001.45, 'pendente', '2024-07-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Cauã da Cunha', 'gmoraes@pinto.br', '(084) 2473-4945', 'Belo Horizonte', 66, 3861.6, 'pendente', '2023-11-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Davi Lucas Correia', 'faragao@hotmail.com', '+55 (084) 3263-1457', 'Curitiba', 63, 8555.38, 'ativo', '2024-01-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Alexandre Caldeira', 'cauefarias@hotmail.com', '+55 41 6848-9704', 'Porto Alegre', 37, 5022.96, 'inativo', '2025-09-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sarah da Mata', 'costelajoao-guilherme@yahoo.com.br', '0800 665 9996', 'Curitiba', 27, 8269.63, 'ativo', '2024-11-08');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Camila Pires', 'da-costapaulo@fernandes.br', '(081) 9880 4529', 'Belo Horizonte', 30, 7960.41, 'inativo', '2024-01-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Caio Rocha', 'ana-julia15@hotmail.com', '', 'Fortaleza', 50, 5547.48, 'pendente', '2025-07-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Laura Moura', 'joao-felipe94@bol.com.br', '0800-850-4460', 'Recife', 50, 1909.55, 'ativo', '2025-01-08');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Vitor Gabriel Barbosa', 'luiz-gustavoda-cruz@costela.net', '+55 61 4907 3166', 'Rio de Janeiro', 38, 9770.55, 'ativo', '2025-02-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Heloísa Lima', '', '+55 (041) 3788-0397', 'Curitiba', 25, 9095.19, 'inativo', '2024-06-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Agatha da Paz', 'bruna21@moreira.com', '51 4005 1258', 'São Paulo', 62, 6950.41, 'inativo', '2024-01-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Marcelo da Mata', 'lais05@yahoo.com.br', '(084) 6554-7607', 'Salvador', 40, 9414.11, 'inativo', '2025-02-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Caio Monteiro', 'nfogaca@novaes.com', '(071) 5938-2323', 'São Paulo', 70, 1618.41, 'inativo', '2023-09-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Kamilly da Paz', 'erick58@ramos.org', '', 'Rio de Janeiro', 45, 5977.26, 'inativo', '2024-11-23');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Isabella Moreira', 'matheusfogaca@bol.com.br', '0300-416-0556', 'Rio de Janeiro', 65, 5269.22, 'inativo', '2024-12-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Beatriz Pires', 'maria-luizada-cruz@rocha.br', '(021) 5098 8293', 'Fortaleza', 27, 9733.37, 'ativo', '2025-08-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Camila Alves', 'joao-gabriel57@yahoo.com.br', '(031) 1977-8561', 'Fortaleza', 37, 2504.07, 'ativo', '2025-01-11');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lavínia Costela', 'thales51@uol.com.br', '71 5594-2531', 'Recife', 37, 5670.87, 'pendente', '2024-10-16');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Isadora Melo', 'monteiroanthony@peixoto.com', '+55 (031) 0374-6044', 'São Paulo', 66, 1762.84, 'ativo', '2024-09-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luigi Sales', '', '+55 31 5067-9335', 'Fortaleza', 70, 5129.54, 'ativo', '2025-03-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Marcos Vinicius Pinto', 'giovannacastro@yahoo.com.br', '', 'Porto Alegre', 48, 3889.17, 'inativo', '2024-03-29');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Camila Duarte', 'qcavalcanti@azevedo.com', '(041) 3415 1844', 'Porto Alegre', 49, 7494.91, 'inativo', '2024-06-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Giovanna Freitas', 'yuri84@cavalcanti.com', '(011) 4465 1149', 'São Paulo', 27, 6103.79, 'pendente', '2025-08-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Thomas Moreira', 'luccapires@teixeira.com', '+55 21 1486 3905', 'Recife', 41, 5021.0, 'inativo', '2024-11-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Fernanda Moura', 'leonardodas-neves@da.br', '+55 61 7886-7626', 'Curitiba', 18, 4000.78, 'pendente', '2024-04-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Emanuella da Paz', 'milena66@jesus.br', '+55 21 9101 1787', 'São Paulo', 67, 9349.05, 'pendente', '2025-05-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Kamilly Azevedo', 'vicente85@uol.com.br', '(031) 1796-2013', 'Fortaleza', 18, 6549.76, 'inativo', '2025-02-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Eduarda Moraes', 'agatha64@uol.com.br', '', 'Rio de Janeiro', 38, 3962.34, 'ativo', '2024-05-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Emilly Fernandes', 'duartelaura@ig.com.br', '0500 172 6668', 'Rio de Janeiro', 66, 7743.18, 'pendente', '2024-08-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Bruna Caldeira', '', '+55 41 8324-6085', 'Salvador', 20, 3719.46, 'ativo', '2025-07-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Diego Lima', 'felipesales@pires.br', '+55 81 4268 8786', 'Salvador', 22, 2370.33, 'inativo', '2025-01-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Isabella Almeida', 'aragaohenrique@hotmail.com', '+55 (021) 3920 7086', 'Belo Horizonte', 20, 9578.09, 'inativo', '2024-11-23');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Maria Julia Dias', 'bernardo84@yahoo.com.br', '(031) 8904-1871', 'Belo Horizonte', 61, 6396.48, 'pendente', '2024-01-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sabrina Dias', 'pedro-henriquenunes@bol.com.br', '61 7214 3879', 'Salvador', 57, 9489.18, 'ativo', '2025-01-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Eduarda Ribeiro', 'anthonydas-neves@bol.com.br', '', 'Porto Alegre', 27, 7535.14, 'inativo', '2023-11-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Maria Clara Santos', 'zduarte@ferreira.com', '81 2627 3756', 'Rio de Janeiro', 36, 2311.9, 'pendente', '2024-08-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Ana Lívia Pinto', 'amoura@rodrigues.com', '+55 (061) 8026-4994', 'São Paulo', 34, 2571.37, 'ativo', '2025-03-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Stella Gomes', 'salesraul@hotmail.com', '(021) 3906 9049', 'Belo Horizonte', 23, 1557.84, 'ativo', '2025-07-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Guilherme Pereira', 'igor62@silva.org', '+55 84 2712 3103', 'Porto Alegre', 64, 9821.0, 'inativo', '2024-09-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Pietra Almeida', '', '61 5483-3059', 'Rio de Janeiro', 23, 7820.69, 'inativo', '2024-07-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Paulo Novaes', 'emanuellada-cruz@hotmail.com', '41 8921-6352', 'Curitiba', 58, 9717.5, 'ativo', '2023-10-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Vitória Araújo', 'barbararodrigues@bol.com.br', '', 'Rio de Janeiro', 50, 1523.65, 'ativo', '2024-05-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Rodrigo Moreira', 'alexiacardoso@almeida.br', '+55 (011) 9029-8356', 'São Paulo', 33, 4256.34, 'pendente', '2023-09-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Davi Ribeiro', 'vieiracaua@alves.com', '0500-703-0145', 'Fortaleza', 56, 8613.22, 'ativo', '2023-12-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Clarice Silveira', 'guilherme15@martins.br', '0800-486-2659', 'Recife', 64, 9558.79, 'pendente', '2024-07-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Isabella Barbosa', 'teixeirasophia@da.br', '+55 21 4474 4588', 'Curitiba', 38, 3736.24, 'inativo', '2024-12-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Marcelo Cardoso', 'ana-carolina88@bol.com.br', '+55 51 7833 7433', 'Curitiba', 52, 1687.82, 'inativo', '2023-09-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Jesus', 'leticia07@hotmail.com', '21 2230-7873', 'Belo Horizonte', 46, 2395.06, 'inativo', '2025-05-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Esther Santos', 'yagorodrigues@da.br', '', 'Belo Horizonte', 22, 5450.48, 'pendente', '2025-06-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sophie da Costa', '', '+55 41 0567-2506', 'Belo Horizonte', 30, 2059.61, 'inativo', '2024-06-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Breno Moraes', 'kaiquevieira@yahoo.com.br', '+55 11 7769 6976', 'São Paulo', 63, 7477.99, 'ativo', '2023-12-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Vitor Hugo Moraes', 'mariane25@mendes.com', '+55 31 8542 4225', 'Recife', 19, 6759.99, 'pendente', '2023-11-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Cavalcanti', 'luana39@hotmail.com', '31 4250 2708', 'São Paulo', 30, 9006.3, 'pendente', '2025-05-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Luiza Martins', 'larada-rocha@teixeira.com', '+55 84 3126 3367', 'Rio de Janeiro', 53, 5257.99, 'inativo', '2024-02-08');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Otávio Monteiro', 'icaldeira@ig.com.br', '+55 51 9724 9022', 'São Paulo', 59, 3964.92, 'ativo', '2024-12-08');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Marcos Vinicius Azevedo', 'ada-mata@barbosa.com', '', 'Curitiba', 21, 8870.78, 'inativo', '2025-06-29');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Cecília das Neves', 'luiz-miguelgoncalves@melo.br', '+55 (011) 7196 2476', 'Rio de Janeiro', 65, 1588.04, 'pendente', '2024-03-29');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Mirella Aragão', 'diogo19@yahoo.com.br', '81 5029 0554', 'Curitiba', 30, 6379.84, 'inativo', '2025-04-08');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sabrina da Conceição', 'rodrigueslaura@hotmail.com', '0500-551-9740', 'Curitiba', 64, 8496.49, 'pendente', '2024-05-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Amanda Almeida', '', '0300 659 2801', 'Curitiba', 70, 3281.94, 'ativo', '2024-05-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Joaquim da Mota', 'lrezende@jesus.com', '(061) 5901-9543', 'Recife', 32, 1562.05, 'pendente', '2024-08-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiz Henrique Mendes', 'xda-paz@pinto.br', '61 1717-7591', 'Curitiba', 58, 2112.81, 'pendente', '2025-08-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Raul Campos', 'ramosgiovanna@fogaca.br', '', 'Rio de Janeiro', 38, 4987.42, 'pendente', '2024-05-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Gabriel Dias', 'raul76@ribeiro.net', '+55 (061) 5671-7229', 'Porto Alegre', 40, 3612.0, 'pendente', '2024-02-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Mariane Moura', 'salesraquel@bol.com.br', '61 1250 8423', 'Rio de Janeiro', 33, 5085.02, 'pendente', '2024-03-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Clara Correia', 'wnunes@barros.com', '(021) 6484-3374', 'Rio de Janeiro', 70, 6288.74, 'ativo', '2024-05-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Peixoto', 'vmendes@campos.br', '31 5648 1618', 'Recife', 62, 4308.27, 'ativo', '2025-04-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Francisco da Rocha', 'caue48@uol.com.br', '61 7408 6955', 'Porto Alegre', 40, 6062.42, 'inativo', '2025-01-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Vitor Santos', 'iaragao@das.com', '0900-611-2303', 'Salvador', 64, 5964.11, 'inativo', '2023-10-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Alice Cardoso', '', '(021) 4311 6719', 'Rio de Janeiro', 27, 7910.96, 'ativo', '2023-10-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Renan Ramos', 'diego96@ig.com.br', '+55 11 2072 9252', 'Rio de Janeiro', 56, 9857.96, 'pendente', '2024-02-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Pedro Miguel Lopes', 'dviana@santos.com', '61 1512 5461', 'Salvador', 24, 4730.87, 'pendente', '2024-06-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Luiz Henrique Jesus', 'augustosilva@barbosa.org', '+55 41 5170 7779', 'Recife', 70, 7033.67, 'pendente', '2023-10-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Raquel Pereira', 'nicoleda-cunha@hotmail.com', '+55 (081) 9950-8121', 'Belo Horizonte', 46, 7208.69, 'ativo', '2025-09-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Benjamin Silva', 'souzaluiz-miguel@almeida.br', '+55 (051) 8897-1451', 'Rio de Janeiro', 46, 8592.57, 'inativo', '2024-01-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Daniel Silveira', 'brunocardoso@gmail.com', '11 2092-6032', 'Porto Alegre', 31, 1213.78, 'inativo', '2025-01-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Elisa Pereira', 'bda-rocha@gmail.com', '', 'Fortaleza', 60, 7006.47, 'inativo', '2025-05-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Fernanda Aragão', 'pereiraluiz-henrique@gmail.com', '0800 094 5930', 'Rio de Janeiro', 46, 3247.64, 'pendente', '2024-10-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maitê da Rosa', 'joao-vitorrezende@rodrigues.br', '+55 81 7226 3090', 'Fortaleza', 66, 1659.94, 'inativo', '2024-07-23');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Vitor Castro', '', '+55 11 6225-3907', 'Curitiba', 70, 2078.44, 'inativo', '2024-11-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Alana da Rocha', 'vitor-gabriel09@silva.com', '+55 84 8831 1633', 'São Paulo', 28, 6070.13, 'ativo', '2023-09-16');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Vitor Hugo Correia', 'ana-livia15@gmail.com', '(011) 3788 1334', 'Salvador', 41, 7773.98, 'pendente', '2025-05-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Laís Pinto', 'miguelsilveira@campos.com', '+55 51 2176 4394', 'Rio de Janeiro', 68, 5376.92, 'ativo', '2025-05-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Letícia da Mata', 'duarteluana@uol.com.br', '', 'Salvador', 40, 7886.34, 'pendente', '2023-10-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Rafael da Conceição', 'icardoso@fernandes.com', '0900-683-2732', 'Salvador', 53, 6143.55, 'ativo', '2024-07-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Levi Moreira', 'cavalcantimarcelo@gmail.com', '+55 (021) 2828 5559', 'São Paulo', 46, 4584.65, 'pendente', '2024-03-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Ana Laura da Mota', 'zteixeira@hotmail.com', '+55 (081) 6741-6301', 'Recife', 47, 1489.18, 'ativo', '2025-06-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Isabelly Oliveira', 'jmendes@bol.com.br', '(084) 9439-0631', 'Rio de Janeiro', 40, 9113.87, 'inativo', '2025-05-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Camila Gomes', 'miguelrodrigues@gmail.com', '+55 (084) 9468 9180', 'Rio de Janeiro', 52, 1803.85, 'pendente', '2025-06-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sarah Cunha', '', '+55 31 3018-2861', 'Salvador', 26, 5808.85, 'inativo', '2024-10-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Erick Silveira', 'da-motabeatriz@araujo.br', '', 'Rio de Janeiro', 40, 4424.33, 'inativo', '2024-05-11');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Brenda Melo', 'ryan77@yahoo.com.br', '(041) 1738 4264', 'Curitiba', 70, 4957.24, 'ativo', '2024-10-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Olivia Pinto', 'arthurlopes@yahoo.com.br', '0900 112 1140', 'Curitiba', 62, 5542.95, 'pendente', '2024-08-29');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Matheus Moura', 'amanda81@costela.br', '41 4587 9329', 'Porto Alegre', 52, 1481.25, 'ativo', '2024-12-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Gabrielly Silva', 'ygoncalves@uol.com.br', '(041) 5369-6190', 'São Paulo', 47, 2785.05, 'ativo', '2024-03-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Vitória Araújo', 'murilorodrigues@oliveira.br', '+55 (011) 0914-6163', 'Fortaleza', 31, 8804.55, 'pendente', '2024-08-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Francisco Melo', 'alexandre18@nogueira.br', '+55 (031) 2809-8962', 'Fortaleza', 33, 2023.36, 'ativo', '2023-10-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Isadora Viana', 'luiz-miguelgomes@campos.org', '', 'São Paulo', 28, 7681.7, 'pendente', '2025-03-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bruna Castro', 'antoniocavalcanti@gomes.br', '+55 81 1471-4331', 'São Paulo', 46, 2169.99, 'ativo', '2024-08-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Alana da Conceição', '', '+55 (071) 9501-8373', 'Fortaleza', 39, 3907.94, 'ativo', '2024-04-15');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Stella Silva', 'maria-vitoria48@nunes.net', '21 9085-5902', 'Rio de Janeiro', 31, 6994.67, 'pendente', '2024-12-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sofia Martins', 'gustavo-henriquenunes@silveira.br', '+55 (061) 3656 4446', 'Salvador', 49, 1646.08, 'pendente', '2024-02-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lorena Duarte', 'vgomes@uol.com.br', '+55 21 7482 6094', 'Recife', 37, 7575.4, 'ativo', '2024-11-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Eduarda Peixoto', 'benjamin63@costa.com', '+55 (084) 2681-7125', 'Recife', 33, 4539.25, 'ativo', '2025-07-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Davi Silva', 'teixeiramaite@bol.com.br', '', 'Porto Alegre', 20, 6235.18, 'inativo', '2023-10-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ian Mendes', 'otavio04@yahoo.com.br', '0800-018-0271', 'Fortaleza', 36, 5647.78, 'inativo', '2024-05-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Eduarda da Rocha', 'benicioramos@santos.br', '+55 41 2200 4231', 'Rio de Janeiro', 52, 6893.3, 'ativo', '2023-12-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Felipe Aragão', 'amoura@ig.com.br', '(021) 9400 1190', 'São Paulo', 33, 2696.57, 'ativo', '2023-10-08');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Miguel Cunha', 'jramos@uol.com.br', '21 7126 3001', 'Recife', 53, 3840.48, 'pendente', '2024-06-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Erick Duarte', '', '0300 968 4999', 'São Paulo', 41, 7766.77, 'inativo', '2025-04-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Kaique Moura', 'barbosabrenda@rocha.com', '0500 968 5503', 'Salvador', 53, 7032.35, 'pendente', '2025-03-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Amanda Fernandes', 'leonardosilva@porto.org', '', 'Belo Horizonte', 42, 6698.26, 'inativo', '2025-07-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Alexia Fogaça', 'fernandamelo@hotmail.com', '0800 714 2511', 'São Paulo', 31, 2219.0, 'pendente', '2023-10-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lorena Novaes', 'caio15@santos.net', '+55 81 7081 0018', 'São Paulo', 24, 3953.88, 'ativo', '2025-06-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Mariane Melo', 'ana-juliamartins@ig.com.br', '0500-435-3408', 'Curitiba', 20, 4678.49, 'inativo', '2024-11-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Larissa Ferreira', 'cardosofrancisco@nogueira.org', '+55 41 6563 7461', 'Curitiba', 46, 4103.86, 'inativo', '2025-01-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Danilo Pinto', 'pcostela@lopes.br', '+55 (084) 8690 7139', 'Recife', 68, 7964.37, 'inativo', '2024-12-08');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Felipe Araújo', 'bernardosouza@moura.br', '0900 821 5594', 'Fortaleza', 38, 5552.0, 'pendente', '2025-01-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Luiz Otávio Caldeira', 'kda-mata@bol.com.br', '', 'Recife', 60, 9077.35, 'pendente', '2023-12-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Marcela Souza', '', '+55 (051) 9661-9436', 'Porto Alegre', 64, 8203.19, 'inativo', '2024-08-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Esther Moreira', 'henriqueda-mota@campos.com', '84 8191 6926', 'Rio de Janeiro', 51, 6585.55, 'pendente', '2024-11-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Vicente da Luz', 'nuneslarissa@goncalves.net', '(031) 7711 6030', 'Belo Horizonte', 20, 3335.85, 'inativo', '2025-01-08');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Laís Souza', 'carolinada-cruz@oliveira.com', '51 2845 4485', 'Porto Alegre', 23, 1365.88, 'inativo', '2025-05-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Julia Moreira', 'ana-carolina20@da.br', '0800 942 9218', 'Rio de Janeiro', 19, 2072.84, 'pendente', '2024-09-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. João Miguel Novaes', 'milena18@bol.com.br', '+55 31 5837-1198', 'Curitiba', 23, 1231.12, 'pendente', '2023-10-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Marcos Vinicius Azevedo', 'cardosoalana@yahoo.com.br', '', 'Fortaleza', 41, 5216.83, 'ativo', '2024-07-29');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Marcelo Monteiro', 'nascimentoana@uol.com.br', '61 2604-4185', 'Salvador', 23, 8599.31, 'inativo', '2024-01-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Nathan Carvalho', 'peixotoanthony@yahoo.com.br', '+55 (084) 0686 2806', 'Salvador', 31, 9580.69, 'inativo', '2025-08-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sarah Costa', 'dalmeida@hotmail.com', '+55 (011) 5289-7254', 'Fortaleza', 70, 5501.47, 'inativo', '2025-03-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Rafaela Carvalho', '', '+55 11 3501 9131', 'Fortaleza', 37, 1385.1, 'pendente', '2025-06-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Diogo Jesus', 'marianecaldeira@fernandes.br', '+55 51 8649 8905', 'Rio de Janeiro', 52, 3704.16, 'inativo', '2025-04-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Augusto Gomes', 'elisacorreia@pereira.com', '(041) 1026-5361', 'Belo Horizonte', 60, 3729.18, 'inativo', '2023-10-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Caio Viana', 'vitor-gabriel08@sales.com', '', 'Rio de Janeiro', 37, 9794.51, 'ativo', '2024-11-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Alexandre da Rocha', 'meloana-julia@hotmail.com', '(084) 2693-6093', 'Curitiba', 43, 2855.83, 'inativo', '2024-11-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Noah Farias', 'joao-lucasrocha@bol.com.br', '+55 (041) 9696 4161', 'Rio de Janeiro', 39, 7417.28, 'inativo', '2024-08-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Alice Santos', 'heloisa05@hotmail.com', '(061) 2145-5996', 'Curitiba', 54, 4761.43, 'ativo', '2025-05-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Sophia da Costa', 'davi96@gmail.com', '+55 (031) 2482 6465', 'Recife', 59, 6685.74, 'ativo', '2024-01-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Caroline da Rosa', 'nicolasferreira@carvalho.net', '84 2448-7742', 'Rio de Janeiro', 61, 6792.07, 'ativo', '2023-11-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Leandro Araújo', 'cavalcantifernanda@uol.com.br', '+55 61 0300 9438', 'Rio de Janeiro', 55, 3214.3, 'ativo', '2025-08-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Eduarda Viana', '', '84 2712 8194', 'São Paulo', 39, 1956.23, 'pendente', '2024-02-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Cecília da Rocha', 'eduardo84@gmail.com', '+55 84 6787 5593', 'Curitiba', 27, 1684.64, 'ativo', '2023-11-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Catarina Farias', 'murilomelo@freitas.br', '0500-588-0228', 'Salvador', 54, 3291.54, 'pendente', '2023-12-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Natália Monteiro', 'bcaldeira@uol.com.br', '+55 51 4732 5811', 'Rio de Janeiro', 67, 8012.76, 'pendente', '2025-04-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Pietra Araújo', 'vianabreno@da.net', '+55 81 3570 8192', 'Curitiba', 50, 1907.03, 'ativo', '2025-01-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Noah Cunha', 'vianalucas@gmail.com', '+55 (021) 4887-1299', 'Porto Alegre', 50, 8714.48, 'inativo', '2024-05-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Danilo Ribeiro', 'carlos-eduardonogueira@nunes.br', '41 1081-1689', 'Belo Horizonte', 67, 2412.54, 'ativo', '2024-11-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Daniela Rodrigues', 'antoniomendes@almeida.br', '', 'São Paulo', 51, 8306.69, 'inativo', '2025-01-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lucas Gabriel Duarte', 'mcardoso@hotmail.com', '+55 21 9437-7079', 'Salvador', 40, 3630.49, 'inativo', '2024-12-29');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Nicole Costa', 'thiagoda-cruz@nunes.br', '+55 (061) 8569-6926', 'Belo Horizonte', 61, 4872.78, 'inativo', '2025-01-15');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Beatriz Almeida', '', '+55 (041) 2041 1828', 'Salvador', 52, 5313.72, 'inativo', '2023-11-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Vinicius Cardoso', 'ppereira@nunes.com', '(071) 2524-1590', 'Salvador', 44, 4693.68, 'pendente', '2025-02-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'André Ribeiro', 'oliveiradaniela@gmail.com', '+55 (051) 2684 2863', 'Curitiba', 66, 5040.85, 'pendente', '2023-11-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Fernanda Farias', 'anthonyfarias@ig.com.br', '+55 21 8543-3573', 'Rio de Janeiro', 38, 6702.31, 'ativo', '2024-11-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luana Ramos', 'otavioda-paz@azevedo.br', '', 'Fortaleza', 49, 8243.8, 'inativo', '2024-10-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ryan Farias', 'lfernandes@ramos.com', '+55 (021) 8488-8322', 'Porto Alegre', 45, 8766.68, 'ativo', '2025-08-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Juan Martins', 'nascimentoana-clara@pires.net', '+55 41 7565-1425', 'Salvador', 49, 6571.34, 'inativo', '2024-07-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Kevin Nunes', 'rodriguesleonardo@da.com', '(021) 2397-7314', 'São Paulo', 48, 9482.92, 'ativo', '2025-03-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Matheus Novaes', 'ian86@ribeiro.br', '0300 504 1132', 'Belo Horizonte', 62, 2609.99, 'ativo', '2024-05-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Melissa Almeida', 'nnascimento@bol.com.br', '84 0954-0084', 'Rio de Janeiro', 69, 4954.38, 'pendente', '2025-06-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Raul Barbosa', '', '81 9173 7302', 'Belo Horizonte', 45, 9835.14, 'pendente', '2023-11-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Pedro Miguel Ramos', 'alicialopes@yahoo.com.br', '', 'Fortaleza', 51, 4560.7, 'ativo', '2025-06-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Isaac Melo', 'maria-cecilia00@rezende.br', '0300-588-7043', 'Salvador', 28, 6983.06, 'ativo', '2025-05-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Helena Nunes', 'augustoazevedo@uol.com.br', '+55 51 3722 3940', 'Fortaleza', 61, 4398.85, 'inativo', '2025-02-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maitê Novaes', 'moreiramariana@gmail.com', '+55 51 7853 1305', 'Porto Alegre', 68, 9960.45, 'pendente', '2024-07-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Eduardo Costa', 'isisviana@hotmail.com', '81 9744 9342', 'Recife', 47, 6633.66, 'inativo', '2024-03-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Heloísa Teixeira', 'ferreiraluiz-henrique@ig.com.br', '+55 61 6081-3337', 'Fortaleza', 45, 9048.29, 'pendente', '2024-09-29');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lucas Barbosa', 'snunes@hotmail.com', '+55 (051) 9099-7128', 'São Paulo', 48, 5566.2, 'pendente', '2024-05-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Pedro Miguel Gomes', 'luiz-henriquelima@ig.com.br', '', 'São Paulo', 37, 4993.82, 'ativo', '2024-04-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Francisco Rodrigues', 'daniel28@almeida.net', '21 7181 5896', 'São Paulo', 22, 3592.31, 'ativo', '2023-12-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Rafaela Teixeira', '', '(061) 6116 1674', 'Fortaleza', 29, 9127.39, 'ativo', '2025-02-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Raquel da Luz', 'sabrinadias@gmail.com', '0800 722 8543', 'São Paulo', 20, 7329.99, 'pendente', '2025-07-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Valentina da Luz', 'diegojesus@hotmail.com', '(081) 1597-3353', 'Salvador', 60, 6026.71, 'ativo', '2025-03-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Olivia Nunes', 'vitoriaalmeida@yahoo.com.br', '+55 31 3091-3731', 'Fortaleza', 49, 3320.78, 'inativo', '2025-05-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Júlia Farias', 'peixotodavi-lucas@bol.com.br', '(081) 0680 2287', 'Belo Horizonte', 69, 3174.66, 'pendente', '2025-01-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. João Guilherme Almeida', 'qmoura@da.com', '', 'Belo Horizonte', 67, 2207.83, 'ativo', '2024-10-23');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Thales Farias', 'jcorreia@bol.com.br', '(011) 7344-0182', 'Fortaleza', 57, 6773.26, 'pendente', '2024-05-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Agatha Novaes', 'almeidayuri@carvalho.net', '+55 51 7094 7058', 'Rio de Janeiro', 32, 2669.13, 'inativo', '2024-09-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Alícia Cavalcanti', 'oliviadas-neves@uol.com.br', '+55 (011) 5610 1434', 'São Paulo', 41, 1797.99, 'inativo', '2025-03-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Pietro Melo', 'paulonogueira@pinto.com', '+55 (041) 5602 0346', 'São Paulo', 20, 5356.9, 'pendente', '2024-10-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Davi Luiz da Conceição', '', '+55 (011) 5919 5134', 'Rio de Janeiro', 18, 3657.25, 'ativo', '2024-06-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Eduardo Cavalcanti', 'pietrarocha@pires.com', '+55 (071) 8999-3451', 'Fortaleza', 64, 4501.71, 'ativo', '2024-07-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'André Santos', 'giovanna65@freitas.com', '', 'Curitiba', 32, 6006.06, 'inativo', '2024-04-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lucas Fernandes', 'kjesus@viana.br', '+55 31 8069-6870', 'Belo Horizonte', 22, 6406.3, 'inativo', '2024-10-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Elisa Oliveira', 'brenocunha@ig.com.br', '0900-002-9609', 'Rio de Janeiro', 33, 9980.81, 'ativo', '2024-05-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bruno Alves', 'nsales@costa.com', '41 4747-4544', 'Porto Alegre', 63, 6379.84, 'ativo', '2024-11-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Kevin Duarte', 'heloisa33@uol.com.br', '+55 61 7871 2960', 'São Paulo', 18, 5589.38, 'pendente', '2025-07-16');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Nathan Cardoso', 'ana-luiza72@uol.com.br', '+55 (031) 6424 5729', 'Fortaleza', 42, 2821.54, 'ativo', '2024-01-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Cecília Aragão', 'da-motamaria-luiza@cardoso.br', '0500-369-5474', 'São Paulo', 24, 7356.94, 'pendente', '2024-07-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bryan Araújo', 'sfogaca@ig.com.br', '', 'São Paulo', 66, 4391.94, 'ativo', '2024-06-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Pedro Lucas Gomes', '', '(071) 1662 5253', 'Belo Horizonte', 38, 8570.7, 'inativo', '2025-02-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Yago Fernandes', 'nicolas49@ig.com.br', '+55 (061) 0841-7372', 'Fortaleza', 65, 8386.55, 'pendente', '2024-09-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Gustavo Henrique Ferreira', 'nunesgabrielly@uol.com.br', '+55 41 4601-4091', 'Fortaleza', 36, 8255.01, 'inativo', '2025-01-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Luiza Souza', 'renan65@bol.com.br', '+55 (071) 1935-1939', 'Porto Alegre', 62, 6439.12, 'pendente', '2024-02-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lucca Lima', 'nathan94@pereira.br', '(021) 6075 8817', 'Curitiba', 42, 1202.34, 'ativo', '2025-04-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Letícia da Paz', 'fernanda46@uol.com.br', '+55 (051) 3687 1662', 'Porto Alegre', 40, 9632.89, 'inativo', '2024-12-30');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Nina Souza', 'miguelviana@hotmail.com', '', 'Porto Alegre', 64, 6471.56, 'ativo', '2024-12-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Benício Costela', 'jda-costa@gmail.com', '41 3052-3189', 'Belo Horizonte', 38, 3933.58, 'inativo', '2023-12-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Olivia Oliveira', 'stella11@ig.com.br', '+55 81 1696 1158', 'São Paulo', 51, 3636.02, 'ativo', '2024-03-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Stephany da Mata', 'ooliveira@silva.br', '(061) 8017-7749', 'Recife', 67, 7814.89, 'pendente', '2025-06-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Laura Nascimento', '', '(061) 5617-5081', 'Salvador', 60, 7864.87, 'ativo', '2025-07-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Julia da Luz', 'carolinagomes@jesus.com', '21 7088 4152', 'São Paulo', 31, 9377.26, 'ativo', '2023-09-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Fernanda Lima', 'zteixeira@fernandes.com', '+55 (061) 7198-8407', 'São Paulo', 68, 5736.26, 'ativo', '2025-04-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Davi Lucca Peixoto', 'joao-felipeduarte@silva.org', '', 'Porto Alegre', 56, 4594.44, 'pendente', '2024-11-29');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Nicolas Sales', 'mfreitas@bol.com.br', '21 8932 9664', 'São Paulo', 47, 5046.84, 'inativo', '2025-09-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Davi Luiz Castro', 'xteixeira@silva.org', '21 7273-1147', 'Rio de Janeiro', 69, 8183.71, 'ativo', '2024-01-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Emanuelly Rezende', 'lsales@da.com', '+55 11 5360-2031', 'Salvador', 61, 3462.44, 'ativo', '2023-10-15');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Erick Martins', 'nda-rocha@ig.com.br', '(011) 6465 8626', 'Belo Horizonte', 40, 3872.8, 'ativo', '2024-04-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Rafael da Cunha', 'zazevedo@peixoto.com', '0800 722 9765', 'Rio de Janeiro', 32, 4777.94, 'inativo', '2024-11-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Thiago Campos', 'azevedomariane@ig.com.br', '0900 496 7053', 'Recife', 44, 9790.59, 'pendente', '2025-05-29');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Augusto Rocha', '', '0800-037-1068', 'Salvador', 64, 7121.83, 'pendente', '2025-02-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Manuela Cardoso', 'felipe75@campos.org', '(041) 9744 9953', 'Recife', 40, 2800.27, 'inativo', '2025-01-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Yasmin da Rosa', 'fariasmariana@uol.com.br', '+55 31 4794-6140', 'Belo Horizonte', 42, 6713.51, 'pendente', '2024-09-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Joana Silveira', 'andre33@gmail.com', '11 9633 1629', 'Porto Alegre', 22, 9791.4, 'ativo', '2024-07-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Sophia Lima', 'rebeca88@barbosa.com', '(021) 6642-7122', 'Recife', 68, 2175.82, 'inativo', '2024-11-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Gustavo Henrique Porto', 'davicardoso@barros.br', '(061) 9543-2803', 'São Paulo', 66, 4528.51, 'inativo', '2025-04-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Lucas Gabriel Fernandes', 'ninacastro@bol.com.br', '+55 (061) 7873-1654', 'Fortaleza', 42, 8369.67, 'ativo', '2024-11-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Antônio Campos', 'henrique26@cardoso.com', '', 'São Paulo', 70, 9719.02, 'pendente', '2025-05-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Beatriz Silva', 'juan08@farias.com', '21 6344-7774', 'Fortaleza', 34, 6652.52, 'inativo', '2025-05-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Catarina Moura', 'raul58@hotmail.com', '+55 (081) 1734 9876', 'Rio de Janeiro', 54, 2372.23, 'pendente', '2024-12-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Vitor Gabriel Pereira', '', '+55 81 3278-4259', 'Rio de Janeiro', 66, 4230.61, 'ativo', '2024-03-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Guilherme Silva', 'das-nevesdavi-lucas@caldeira.com', '61 3610-7143', 'Rio de Janeiro', 19, 6957.31, 'pendente', '2023-10-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Eduardo Lopes', 'francisco85@hotmail.com', '+55 41 4663-9971', 'Curitiba', 66, 6884.24, 'ativo', '2024-02-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Evelyn Costela', 'jdas-neves@caldeira.br', '+55 (011) 3784-4267', 'Fortaleza', 49, 3381.41, 'pendente', '2024-01-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Renan Azevedo', 'ana84@cunha.com', '', 'Rio de Janeiro', 63, 8153.62, 'ativo', '2023-10-05');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Agatha da Rocha', 'da-mataeduardo@da.com', '+55 11 2662 6641', 'Recife', 36, 7406.93, 'ativo', '2025-07-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Marina Oliveira', 'isis77@hotmail.com', '41 7910-3667', 'Porto Alegre', 29, 8208.17, 'pendente', '2023-10-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lorena Nunes', 'pda-costa@gmail.com', '+55 (041) 2414 3520', 'Fortaleza', 47, 6342.73, 'inativo', '2024-01-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Mariane Gonçalves', 'zcavalcanti@silveira.com', '51 1729 7934', 'São Paulo', 46, 9701.91, 'pendente', '2024-01-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Rebeca Ribeiro', 'rodrigocampos@da.br', '(081) 4633 3487', 'Salvador', 53, 8417.15, 'pendente', '2024-12-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Miguel da Mata', '', '71 0476-5077', 'Belo Horizonte', 37, 8756.18, 'pendente', '2025-03-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Daniel Rocha', 'maria-eduarda40@bol.com.br', '', 'Recife', 32, 1213.02, 'pendente', '2023-10-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luana Viana', 'yda-rosa@uol.com.br', '+55 31 9763-8084', 'Belo Horizonte', 61, 3807.02, 'ativo', '2024-09-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'João Guilherme Campos', 'carvalhoana-carolina@nunes.br', '84 6603 4260', 'Fortaleza', 57, 6445.71, 'ativo', '2024-11-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dra. Eloah da Rosa', 'jda-rosa@yahoo.com.br', '(011) 9564-4140', 'Porto Alegre', 23, 2368.39, 'pendente', '2024-04-24');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Esther Porto', 'ana-sophia73@hotmail.com', '(071) 1554-4448', 'Porto Alegre', 58, 7197.07, 'pendente', '2025-05-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Marina Dias', 'alicia51@pinto.com', '+55 41 4285 5721', 'Fortaleza', 33, 2382.62, 'pendente', '2023-09-13');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luna Cardoso', 'fda-cruz@uol.com.br', '(041) 4402-6799', 'Salvador', 30, 5287.67, 'ativo', '2025-06-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Paulo Castro', 'marcela04@bol.com.br', '', 'Rio de Janeiro', 29, 4950.78, 'ativo', '2025-03-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Eduardo Cavalcanti', 'evelyn90@hotmail.com', '84 7310-7357', 'Curitiba', 26, 5458.51, 'ativo', '2024-08-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Rebeca Nunes', '', '71 8352 2372', 'Salvador', 57, 4839.47, 'inativo', '2025-04-11');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Pedro Miguel Alves', 'gomeslucca@gmail.com', '0500 972 6546', 'São Paulo', 55, 6357.06, 'ativo', '2024-08-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ana Laura Vieira', 'limalevi@yahoo.com.br', '31 1969 1059', 'Salvador', 66, 2736.55, 'pendente', '2023-12-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Catarina Moura', 'manuela09@bol.com.br', '81 9137-6407', 'Recife', 62, 4336.93, 'pendente', '2025-07-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Miguel Souza', 'ana-vitoria40@porto.org', '+55 84 7919-8224', 'Curitiba', 54, 6741.41, 'inativo', '2025-06-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Pedro da Luz', 'aliciarocha@hotmail.com', '', 'Salvador', 53, 1758.1, 'inativo', '2024-05-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Emanuella Cunha', 'mendeshelena@gomes.net', '(061) 6170 0265', 'Fortaleza', 47, 7952.64, 'ativo', '2025-02-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Rafaela Costa', 'fernandesluna@gmail.com', '41 8279-9462', 'Recife', 44, 5353.22, 'pendente', '2024-07-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Nicole Almeida', 'diashenrique@rezende.br', '+55 (031) 4310 0878', 'Belo Horizonte', 64, 6245.92, 'inativo', '2024-09-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Rebeca Cardoso', 'gustavo-henrique07@hotmail.com', '(011) 9289 6596', 'Salvador', 48, 4014.51, 'ativo', '2023-11-27');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luiz Henrique Ribeiro', '', '+55 31 8412 8816', 'Rio de Janeiro', 70, 1876.16, 'ativo', '2025-07-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Giovanna Peixoto', 'da-conceicaoemanuella@gmail.com', '+55 51 7049 0232', 'Rio de Janeiro', 55, 8937.58, 'pendente', '2023-12-01');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Bruno Rodrigues', 'anthony56@viana.br', '', 'Curitiba', 53, 4338.75, 'ativo', '2024-02-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Benício Pires', 'igorda-paz@hotmail.com', '84 5900 9641', 'Porto Alegre', 61, 7392.83, 'ativo', '2024-11-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Alexandre Lima', 'costamaria-fernanda@yahoo.com.br', '21 8518-5230', 'Salvador', 68, 2229.89, 'pendente', '2025-06-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Alexandre Peixoto', 'wmoraes@pereira.org', '71 2776 2023', 'Fortaleza', 55, 8095.86, 'inativo', '2025-07-19');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Calebe Freitas', 'wporto@gmail.com', '+55 (011) 6702-5752', 'Rio de Janeiro', 53, 2474.31, 'ativo', '2023-09-21');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luana Sales', 'joao-vitor61@gmail.com', '(041) 0937 6564', 'Recife', 50, 7891.35, 'ativo', '2023-10-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Erick Ramos', 'pintoevelyn@oliveira.br', '0800 025 0957', 'Fortaleza', 58, 9449.33, 'ativo', '2024-04-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bryan Ferreira', 'pintobeatriz@uol.com.br', '', 'São Paulo', 40, 2554.61, 'pendente', '2024-02-15');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Ian Santos', '', '(071) 8290 7397', 'Porto Alegre', 21, 5683.3, 'ativo', '2025-05-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Paulo Porto', 'isis11@hotmail.com', '(011) 3481 0039', 'Fortaleza', 20, 5081.37, 'pendente', '2025-03-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Davi Lucas Silva', 'da-conceicaostella@azevedo.br', '(084) 9948 2488', 'São Paulo', 67, 3657.01, 'ativo', '2024-12-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Manuela Barros', 'eda-mota@rodrigues.com', '41 0616 9938', 'Salvador', 23, 7423.87, 'ativo', '2025-02-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bryan da Luz', 'lfogaca@bol.com.br', '+55 84 4651 2081', 'Rio de Janeiro', 58, 9152.13, 'inativo', '2024-04-07');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lívia Correia', 'vlopes@moreira.net', '(031) 8040 0960', 'Curitiba', 60, 2119.96, 'ativo', '2024-07-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Luiza Duarte', 'xporto@lopes.com', '', 'São Paulo', 50, 5026.47, 'ativo', '2024-01-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Lorenzo da Rosa', 'rafael94@da.br', '(061) 8360-7435', 'Recife', 21, 6555.92, 'inativo', '2025-04-09');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Lucas Dias', 'carvalhodavi@bol.com.br', '(021) 1982-8469', 'Curitiba', 25, 6418.11, 'pendente', '2023-10-08');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Caroline Lopes', 'mnunes@duarte.org', '0300 278 6130', 'Recife', 26, 1848.67, 'ativo', '2024-02-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sr. Antônio Souza', '', '(051) 2701 9417', 'Rio de Janeiro', 34, 4203.22, 'inativo', '2024-10-31');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Fernando Nascimento', 'marcelomonteiro@teixeira.br', '31 7220-8016', 'Salvador', 68, 2485.75, 'inativo', '2023-11-12');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Giovanna da Conceição', 'pereiracarolina@gmail.com', '11 9660 6225', 'Salvador', 23, 8630.65, 'ativo', '2023-12-04');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Rodrigo da Costa', 'nathancardoso@pereira.br', '', 'Belo Horizonte', 62, 4369.07, 'ativo', '2024-05-11');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Danilo Castro', 'brendamoraes@bol.com.br', '+55 (011) 6190 0417', 'Recife', 31, 6096.19, 'ativo', '2024-02-26');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sabrina Pereira', 'ribeiroleonardo@da.com', '(051) 8471 9216', 'Porto Alegre', 61, 3536.67, 'inativo', '2024-06-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Vitor Vieira', 'emanuellyda-mota@bol.com.br', '+55 (021) 0329 6041', 'Recife', 63, 8694.01, 'ativo', '2024-08-25');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Dr. Davi Lucca Cardoso', 'acavalcanti@gmail.com', '+55 (011) 2475 0742', 'Porto Alegre', 24, 9197.48, 'ativo', '2025-06-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Sra. Isadora Pires', 'luiz-miguelmonteiro@caldeira.br', '+55 31 4447-6847', 'São Paulo', 55, 4285.46, 'inativo', '2024-03-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Isadora Alves', 'samuel54@viana.com', '+55 (081) 2257 8102', 'Curitiba', 51, 4640.58, 'ativo', '2025-05-22');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Maria Alice da Rosa', '', '21 3990 8967', 'Belo Horizonte', 48, 1969.46, 'inativo', '2023-09-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Brenda Cunha', 'bdas-neves@uol.com.br', '81 5430-1029', 'Curitiba', 59, 6409.76, 'ativo', '2023-10-14');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Renan Gonçalves', 'zda-mota@ig.com.br', '0500 953 0704', 'Rio de Janeiro', 38, 6018.38, 'inativo', '2024-12-10');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Srta. Ana Vitória Lopes', 'joanapires@bol.com.br', '(041) 0342 6825', 'Curitiba', 58, 8216.51, 'ativo', '2025-01-03');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Danilo Viana', 'brunomoraes@yahoo.com.br', '(071) 8658-3038', 'Fortaleza', 54, 2049.27, 'inativo', '2025-07-28');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Bárbara Fogaça', 'ocostela@ig.com.br', '11 6018 1880', 'Recife', 63, 3954.46, 'inativo', '2025-05-17');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Benjamin da Cunha', 'vsilva@bol.com.br', '+55 (061) 3887-0405', 'Curitiba', 63, 7466.14, 'ativo', '2024-11-06');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Yuri Freitas', 'santosfernando@uol.com.br', '', 'Fortaleza', 54, 6838.5, 'ativo', '2024-08-18');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Arthur Almeida', 'stellarodrigues@yahoo.com.br', '(031) 9199-9622', 'Rio de Janeiro', 58, 7858.96, 'pendente', '2023-10-02');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Luigi Araújo', 'moreiraana-vitoria@hotmail.com', '0300 916 4330', 'Salvador', 55, 2240.85, 'pendente', '2025-07-20');
INSERT INTO clientes_loja VALUES (DEFAULT, 'Raul da Mata', '', '+55 (061) 0491-9770', 'Fortaleza', 65, 6568.41, 'ativo', '2025-03-05');



/* Seleciona os clientes que moram em são paulo */ 
SELECT * FROM clientes_loja WHERE cidade = "São Paulo";


/* Seleciona os clientes com status ativo */ 
SELECT * FROM clientes_loja WHERE status = "ativo";


/* Seleciona os clientes com idade maior que 40 */ 
SELECT * FROM clientes_loja WHERE idade > 40;


/* Seleciona os clientes com renda de R$ 3.000 a R$ 5.000 */ 
SELECT * FROM clientes_loja WHERE renda_mensal BETWEEN "3000.00" AND "5000.00"; 


/* Seleciona os cliantes cadastrados apóso dia 01/01/2025 */ 
SELECT * FROM clientes_loja WHERE data_cadastro > "2025-01-01";


/* Selecione os clientes que possuem email */ 
SELECT * FROM clientes_loja WHERE email LIKE "%.com%";


/* Ordene os clientes em ordem alfabetica */ 
SELECT * FROM clientes_loja ORDER BY nome ASC;


/* Ordena os clientes da maior a menor renda */ 
SELECT * FROM clientes_loja ORDER BY renda_mensal DESC;


/* Ordene da cidade de curitiba pela idade */ 
SELECT * FROM clientes_loja WHERE cidade = "Curitiba" ORDER BY idade ASC;


/* Ordene os clientes ativos pela data de cadastro */ 
SELECT * FROM clientes_loja WHERE status = "ativo" ORDER BY data_cadastro ASC;


/* Muda os nomes da tabela (nome e idade) para Nome Completo e Idade (anos) */ 
SELECT nome AS "Nome Completo", idade AS "Idade (anos)" FROM clientes_loja;


/* Mude os nomes da tabela (nome, renda_mensal e status) para Nome Completo, Renda (R$) Situação*/ 
SELECT nome AS "Nome Completo", renda_mensal AS "Renda (R$)", status AS "Situação" FROM clientes_loja;


/* Mostra os 5 primeiro dados */ 
SELECT * FROM clientes_loja ORDER BY id ASC LIMIT 5 OFFSET 0;


/* Mostra os 10 primeiros clientes com status ativo */ 
SELECT * FROM clientes_loja WHERE status = "ativo" ORDER BY status ASC LIMIT 10 OFFSET 0;


/* Mostra clientes do 11 ao 20 */ 
SELECT * FROM clientes_loja ORDER BY id ASC LIMIT 10 OFFSET 10;


/* Mostra os ultimos 5 clientes */ 
SELECT * FROM clientes_loja ORDER BY id DESC LIMIT 5 OFFSET 0;


/* Lista os clientes com status ativos e menores de 30 */ 
SELECT * FROM clientes_loja WHERE status = "ativo" AND idade < "30";


/* Listar os clientes que moram em SP ou RJ */
SELECT * FROM clientes_loja WHERE cidade = "São Paulo" OR cidade = "Rio de Janeiro";


/* Lista os clientes com email preenchido e renda maior que 6000 */ 
SELECT * FROM clientes_loja WHERE email LIKE "%.com%" AND renda_mensal > "6000.00";


/* Lista os clientes com status pendente ou inativo e mais de 50 anos */ 
SELECT * FROM clientes_loja WHERE (status = "pendente" OR status = "inativo") AND idade > "50";
