const consultasController = require('../controller/consultas');

const express = require('express');
const validate = require("../midllewares/auth");

const { validaADM } = require ("../midllewares/validaCargo");
const { validaADMeATENDENTE } = require ("../midllewares/validaCargo");
const {validaMedico} = require ("../midllewares/validaCargo");

const consultasRoutes = express.Router();

consultasRoutes.post('/cadastrarconsulta',validate, validaADMeATENDENTE, consultasController.cadastrarconsulta); //testado
consultasRoutes.delete('/excluirconsultas/:id',validate, validaADM, consultasController.excluirconsulta); //testado
consultasRoutes.get('/listarconsultas',validate,validaADM, consultasController.listarconsulta); //testado
consultasRoutes.get('/consultasEspecilaidade',consultasController.consultaespecialidade); //testado
consultasRoutes.get('/pacientesMedico',consultasController.pacientesmedico); //testado
consultasRoutes.get('/listarcomdados',consultasController.listarconsultascomdados); //testado
consultasRoutes.get('/dadosdeles/:id_funcionario',validate, validaMedico,consultasController.listarpacientesdeles); //testado

module.exports = consultasRoutes;

