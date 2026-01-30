const servicosController = require('../controller/servicos.controller');

const express = require('express');
const validate = require("../midllewares/auth");

const servicosRoutes = express.Router();

servicosRoutes.post('/cadastrarservico', servicosController.cadastrar); //testado
servicosRoutes.delete('/excluirservico/:id', servicosController.excluir); //testado
servicosRoutes.get('/listarservico',servicosController.listar); //testado
servicosRoutes.put('/atualizarservico',servicosController.atualizar);  //testado

module.exports = servicosRoutes;