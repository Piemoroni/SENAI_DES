const db = require("../data/connection");
const jsonwebtoken = require("jsonwebtoken");
const crypto = require('node:crypto');

const listarfuncionarios = async (req, res) => {
    const fun = await db.query("SELECT * FROM funcionarios")
    res.status(200).send(fun[0]).end();
};

const cadastrarfuncionario = async (req, res) => {
    const { nome, email, data_nascimento, cargo, senha} = req.body;

    //Cria uma hash md5 em hexadecimal
    const novasenha = crypto.createHash("MD5").update(senha).digest("hex").toString();

    const novoFuncionario = await db.query("INSERT INTO funcionarios VALUES (DEFAULT, ?, ?, ?, ?, ?)", [nome, email, data_nascimento, novasenha, cargo]);

    res.send({
        id: novoFuncionario[0].insertId, 
        nome: nome,
        email: email,
        aniversário: data_nascimento,
        senha: novasenha,
        cargo: cargo
    }).end();
}

const excluirfuncionarios = async (req, res) => {
    const idFun = req.params.id;

    try {
        const delFun = await db.query("DELETE FROM funcionarios WHERE id = ?", [idFun]);

        const info = { msg: "" };

        if (delFun[0].affectedRows === 1) {
            info.msg = "Excluído com sucesso";
        } else if (delFun[0].affectedRows === 0) {
            info.msg = "Post não encontrado";
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

const LoginFuncionarios = async (req, res) => {
    const { email, senha } = req.body;
    
    try {
        const senhahash = crypto.createHash("MD5").update(senha).digest("hex").toString();

        const funcionario = await db.query("SELECT * FROM funcionarios WHERE email = ? AND senha = ?", [email, senhahash]);

        if(funcionario[0].length == 0) res.status(401).send({message:'E-mail or Password incorrect !'});

        const token = jsonwebtoken.sign(
            {
                id: funcionario[0][0].id,
                name: funcionario[0][0].nome,
                email: funcionario[0][0].email,
                cargo: funcionario[0][0].cargo
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
    cadastrarfuncionario,
    excluirfuncionarios,
    listarfuncionarios,
    LoginFuncionarios
}