const db = require("../data/connection");
const jsonwebtoken = require("jsonwebtoken");
const crypto = require('node:crypto');

const cadastrar = async (req, res) => {
    const { nome, data_nascimento, senha, email } = req.body;

    //Cria uma hash md5 em hexadecimal
    const novasenha = crypto.createHash("MD5").update(senha).digest("hex").toString();

    const novoCliente = await db.query("INSERT INTO clientes VALUES (DEFAULT, ?, ?, ?, ?)", [nome, data_nascimento, novasenha, email]);

    res.send({
        id: novoCliente[0].insertId, 
        nome: nome,
        nascimento: data_nascimento,
        senha: novasenha,
        email: email
    }).end();
};

const listar = async (req, res) => {
    const cli = await db.query("SELECT * FROM clientes")
    res.status(200).send(cli[0]).end();
};

const excluir = async (req, res) => {
    const idCli = req.params.id;

    try {
        const delCli = await db.query("DELETE FROM clientes WHERE id = ?", [idCli]);

        const info = { msg: "" };

        if (delCli[0].affectedRows === 1) {
            info.msg = "Excluído com sucesso";
        } else if (delCli[0].affectedRows === 0) {
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
    const {id, nome, data_nascimento, email } = req.body;

    try {
        const atualiza = await db.query("UPDATE clientes SET nome = ?, data_nascimento = ?, email = ? WHERE id = ?", [nome, data_nascimento, email, id]);

        const info = { msg: "" };

        if (atualiza[0].affectedRows === 0) {
            info.msg = "Nenhum Cliente Encontrado";

        } else if (atualiza[0].affectedRows === 1) {
            info.msg = "Cliente Atualizado com Sucesso";
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

        const cli = await db.query("SELECT * FROM clientes WHERE email = ? AND senha = ?", [email, senhahash]);

        if(cli[0].length == 0) res.status(401).send({message:'E-mail ou Senha Incorretos !'});

        const token = jsonwebtoken.sign(
            {
                id: cli[0][0].id,
                nome: cli[0][0].nome,
                data_nascimento: cli[0][0].data_nascimento,
                email: cli[0][0].email,
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

