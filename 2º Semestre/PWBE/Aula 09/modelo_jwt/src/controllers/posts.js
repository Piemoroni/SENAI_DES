const db = require("../data/connection");

const listarposts = async (req, res) => {
    const posts = await db.query("SELECT * FROM posts")
    res.status(200).send(posts[0]).end();
};

const cadastrarpost = async (req, res) => {
    const { titulo, conteudo } = req.body;
    const id_usuario = req.headers['user'].id;

    const novopost = await db.query("INSERT INTO posts VALUE (DEFAULT, ?, ?, ?)", [titulo, conteudo, id_usuario]);

    res.send({
        id: novopost[0].insertId,
        titulo: titulo,
        conteudo: conteudo
    }).end();
};

const excluirpost = async (req, res) => {
    const idPost = req.params.id;

    try {
        const delpost = await db.query("DELETE FROM posts WHERE id = ?", [idPost]);

        const info = { msg: "" };

        if (delpost[0].affectedRows === 1) {
            info.msg = "Excluído com sucesso";
        } else if (delpost[0].affectedRows === 0) {
            info.msg = "Post não encontrado";
        }

        res.status(200).json(info);

    } catch (error) {
        console.log(error);
        const info = { msg: "" };

        if (error.errno === 1054) {
            info.msg = "Erro que eu não sei qual é";
        }

        if (error.code === "ECONNREFUSED") {
            info.msg = "Há um erro de comunicação";
        }

        res.status(500).json(info);
    }
}

const atualizarpost = async (req, res) => {
    const {id, titulo, conteudo, id_usuario } = req.body;

    try {
        const atualiza = await db.query("UPDATE posts SET titulo = ?, conteudo = ?, id_usuario = ? WHERE id = ?", [titulo, conteudo, id_usuario, id]);

        const info = { msg: "" };

        if (atualiza[0].affectedRows === 0) {
            info.msg = "Nenhum post Encontrado";

        } else if (atualiza[0].affectedRows === 1) {
            info.msg = "Post Atualizado com Sucesso";
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
    listarposts,
    cadastrarpost,
    excluirpost,
    atualizarpost
}