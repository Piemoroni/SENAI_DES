require("dotenv").config();
const express = require('express');
const app = express();
const port = 3000;

const alunosRoutes  = require('./src/routes/alunos');
const equipamentosRoutes = require('./src/routes/equipamentos');
const locacoesRoutes = require('./src/routes/locacoes');
const relatoriosRoutes = require('./src/routes/relatorios');

app.use(express.json());

app.use(alunosRoutes);
app.use(equipamentosRoutes);
app.use(locacoesRoutes);
app.use(relatoriosRoutes);

app.listen(port, () => {
    console.log('Servidor Online na Porta ' + port);
})