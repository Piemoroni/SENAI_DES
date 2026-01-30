const db = require("../data/connection");
const jsonwebtoken = require("jsonwebtoken");
const crypto = require('node:crypto');

const cadastrar = async (req, res) => {
    const { id_cliente, id_barbeiro, id_servico, data } = req.body;

    const novoA = await db.query("INSERT INTO atendimentos VALUES (DEFAULT, ?, ?, ?, ?)", [id_cliente, id_barbeiro, id_servico, data]);

    res.send({
        id: novoA[0].insertId, 
        cliente_id: id_cliente,
        barbeiro_id: id_barbeiro,
        servico_id: id_servico,
        data: data
    }).end();
};

const listar = async (req, res) => {
    const ate = await db.query("SELECT * FROM atendimentos")
    res.status(200).send(ate[0]).end();
};

const excluir = async (req, res) => {
    const idAten = req.params.id;

    try {
        const delAten = await db.query("DELETE FROM atendimentos WHERE id = ?", [idAten]);

        const info = { msg: "" };

        if (delAten[0].affectedRows === 1) {
            info.msg = "Excluído com sucesso";
        } else if (delAten[0].affectedRows === 0) {
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
    const {id, id_cliente, id_barbeiro, id_servico, data} = req.body;

    try {
        const atualiza = await db.query("UPDATE atendimentos SET id_cliente = ?, id_barbeiro = ?, id_servico = ?, data = ? WHERE id = ?", [id_cliente, id_barbeiro, id_servico, data, id]);

        const info = { msg: "" };

        if (atualiza[0].affectedRows === 0) {
            info.msg = "Nenhum Atendimento Encontrado";

        } else if (atualiza[0].affectedRows === 1) {
            info.msg = "Atendimento Atualizado com Sucesso";
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

const agenda = async (req, res) => {
    const { id_barbeiro,  data} = req.body;
  try {
    const agenda = await db.query("SELECT clientes.nome AS cliente, servicos.descricao AS servico, atendimentos.data AS data_atendimento FROM atendimentos INNER JOIN clientes ON atendimentos.id_cliente = clientes.id INNER JOIN servicos ON atendimentos.id_servico = servicos.id WHERE atendimentos.id_barbeiro = ? AND DATE(atendimentos.data) = ?", [id_barbeiro, data]);
    res.status(200).send(agenda[0]).end();
  } 
  catch (error) {
    res.status(500).json({ msg: "Erro ao buscar agenda por barbeiro" }).end();
  }
};

const historico = async (req, res) => {
    const { id_cliente } = req.body;
  try {
    const agenda = await db.query("SELECT servicos.descricao AS servico, barbeiros.nome AS barbeiro, atendimentos.data AS data_atendimento FROM atendimentos INNER JOIN servicos ON atendimentos.id_servico = servicos.id INNER JOIN barbeiros ON atendimentos.id_barbeiro = barbeiros.id WHERE atendimentos.id_cliente = ?", [id_cliente]);
    res.status(200).send(agenda[0]).end();
  } 
  catch (error) {
    res.status(500).json({ msg: "Erro ao buscar agenda por barbeiro" }).end();
  }
};

const faturamento = async (req, res) => {
    const { mes, ano } = req.body;
  try {
    const agenda = await db.query("SELECT barbeiros.nome AS barbeiro, SUM(servicos.preco) AS faturamento FROM atendimentos INNER JOIN servicos ON atendimentos.id_servico = servicos.id INNER JOIN barbeiros ON atendimentos.id_barbeiro = barbeiros.id WHERE MONTH(atendimentos.data) = ? AND YEAR(atendimentos.data) = ? GROUP BY barbeiros.nome", [mes, ano]);
    res.status(200).send(agenda[0]).end();
  } 
  catch (error) {
    res.status(500).json({ msg: "Erro ao buscar agenda por barbeiro" }).end();
  }
};

const popular = async (req, res) => {
  try {
    const agenda = await db.query("SELECT servicos.descricao AS servico, COUNT(atendimentos.id) AS quantidade FROM atendimentos INNER JOIN servicos ON atendimentos.id_servico = servicos.id GROUP BY servicos.descricao ORDER BY quantidade DESC");
    res.status(200).send(agenda[0]).end();
  } 
  catch (error) {
    res.status(500).json({ msg: "Erro ao buscar agenda por barbeiro" }).end();
  }
};


module.exports = {
    cadastrar,
    listar,
    excluir,
    atualizar,
    agenda,
    historico,
    faturamento,
    popular
}