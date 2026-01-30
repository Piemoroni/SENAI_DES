const barbeirosController = require('../controller/barbeiros.controller');

const express = require('express');
const validate = require("../midllewares/auth");

const barbeirosRoutes = express.Router();

barbeirosRoutes.post('/cadastrarbarbeiro', barbeirosController.cadastrar); //testado
barbeirosRoutes.delete('/excluirbarbeiros/:id',validate, barbeirosController.excluir); //testado
barbeirosRoutes.get('/listarbarbeiro',validate,barbeirosController.listar); //testado
barbeirosRoutes.put('/atualizarbarbeiro', validate, barbeirosController.atualizar); //testado
barbeirosRoutes.get('/loginbarbeiros', barbeirosController.login); //testado

module.exports = barbeirosRoutes;