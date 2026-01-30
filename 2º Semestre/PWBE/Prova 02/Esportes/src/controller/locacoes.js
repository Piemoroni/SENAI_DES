const db = require('../data/conecction');

const listar = async (req, res) => {
  const fun = await db.query("SELECT * FROM locacoes")
  res.status(200).send(fun[0]).end();
};

const cadastrar = async (req, res) => {
    const { data_locacao, data_devolucao, id_aluno, id_equipamento } = req.body;

    if (!data_locacao || !data_devolucao || !id_aluno || !id_equipamento) {
        return res.status(400).send({ erro: "Todos Os Campos São Obrigatórios." });
    }

    try {
        const novaLocacao = await db.query("INSERT INTO locacoes VALUES (DEFAULT, ?, ?, ?, ?)", [data_locacao, data_devolucao, id_aluno, id_equipamento]);

        res.send({
            id: novaLocacao[0].insertId,
            data_locacao: data_locacao,
            data_devolucao: data_devolucao,
            id_aluno: id_aluno,
            id_equipamento: id_equipamento
        }).end();

    } catch (erro) {
        res.status(500).send({ erro: "Erro Ao Cadastrar Locação." });
    }
};

const excluir = async (req, res) => {
    const idLoc = req.params.id;

    try {
        const delLoc = await db.query("DELETE FROM locacoes WHERE id = ?", [idLoc]);

        const info = { msg: "" };

        if (delLoc[0].affectedRows === 1) {
            info.msg = "Excluído Com Sucesso";
        } else if (delLoc[0].affectedRows === 0) {
            info.msg = "Locação Não Encontrada";
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
    const {id, data_locacao, data_devolucao, id_aluno, id_equipamento} = req.body;

    try {
        const [atualiza] = await db.query("UPDATE locacoes SET data_locacao = ?, data_devolucao = ?, id_aluno = ?, id_equipamento = ? WHERE id = ?", [data_locacao, data_devolucao, id_aluno, id_equipamento, id]);

        const info = { msg: "" };

        if (atualiza.affectedRows === 0) {
            info.msg = "Nenhuma Locação Encontrada";

        } else if (atualiza.affectedRows === 1) {
            info.msg = "Locação Atualizada com Sucesso";
        }

        res.status(200).json(info).end();

    } catch (error) {
        console.log(error);

        const info = { msg: "" };

        if (error.code === "ECONNREFUSED") {
            info.msg = "Há um erro de comunicação";
        } else {
            info.msg = "Erro ao atualizar locação";
            console.log(error);
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