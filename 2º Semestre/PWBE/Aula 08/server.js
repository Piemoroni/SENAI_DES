const express = require('express');
const cors = require('cors');

const  planosRoutes = require("./src/routes/planostreino.routes");
const  alunosRoutes= require("./src/routes/alunos.routes");

const app = express();

app.use(express.json());
app.use(cors());

app.use(planosRoutes);
app.use(alunosRoutes);

app.listen(3000, () => {
    console.log("Servidor Online na Porta 3000");
});