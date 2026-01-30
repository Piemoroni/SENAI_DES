const db = require('../data/conecction');

const listar = async (req, res) => {
  const fun = await db.query("SELECT * FROM equipamentos")
  res.status(200).send(fun[0]).end();
};

const cadastrar = async (req, res) => {
    const { nome, categoria, quantidade } = req.body;

    if (!nome || !categoria || !quantidade) {
        return res.status(400).send({ erro: "Todos os Campos São Obrigatórios." });
    }

    if (quantidade < 1) {
        return res.status(400).send({ erro: "A Quantidade Deve Ser No Mínimo 1." });
    }

    try {
        const novoEquipamento = await db.query("INSERT INTO equipamentos VALUES (DEFAULT, ?, ?, ?)", [nome, categoria, quantidade]);

        res.send({
            id: novoEquipamento[0].insertId,
            nome: nome,
            categoria: categoria,
            quantidade: quantidade
        }).end();

    } catch (erro) {
        res.status(500).send({ erro: "Erro ao cadastrar equipamento." });
    }
};

const excluir = async (req, res) => {
    const idEquip = req.params.id;

    try {
        const delEquip = await db.query("DELETE FROM equipamentos WHERE id = ?", [idEquip]);

        const info = { msg: "" };

        if (delEquip[0].affectedRows === 1) {
            info.msg = "Excluído com sucesso";
        } else if (delEquip[0].affectedRows === 0) {
            info.msg = "Equipamento não encontrado";
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
    const {id, nome, categoria, quantidade} = req.body;

    try {
        const atualiza = await db.query("UPDATE equipamentos SET nome = ?, categoria = ?, quantidade = ? WHERE id = ?", [nome, categoria, quantidade, id]);

        const info = { msg: "" };

        if (atualiza[0].affectedRows === 0) {
            info.msg = "Nenhum Equipamento Encontrado";

        } else if (atualiza[0].affectedRows === 1) {
            info.msg = "Equipamento Atualizado com Sucesso";
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