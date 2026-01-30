const db = require("../data/connection");

const listarlocacoes = async (req, res) => {
    const lista = await db.query("SELECT * FROM locacoes");
    res.json(lista[0]).end();
};

const buscarlocacao = async (req, res) => {
    const idLocacao = req.params.id;
    const locacao = await db.query("SELECT * FROM locacoes WHERE id = " + idLocacao);
    res.json(locacao[0][0]).end();
};

const cadastrarlocacao = async (req, res) => {
    const { cliente_id, filme_id, data_locacao, status, preco } = req.body;

    try {
        const novaLocacao = await db.query("INSERT INTO locacoes VALUES (DEFAULT, ?, ?, ?, ?, ?)", [cliente_id, filme_id, data_locacao, status, preco]);

        const locacao = {
            id: novaLocacao[0].insertId,
            ID_cliente: cliente_id,
            ID_filme: filme_id,
            data: data_locacao,
            status: status,
            preço: preco
        }

        res.json(locacao).status(201).end();

    } catch (error) {
        const info = {msg: ""};

         if(error.errno === 1452){
            info.msg = "Filme ou Usuário Inexistente";
        }

        res.status(500).json(info).end();

    }
};

const excluirLocacao = async (req, res) => {
    const idLocacao = req.params.id;

    try {
        const delLoc = await db.query("DELETE FROM locacoes WHERE id = ?", [idLocacao]);

        const info = { msg: "" };

        if (delLoc[0].affectedRows === 1) {
            info.msg = "Excluida com sucesso";

        } else if (delLoc[0].affectedRows === 0) {
            info.msg = "Locação não encontrada";
        }

        res.status(200).json(info).end();

    } catch (error) {
        const info = { msg: "" };
        res.status(500).json(info).end();
    }
};

const atualizarLocacao = async (req, res) => {
    const {cliente_id, filme_id, data_locacao, status, preco } = req.body;

    try {
        const atualiza = await db.query("UPDATE locacoes SET cliente_id = ?, filme_id = ?, data_locacao = ?, status =?, preco = ? WHERE id = ?", [cliente_id, filme_id, data_locacao, status, preco, id]);

        const info = { msg: "" };

        if (atualiza[0].affectedRows === 0) {
            info.msg = "Nenhuma Locação Encontrada";

        } else if (atualiza[0].affectedRows === 1) {
            info.msg = "Locação Atualizada com Sucesso";
        }

        res.status(200).json(info).end();

    } catch (error) {
        console.log(error);

        res.status(500).end();
    }
};

const listarlocacoesid = async (req, res) => {
    const id_cliente = req.params.id;

    try {
        const lista = await db.query("SELECT * FROM locacoes WHERE cliente_id = ?", [id_cliente]);

        res.status(200).json(lista[0]).end();

    } catch (error) {
        const info = { msg: "" };

        console.log(error);

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um errro de comunicação";
        }

        res.status(500).json(info).end();
    }
};

const listarlocacoesporstatus = async (req, res) => {
    const statuscli = req.params.status;

    try{
        const listar = await db.query("SELECT * FROM locacoes WHERE status = ?", [statuscli]);

        res.status(200).json(listar[0]).end();

    } catch (error) {
        const info = { msg: ""};

        console.log(error);

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }
    }
};

const calcular = async (req, res) => {

    try{
        const calcular = await db.query("SELECT SUM(preco) AS Faturamento FROM locacoes");

        res.status(200).json(calcular[0]).end();

    }catch (error){
        const info = { msg: ""};

        console.log(error);

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }
        res.status(500).json(info).end();
    }
};

const totalporstatus = async (req, res) => {

    try{
        const total = await db.query("SELECT locacoes.status, SUM(filmes.preco) AS 'Total' FROM locacoes INNER JOIN filmes ON locacoes.filme_id = filmes.id GROUP BY locacoes.status");

        res.status(200).json(total[0]).end();

    }catch (error){
        const info = { msg: ""};

        console.log(error);

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }
        res.status(500).json(info).end();
    }
};

const totalpormes = async (req, res) => {

    try{
        const total = await db.query("SELECT MONTH(locacoes.data_locacao) AS 'Mês', SUM(filmes.preco) AS 'Total' FROM locacoes INNER JOIN filmes ON locacoes.filme_id = filmes.id GROUP BY MONTH(locacoes.data_locacao)");

        res.status(200).json(total[0]).end();

    }catch (error){
        const info = { msg: ""};

        console.log(error);

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }
        res.status(500).json(info).end();
    }
};

const statusclientes = async (req, res) => {

    try{
        const qtd = await db.query("SELECT clientes.nome AS 'Cliente', locacoes.status AS 'Status', COUNT(locacoes.id) AS 'Quantidade de Locações' FROM clientes INNER JOIN locacoes  ON clientes.id = locacoes.cliente_id GROUP BY clientes.nome, locacoes.status");

        res.status(200).json(qtd[0]).end();

    }catch (error){
        const info = { msg: ""};

        console.log(error);

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }
        res.status(500).json(info).end();
    }
};



module.exports = {
    listarlocacoes,
    buscarlocacao,
    cadastrarlocacao,
    excluirLocacao,
    atualizarLocacao,
    listarlocacoesid,
    listarlocacoesporstatus,
    calcular,
    totalporstatus,
    totalpormes,
    statusclientes
}