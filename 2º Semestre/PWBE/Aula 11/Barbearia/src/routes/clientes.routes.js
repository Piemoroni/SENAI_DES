const clientesController = require('../controller/clientes.controller');

const express = require('express');
const validate = require("../midllewares/auth");

const clientesRoutes = express.Router();

clientesRoutes.post('/cadastrarcliente', clientesController.cadastrar); //testado
clientesRoutes.delete('/excluircliente/:id',validate, clientesController.excluir); //testado
clientesRoutes.get('/listarclientes',validate,clientesController.listar); //testado
clientesRoutes.put('/atualizarclientes', validate, clientesController.atualizar); //testado
clientesRoutes.get('/tokencliente',clientesController.login); //testado

module.exports = clientesRoutes;