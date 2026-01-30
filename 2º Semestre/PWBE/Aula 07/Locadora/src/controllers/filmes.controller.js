const db = require("../data/connection");

const listarFilmes = async (req, res) => {
    const lista = await db.query("SELECT * FROM filmes");
    res.json(lista[0]).end();
};

const buscarFilmes = async (req, res) => {
    const idFilme = req.params.id;
    const filme = await db.query("SELECT * FROM filmes WHERE id = " + idFilme);
    res.json(filme[0][0]).end();
};

const cadastrarFilme = async (req, res) => {
    const {titulo, categoria, preco} = req.body;

    const novoFilme = await db.query("INSERT INTO filmes VALUES (DEFAULT, ?, ?, ?)", [titulo, categoria, preco]);

    const filme = {
        id: novoFilme[0].insertId,
        titulo: titulo,
        categoria: categoria,
        preço: preco
    }
    res.json(filme).status(201).end();
};

const excluirFilme = async (req, res) => {
    const idFilme = req.params.id;

    try {
        const delFil = await db.query("DELETE FROM filmes WHERE id = ?", [idFilme]);

        const info = {msg: ""};

        if(delFil[0].affectedRows === 1){
            info.msg = "Excluido com sucesso";

        }else if(delFil[0].affectedRows === 0) {
            info.msg = "Filme não encontrado";
        }

        res.status(200).json(info).end();

    } catch (error) {
        const info = {msg: ""};

        if(error.errno === 1451){
            info.msg = "Filme com locação";
        }

        res.status(500).json(info).end();
    }
};

const atualizarFilme = async (req, res) => {
    const {id, titulo, categoria, preco} = req.body;

    try {
        const atualiza = await db.query("UPDATE filmes SET titulo = ?, categoria = ?, preco = ? WHERE id = ?", [titulo, categoria, preco, id]);

        const info = {msg: ""};

        if (atualiza[0].affectedRows === 0){
            info.msg = "Nenhum Filme Encontrado";

        }else if(atualiza[0].affectedRows === 1){
            info.msg = "Filme Atualizado com Sucesso";
        }

        res.status(200).json(info).end();
        
    } catch (error) {
        console.log(error);

        res.status(500).end();
    }
};

const porcategoria = async (req, res) => {

    try{
        const valor = await db.query("SELECT filmes.categoria, SUM(filmes.preco) AS 'Faturamento' FROM locacoes INNER JOIN filmes ON locacoes.filme_id = filmes.id GROUP BY filmes.categoria");

        res.status(200).json(valor[0]).end();

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
    listarFilmes,
    buscarFilmes,
    cadastrarFilme,
    excluirFilme,
    atualizarFilme,
    porcategoria
}