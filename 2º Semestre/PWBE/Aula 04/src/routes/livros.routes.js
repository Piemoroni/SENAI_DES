const express = require("express");
const router = express.Router();

const LivrosControllers = require("../controllers/livros.controllers");

router.get("/livros", LivrosControllers.listar);
router.get("/livros/:id", LivrosControllers.buscar);
router.post("/livro", LivrosControllers.cadastrar);
router.delete("/livro/:id", LivrosControllers.apagar);
router.put("/livro", LivrosControllers.alterar);
router.patch("/livro/:id", LivrosControllers.atualizar);

module.exports = router;    