const express = require('express');
const router = express.Router();

const planostreinoController = require("../controllers/planostreino.controller");

router.post("/plano",planostreinoController.cadastrarPlano);
router.get("/planos",planostreinoController.listarPlanos);
router.delete("/plano/:id",planostreinoController.excluirPlano);
router.put("/planos",planostreinoController.atualizarPlano);
router.get("/plano/:id",planostreinoController.buscarPorId);

module.exports = router;
