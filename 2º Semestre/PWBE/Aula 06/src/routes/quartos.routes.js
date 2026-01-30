const express = require("express");
const router = express.Router();

const QuartosController = require("../controllers/quartos.controller");

router.get("/quartos/:id_quarto/:dias", QuartosController.simularvalorestadia);
router.get("/quartos", QuartosController.listarquartosdisponiveis);

module.exports = router;