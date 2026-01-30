const equipamentosController = require('../controller/equipamentos');

const express = require('express');

const equipamentosRoutes = express.Router();

equipamentosRoutes.get('/listarEquipamentos',equipamentosController.listar); //TESTADO
equipamentosRoutes.post('/cadastrarEquipamento',equipamentosController.cadastrar); //TESTADO
equipamentosRoutes.delete('/excluirEquipamento/:id',equipamentosController.excluir); //TESTADO
equipamentosRoutes.put('/atualizarEquipamento',equipamentosController.atualizar); //TESTADO

module.exports = equipamentosRoutes;

