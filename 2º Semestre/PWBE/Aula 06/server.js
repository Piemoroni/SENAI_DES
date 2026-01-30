const express = require("express"); 
const cors = require("cors");

const ClienteRoutes = require("./src/routes/clientes.routes"); 
const QuartoRoutes = require("./src/routes/quartos.routes"); 
const ReservaRoutes = require("./src/routes/reservas.routes"); 

const app = express();

app.use(express.json()); 
app.use(cors()); 

app.use(ClienteRoutes);
app.use(QuartoRoutes);
app.use(ReservaRoutes);

app.listen(3000, () => {
    console.log("Servidor online na porta 3000");
});