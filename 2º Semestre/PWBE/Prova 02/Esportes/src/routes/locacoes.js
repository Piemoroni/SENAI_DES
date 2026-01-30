const locacoesController = require('../controller/locacoes');

const express = require('express');

const locacoesRoutes = express.Router();

locacoesRoutes.get('/listarLocacoes',locacoesController.listar); //TESTADO
locacoesRoutes.post('/cadstrarLocacao',locacoesController.cadastrar); //TESTADO
locacoesRoutes.delete('/excluirLocacao/:id',locacoesController.excluir); //TESTADO
locacoesRoutes.put('/atualizarLocacao',locacoesController.atualizar); //TESTADO

module.exports = locacoesRoutes;

