const alunosController = require('../controller/alunos');

const express = require('express');

const alunosRoutes = express.Router();

alunosRoutes.get('/listarAlunos',alunosController.listar); //TESTADO
alunosRoutes.post('/cadastrarAluno',alunosController.cadastrar); //TESTADO
alunosRoutes.delete('/excluirAluno/:id',alunosController.excluir); //TESTADO
alunosRoutes.put('/atualizarAluno',alunosController.atualizar); //TESTADO

module.exports = alunosRoutes;

