const db = require("../data/connection");
const jsonwebtoken = require("jsonwebtoken");
const crypto = require('node:crypto');

const cadastrar = async (req, res) => {
    const { nome, data_nascimento, cpf, senha, email } = req.body;

    //Cria uma hash md5 em hexadecimal
    const novasenha = crypto.createHash("MD5").update(senha).digest("hex").toString();

    const novoBar = await db.query("INSERT INTO barbeiros VALUES (DEFAULT, ?, ?, ?, ?, ? )", [nome, data_nascimento, cpf, novasenha, email]);

    res.send({
        id: novoBar[0].insertId, 
        nome: nome,
        nascimento: data_nascimento,
        cpf: cpf,
        senha: novasenha,
        email: email
    }).end();
};

const listar = async (req, res) => {
    const bar = await db.query("SELECT * FROM barbeiros")
    res.status(200).send(bar[0]).end();
};

const excluir = async (req, res) => {
    const idBar = req.params.id;

    try {
        const delBar = await db.query("DELETE FROM barbeiros WHERE id = ?", [idBar]);

        const info = { msg: "" };

        if (delBar[0].affectedRows === 1) {
            info.msg = "Excluído com sucesso";
        } else if (delBar[0].affectedRows === 0) {
            info.msg = "Cliente não encontrado";
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
    const {id, nome, data_nascimento, cpf, email } = req.body;

    try {
        const atualiza = await db.query("UPDATE barbeiros SET nome = ?, data_nascimento = ?, cpf = ?, email = ? WHERE id = ?", [nome, data_nascimento, cpf, email, id]);

        const info = { msg: "" };

        if (atualiza[0].affectedRows === 0) {
            info.msg = "Nenhum Barbeiro Encontrado";

        } else if (atualiza[0].affectedRows === 1) {
            info.msg = "Barbeiro Atualizado com Sucesso";
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

const login = async (req, res) => {
    const { email, senha } = req.body;
    
    try {
        const senhahash = crypto.createHash("MD5").update(senha).digest("hex").toString();

        const bar = await db.query("SELECT * FROM barbeiros WHERE email = ? AND senha = ?", [email, senhahash]);

        if(bar[0].length == 0) res.status(401).send({message:'E-mail or Senha Incorretos !'});

        const token = jsonwebtoken.sign(
            {
                id: bar[0][0].id,
                nome: bar[0][0].nome,
                nascimento: bar[0][0].data_nascimento,
                cpf: bar[0][0].cpf,
                email: bar[0][0].email,
            },
            process.env.SECRET_JWT,
            { expiresIn: "60min" }
        );

        res.status(200).json({ token : token }).end();
    }catch(err) {
        res.status(500).send(err).end();
    }
    
    res.status(200).end();
};

module.exports = {
    cadastrar,
    listar,
    excluir,
    atualizar,
    login
}