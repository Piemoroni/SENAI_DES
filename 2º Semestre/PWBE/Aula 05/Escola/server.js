const express = require("express"); 
const cors = require("cors");

const EscolaRoutes = require("./src/routes/escola.routes"); 

const app = express();

app.use(express.json()); 
app.use(cors()); 

app.use(EscolaRoutes); 

app.listen(3000, () => {
    console.log("Servidor online na porta 3000");
});