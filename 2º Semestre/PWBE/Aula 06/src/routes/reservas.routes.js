const express = require("express");
const router = express.Router();

const ReservaCrontroller = require("../controllers/reserva.controller");

router.post("/reservas", ReservaCrontroller.cadastrarReserva);
router.get("/reservas", ReservaCrontroller.listarresrva);
router.put("/reserva/:id/checkout", ReservaCrontroller.finalizerreserva);


module.exports = router;