const express = require("express");
const router = express.Router();

const ClientesController = require("../controllers/clientes.controller");

router.post("/clientes", ClientesController.cadastrarcliente);
router.get("/cliente", ClientesController.listarclientecomreservaemandamento);

module.exports = router;