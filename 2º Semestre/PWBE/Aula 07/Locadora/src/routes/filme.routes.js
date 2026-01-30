const express = require('express');
const router = express.Router();

const filmesController = require("../controllers/filmes.controller");

router.get("/filmes",filmesController.listarFilmes);
router.get("/filme/:id", filmesController.buscarFilmes);
router.post("/filme", filmesController.cadastrarFilme);
router.delete("/filme/:id", filmesController.excluirFilme);
router.put("/filmes", filmesController.atualizarFilme);
router.get("/fatuCategoria", filmesController.porcategoria);

module.exports = router;
