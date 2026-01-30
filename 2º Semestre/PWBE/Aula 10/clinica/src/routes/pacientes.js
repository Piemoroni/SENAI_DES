const pacientesController = require('../controller/pacientes');

const express = require('express');
const validate = require("../midllewares/auth");

const { validaADM } = require ("../midllewares/validaCargo");
const { validaADMeATENDENTE } = require ("../midllewares/validaCargo");
const {validaMedico} = require ("../midllewares/validaCargo");

const pacientesRoutes = express.Router();

pacientesRoutes.post('/cadastrarpaciente',validate, validaADMeATENDENTE, pacientesController.cadastrarpaciente); //testado
pacientesRoutes.delete('/excluirpaciente/:id',validate, validaADM, pacientesController.excluirpaciente); //testado
pacientesRoutes.get('/listarpaciente',validate, validaADM, pacientesController.listarpaciente); //testado

module.exports = pacientesRoutes;

