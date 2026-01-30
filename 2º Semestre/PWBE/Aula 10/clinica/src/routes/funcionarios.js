const funcionariosController = require('../controller/funcionarios');

const express = require('express');
const validate = require("../midllewares/auth");

const { validaADM } = require ("../midllewares/validaCargo");

const funcionariosRoutes = express.Router();

funcionariosRoutes.post('/cadastrarfuncionario',validate, validaADM, funcionariosController.cadastrarfuncionario);//testado
funcionariosRoutes.delete('/excluirfuncionario/:id',validate, validaADM, funcionariosController.excluirfuncionarios); //testado
funcionariosRoutes.get('/listarfuncionario',validate, validaADM, funcionariosController.listarfuncionarios); //testado
funcionariosRoutes.post('/Login', funcionariosController.LoginFuncionarios); //testado

module.exports = funcionariosRoutes;

