const express = require('express');

const postsController = require("../controllers/posts");
const validate = require("../middlewares/auth");

const { validaGerente } = require("../middlewares/validaCargo");
const { validaSupervisor } = require ("../middlewares/validaCargo");
const { validaGerenteeSupervisor } = require ("../middlewares/validaCargo");

const postsRoutes = express.Router();

postsRoutes.get('/posts', validate, validaGerente, postsController.listarposts);
postsRoutes.post('/cadastrar/post',validate, validaGerenteeSupervisor, postsController.cadastrarpost);
postsRoutes.delete('/deletepost/:id', validate, validaSupervisor, postsController.excluirpost);
postsRoutes.put('/atualizar', validate, validaSupervisor, postsController.atualizarpost);

module.exports = postsRoutes;