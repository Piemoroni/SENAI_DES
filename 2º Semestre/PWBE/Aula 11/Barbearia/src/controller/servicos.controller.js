const db = require("../data/connection");
const jsonwebtoken = require("jsonwebtoken");
const crypto = require('node:crypto');

const cadastrar = async (req, res) => {
    const { descricao, preco } = req.body;

    const novoSer = await db.query("INSERT INTO servicos VALUES (DEFAULT, ?, ?)", [descricao, preco]);

    res.send({
        id: novoSer[0].insertId, 
        descricao: descricao,
        preco: preco
    }).end();
};

const listar = async (req, res) => {
    const ser = await db.query("SELECT * FROM servicos");
    res.status(200).send(ser[0]).end();
};

const excluir = async (req, res) => {
    const idSer = req.params.id;

    try {
        const delSer = await db.query("DELETE FROM servicos WHERE id = ?", [idSer]);

        const info = { msg: "" };

        if (delSer[0].affectedRows === 1) {
            info.msg = "Excluído com sucesso";
        } else if (delSer[0].affectedRows === 0) {
            info.msg = "Serviço não encontrado";
        }

        res.status(200).json(info);

    } catch (error) {
        console.log(error);
        const info = { msg: "" };

        if (error.code === "ECONNREFUSED") {
            info.msg = "Há um erro de comunicação";
        }

        res.status(500).json(info);
    }
};

const atualizar = async (req, res) => {
    const {id, descricao, preco} = req.body;

    try {
        const atualiza = await db.query("UPDATE servicos SET descricao = ?, preco = ? WHERE id = ?", [descricao, preco, id]);

        const info = { msg: "" };

        if (atualiza[0].affectedRows === 0) {
            info.msg = "Nenhum Serviço Encontrado";

        } else if (atualiza[0].affectedRows === 1) {
            info.msg = "Serviço Atualizado com Sucesso";
        }

        res.status(200).json(info).end();

    } catch (error) {
        console.log(error);

         const info = { msg: "" };

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }

        res.status(500).json(info).end();
    
    }
};

module.exports = {
    cadastrar,
    listar,
    excluir,
    atualizar
}