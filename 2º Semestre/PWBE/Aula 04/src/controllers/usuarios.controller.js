const usuarios = require("../data/usuarios.data");

//Req -> request (requisição)
//Res - Response (resposta)
const listar = (req, res) => {
    res.status(200).send(usuarios).end();
};

const buscar = (req, res) => {
    //      /ususarios/id
    const idUsuario = req.params.id;

    var user = "não encontrado";

    usuarios.forEach((usuario, index) => {
        if (usuario.id === idUsuario){
            user = usuario;
    
        }
    });
    res.send(user).end();
};

const cadastrar = (req, res) => {
    const novoUsuario = req.body;
    usuarios.push(novoUsuario);
    res.status(201).send("Cadastrado com Sucesso !").end();
};

const apagar = (req, res) => {
    // / usuarios/id - paramentro
    const idUsuario = req.params.id;

    var indice = -1;

    usuarios.forEach((usuario, index) => {
        if (usuario.id === idUsuario) {
            indice = index;
        }
    });

    if (indice === -1) {
        res.status(404).end();
    }else {
        usuarios.splice(indice, 1);
        res.status(204).end();
    }
};

const alterar = (req, res) => {
    const usuarioAlterado = req.body;

    var encontrei = false;

    usuarios.forEach ((usuario, index) => {
        if (usuario.id === usuarioAlterado.id){
            usuarios[index] = usuarioAlterado;
            encontrei = true;
        }
    });

    if (encontrei === false) {
        res.status(404).end();
    }else {
        res.status(201).end();
    }
};

const atualizar = (req, res) => {
    const idUsuario = req.params.id;
    const novosDados = req.body;

    var indicie = -1;

    usuarios.forEach ((usuario, index) => {
        if (usuario.id === idUsuario) indicie = index;
    });

    if (indicie === -1){
        res.status(404).end();
    } else {
         Object.keys(novosDados).forEach ((key) => {
            usuarios[indicie][key] = novosDados[key];
        });
        res.status(204).end();
    }
};

module.exports = {
    listar,
    buscar,
    cadastrar,
    apagar,
    alterar,
    atualizar
};