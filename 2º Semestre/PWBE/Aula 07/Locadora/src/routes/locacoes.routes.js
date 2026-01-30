const express = require('express');
const router = express.Router();

const locacoesController = require("../controllers/locacoes.controller");

router.get("/locacoes",locacoesController.listarlocacoes);
router.get("/locacao/:id", locacoesController.buscarlocacao);
router.post("/locacao", locacoesController.cadastrarlocacao);
router.delete("/locacao/:id", locacoesController.excluirLocacao);
router.put("/locacao",locacoesController.atualizarLocacao);
router.get("/locacao/cliente/:id", locacoesController.listarlocacoesid);
router.get("/locacao/status/:status", locacoesController.listarlocacoesporstatus);
router.get("/locacoes/faturamento",locacoesController.calcular);
router.get("/totalStatus",locacoesController.totalporstatus);
router.get("/totalMes",locacoesController.totalpormes);
router.get("/statusCliente",locacoesController.statusclientes);

module.exports = router;