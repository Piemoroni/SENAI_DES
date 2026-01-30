const db = require("../data/connection");
const jsonwebtoken = require("jsonwebtoken");
const crypto = require('node:crypto');

const listarpaciente = async (req, res) => {
    const paci = await db.query("SELECT * FROM pacientes")
    res.status(200).send(paci[0]).end();
};


const cadastrarpaciente = async (req, res) => {
    const { nome, telefone, data_nascimento, cpf, senha, email } = req.body;

    //Cria uma hash md5 em hexadecimal
    const novasenha = crypto.createHash("MD5").update(senha).digest("hex").toString();

    const novoPaciente = await db.query("INSERT INTO pacientes VALUES (DEFAULT, ?, ?, ?, ?, ?, ?)", [nome, telefone, data_nascimento, cpf, novasenha, email]);

    res.send({
        id: novoPaciente[0].insertId, 
        nome: nome,
        telefone: telefone,
        aniversário: data_nascimento,
        CPF: cpf,
        senha: novasenha,
        email: email
    }).end();
}

const excluirpaciente = async (req, res) => {
    const idPaci = req.params.id;

    try {
        const delCli = await db.query("DELETE FROM pacientes WHERE id = ?", [idPaci]);

        const info = { msg: "" };

        if (delCli[0].affectedRows === 1) {
            info.msg = "Excluído com sucesso";
        } else if (delCli[0].affectedRows === 0) {
            info.msg = "Paciente não encontrado";
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
}


module.exports = {
    cadastrarpaciente,
    listarpaciente,
    excluirpaciente
}
