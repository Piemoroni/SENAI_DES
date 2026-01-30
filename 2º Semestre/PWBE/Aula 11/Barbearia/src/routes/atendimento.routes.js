const atendimentoController = require('../controller/atendimentos.controller');

const express = require('express');
const validate = require("../midllewares/auth");

const atendimentoRoutes = express.Router();

atendimentoRoutes.post('/cadastraratendi', atendimentoController.cadastrar); //testado
atendimentoRoutes.delete('/excluiratendi/:id', atendimentoController.excluir); //testado
atendimentoRoutes.get('/listaratendi',atendimentoController.listar); //testado
atendimentoRoutes.put('/atualizaratendi', atendimentoController.atualizar); //testado
atendimentoRoutes.get('/agenda',atendimentoController.agenda); //testado
atendimentoRoutes.get('/historico',atendimentoController.historico); //testado
atendimentoRoutes.get('/faturamento',atendimentoController.faturamento); //testado
atendimentoRoutes.get('/popular',atendimentoController.popular); //testado

module.exports = atendimentoRoutes;