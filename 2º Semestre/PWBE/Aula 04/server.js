const express = require("express"); //importa um modulo
const cors = require("cors");

const UsuariosRoutes = require("./src/routes/usuarios.routes");
const LivroRoutes = require("./src/routes/livros.routes");

const app = express();

app.use(express.json()); //habilita comunicação via JSON
app.use(cors()); //habilita requisição local

//importar as rotas configuradas
app.use(UsuariosRoutes);
app.use(LivroRoutes);

app.listen(3000, () => {
    console.log("Servidor online na porta 3000");
});