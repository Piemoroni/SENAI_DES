const express = require('express');
const router = express.Router();

const clientesController = require("../controllers/clientes.controller");

router.get("/clientes",clientesController.listarClientes);
router.get("/cliente/:id", clientesController.buscarClientes);
router.post("/cliente", clientesController.cadastrarCliente);
router.delete("/cliente/:id", clientesController.excluirCliente);
router.put("/cliente", clientesController.atualizarCliente);
router.get("/clientesPendentes",clientesController.pendentesporcliente);
router.get("/totalCliente",clientesController.totalporcliente);

module.exports = router;
