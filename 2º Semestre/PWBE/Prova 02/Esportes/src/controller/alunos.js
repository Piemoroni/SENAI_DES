const db = require('../data/conecction');

const listar = async (req, res) => {
  const fun = await db.query("SELECT * FROM alunos")
  res.status(200).send(fun[0]).end();
};

const cadastrar = async (req, res) => {
    const { nome, turma } = req.body;

    if (!nome || !turma) {
        return res.status(400).send({ erro: "Todos os campos são obrigatórios." });
    }

    try {
        const novoAluno = await db.query("INSERT INTO alunos VALUES (DEFAULT, ?, ?)", [nome, turma]);

        res.send({
            id: novoAluno[0].insertId,
            nome: nome,
            turma: turma
        }).end();
        
    } catch (erro) {
        res.status(500).send({ erro: "Erro ao cadastrar aluno." });
    }
};

const excluir = async (req, res) => {
    const idAluno = req.params.id;

    try {
        const delAluno = await db.query("DELETE FROM alunos WHERE id = ?", [idAluno]);

        const info = { msg: "" };

        if (delAluno[0].affectedRows === 1) {
            info.msg = "Excluído com sucesso";
        } else if (delAluno[0].affectedRows === 0) {
            info.msg = "Aluno não encontrado";
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
    const {id, nome, turma} = req.body;

    try {
        const atualiza = await db.query("UPDATE alunos SET nome = ?, turma = ? WHERE id = ?", [nome, turma, id]);

        const info = { msg: "" };

        if (atualiza[0].affectedRows === 0) {
            info.msg = "Nenhum Aluno Encontrado";

        } else if (atualiza[0].affectedRows === 1) {
            info.msg = "Aluno Atualizado com Sucesso";
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
 listar,
 cadastrar,
 excluir,
 atualizar
}
