const relatoriosController = require('../controller/relatorios');

const express = require('express');

const relatoriosRoutes = express.Router();

relatoriosRoutes.get('/locacoesCategorias',relatoriosController.locCategorias); // TESTADO
relatoriosRoutes.get('/locacoesAlunos',relatoriosController.locAlunos); //TESTADO
relatoriosRoutes.get('/locacoesEquipamento',relatoriosController.locEquipamento); //TESTADO

module.exports = relatoriosRoutes;
