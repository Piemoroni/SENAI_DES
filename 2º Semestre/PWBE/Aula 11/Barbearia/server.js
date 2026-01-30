require("dotenv").config();
const express = require('express');
const app = express();
const port = 3000;

const clientesRoutes  = require('./src/routes/clientes.routes');
const barbeirosRoutes = require('./src/routes/barbeiros.routes');
const servicosRoutes  = require('./src/routes/servicos.routes');
const atendimentosRoutes = require('./src/routes/atendimento.routes');

app.use(express.json());

app.use(clientesRoutes);
app.use(barbeirosRoutes);
app.use(servicosRoutes);
app.use(atendimentosRoutes);

app.listen(port, () => {
    console.log('Servidor Online na Porta ' + port);
})