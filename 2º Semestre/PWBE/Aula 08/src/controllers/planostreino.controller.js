const db = require("../data/connection");

const cadastrarPlano = async (req, res) => {
    const {nome_plano, objetivo, tipo_exercicio, duracao_semanas} = req.body;

    const novoPlano = await db.query("INSERT INTO planostreino VALUES (DEFAULT, ?, ?, ?, ?)", [nome_plano, objetivo, tipo_exercicio, duracao_semanas]);

    const plano = {
        Id: novoPlano[0].insertId,
        Plano: nome_plano,
        Objetivo: objetivo,
        Tipo: tipo_exercicio,
        Duração: duracao_semanas
    }

    res.json(plano).status(201).end();
};

const listarPlanos = async (req, res) => {
    const lista = await db.query("SELECT * FROM planostreino");
    res.json(lista[0]).end();
};

const excluirPlano = async (req, res) => {
    const idPlano = req.params.id;

    try {
        const delplan = await db.query("DELETE FROM planostreino WHERE id = ?", [idPlano]);

        const info = {msg: ""};

        if(delplan[0].affectedRows === 1){
            info.msg = "Excluido com sucesso";

        }else if(delplan[0].affectedRows === 0) {
            info.msg = "Plano não encontrado";
        }

        res.status(200).json(info).end();

    } catch (error) {
        const info = {msg: ""};

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }

        res.status(500).json(info).end();
    }
};

const atualizarPlano = async (req, res) => {
    const {id, nome_plano, objetivo, tipo_exercicio, duracao_semanas } = req.body;

    try {
        const atualiza = await db.query("UPDATE planostreino SET nome_plano = ?, objetivo= ?, tipo_exercicio = ?, duracao_semanas =? WHERE id = ?", [nome_plano, objetivo, tipo_exercicio, duracao_semanas, id]);

        const info = { msg: "" };

        if (atualiza[0].affectedRows === 0) {
            info.msg = "Nenhum Plano Encontrado";

        } else if (atualiza[0].affectedRows === 1) {
            info.msg = "Plano Atualizado com Sucesso";
        }

        res.status(200).json(info).end();

    } catch (error) {
        console.log(error);

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }

        res.status(500).json(info).end();
    
    }
};

const buscarPorId = async (req, res) => {
    const idPlano = req.params.id;

    try {
        const lista = await db.query("SELECT * FROM planostreino WHERE id = ?", [idPlano]);

        res.status(200).json(lista[0]).end();
    } catch (error) {
        const info = { msg: "" };

        console.log(error);

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }

        res.status(500).json(info).end();
    }
};



module.exports = {
    listarPlanos,
    cadastrarPlano,
    excluirPlano,
    atualizarPlano,
    buscarPorId
}
