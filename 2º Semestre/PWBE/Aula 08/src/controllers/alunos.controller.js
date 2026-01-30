const db = require("../data/connection");

const cadastrarAluno = async (req, res) => {
    const {nome, idade, gênero_F_M, telefone, plano_id} = req.body;

    const novoAluno = await db.query("INSERT INTO alunos VALUES (DEFAULT, ?, ?, ?, ?, ?)", [nome, idade, gênero_F_M, telefone, plano_id]);

    const aluno = {
        Aluno_id: novoAluno[0].insertId,
        Nome: nome,
        idade: idade,
        Gênero: gênero_F_M,
        Telefone: telefone,
        Plano_id: plano_id
    }

    res.json(aluno).status(201).end();
};

const listarAlunos = async (req, res) => {
    const lista = await db.query("SELECT * FROM alunos");
    res.json(lista[0]).end();
};

const excluirAluno = async (req, res) => {
    const idAluno = req.params.aluno_id;

    try {
        const delal = await db.query("DELETE FROM alunos WHERE aluno_id = ?", [idAluno]);

        const info = {msg: ""};

        if(delal[0].affectedRows === 1){
            info.msg = "Excluido com sucesso";

        }else if(delal[0].affectedRows === 0) {
            info.msg = "Aluno não encontrado";
        }

        res.status(200).json(info).end();

    } catch (error) {
        console.log(error);
        const info = {msg: ""};

        if(error.errno === 1054){
            info.msg = "Erro q eu nn sei qual é"
        }

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }

        res.status(500).json(info).end();
    }
};

const atualizarAluno = async (req, res) => {
    const {aluno_id, nome, idade, gênero_F_M, telefone, plano_id } = req.body;

    try {
        const atualiza = await db.query("UPDATE alunos SET nome = ?, idade= ?, gênero_F_M = ?, telefone =?, plano_id = ? WHERE aluno_id = ?", [nome, idade, gênero_F_M, telefone, plano_id, aluno_id]);

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

const buscarPorId = async (req, res) => {
    const idAluno = req.params.aluno_id;

    try {
        const lista = await db.query("SELECT * FROM alunos WHERE aluno_id = ?", [idAluno]);

        res.status(200).json(lista[0]).end();

    } catch (error) {
        const info = { msg: "" };

        console.log(error);

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }

        res.status(500).json(info).end();
    }
};

const totaldeAssinatura = async (req, res) =>{
    const idPlano = req.params.plano_id;

    try{
        const total = await db.query("SELECT COUNT(plano_id) FROM alunos WHERE plano_id = ?", [idPlano]);

        res.status(200).json(total[0]).end();

    } catch (error) {
        const info = { msg: "" };

        console.log(error);

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }

        res.status(500).json(info).end();
    }
};

const totalGenero = async (req, res) => {
    const genero = req.params.gênero_F_M;

    try{
        const total = await db.query("SELECT COUNT(gênero_F_M) FROM alunos WHERE gênero_F_M = ?",[genero]);

        res.status(200).json(total[0]).end();

    }catch (error) {
        const info = { msg: ""};

        console.log(error);

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }

        res.status(500).json(info).end();

    }
};

const mediaidadeporgenero = async (req, res) => {
    const genero = req.params.gênero_F_M;

    try{
        const total = await db.query("SELECT  AVG(idade) FROM alunos WHERE gênero_F_M = ?", [genero]);

        res.status(200).json(total[0]).end();

    }catch (error){
        const info = { msg: ""};

        console.log(error);

        if(error.code === "ECONNREFUSED"){
            info.msg = "Há um erro de comunicação";
        }

        res.status(500).json(info).end();

    }

}

module.exports = {
    listarAlunos,
    cadastrarAluno,
    excluirAluno,
    atualizarAluno,
    buscarPorId,
    totaldeAssinatura,
    totalGenero,
    mediaidadeporgenero
}
