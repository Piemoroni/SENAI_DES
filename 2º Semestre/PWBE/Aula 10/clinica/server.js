require("dotenv").config();
const express = require('express');
const app = express();
const port = 3000;

const  pacientesRoutes = require('./src/routes/pacientes');
const  funcionariosRoutes = require("./src/routes/funcionarios");
const  consultasRoutes = require('./src/routes/consultas');

app.use(express.json());

app.use(pacientesRoutes);
app.use(funcionariosRoutes);
app.use(consultasRoutes);

app.listen(port, () => {
    console.log('Servidor Online na Porta ' + port);
})