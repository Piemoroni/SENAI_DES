const professores = require("../data/professores.data");
const turmas = require("../data/turmas.data");
const disciplinas = require("../data/disciplinas.data");
const possui = require("../data/possui.data");

const listarProfessores = (req, res) => {
    res.status(200).send(professores).end();
};

const buscarProfessor = (req, res) => {
    const id = req.params.id;
    var resultado = "não encontrado";

    professores.forEach((p) => {
        if (p.id === id) resultado = p;
    });

    res.send(resultado).end();
};

const cadastrarProfessor = (req, res) => {
    professores.push(req.body);
    res.status(201).send("Professor cadastrado com sucesso!").end();
};

const apagarProfessor = (req, res) => {
    const id = req.params.id;
    var indice = -1;

    professores.forEach((profs, i) => {
        if (profs.id === id) indice = i;
    });

    if (indice === -1) res.status(404).end();
    else {
        professores.splice(indice, 1);
        res.status(204).end();
    }
};

const alterarProfessor = (req, res) => {
    const professoralterado = req.body;
    var encontrei = false;

    professores.forEach((d, i) => {
        if (d.id === professoralterado.id) {
            professores[i] = professoralterado;
            encontrei = true;
        }
    });

    if (!encontrei) res.status(404).end();
    else res.status(201).end();
};

const atualizarProfessor = (req, res) => {
    const id = req.params.id;
    const novosDados = req.body;
    var indice = -1;

    professores.forEach((turma, i) => {
        if (turma.id === id) indice = i;
    });

    if (indice === -1) res.status(404).end();
    else {
        Object.keys(novosDados).forEach((key) => {
            professores[indice][key] = novosDados[key];
        });
        res.status(204).end();
    }
};






const listarDisciplinas = (req, res) => {
    res.status(200).send(disciplinas).end();
};

const buscarDisciplina = (req, res) => {
    const id = req.params.id;
    var resultado = "não encontrado";

    disciplinas.forEach((d) => {
        if (d.id === id) resultado = d;
    });

    res.send(resultado).end();
};

const cadastrarDisciplina = (req, res) => {
    disciplinas.push(req.body);
    res.status(201).send("Disciplina cadastrada com sucesso!").end();
};

const alterarDisciplina = (req, res) => {
    const disciplinaAlterada = req.body;
    var encontrei = false;

    disciplinas.forEach((d, i) => {
        if (d.id === disciplinaAlterada.id) {
            disciplinas[i] = disciplinaAlterada;
            encontrei = true;
        }
    });

    if (!encontrei) res.status(404).end();
    else res.status(201).end();
};

const atualizarDisciplina = (req, res) => {
    const id = req.params.id;
    const novosDados = req.body;
    var indice = -1;

    disciplinas.forEach((turma, i) => {
        if (turma.id === id) indice = i;
    });

    if (indice === -1) res.status(404).end();
    else {
        Object.keys(novosDados).forEach((key) => {
            disciplinas[indice][key] = novosDados[key];
        });
        res.status(204).end();
    }
};

const apagarDisciplina = (req, res) => {
    const id = req.params.id;
    var indice = -1;

    disciplinas.forEach((apague, i) => {
        if (apague.id === id) indice = i;
    });

    if (indice === -1) res.status(404).end();
    else {
        disciplinas.splice(indice, 1);
        res.status(204).end();
    }
};










const listarTurmas = (req, res) => {
    res.status(200).send(turmas).end();
};

const buscarTurma = (req, res) => {
    const id = req.params.id;
    var resultado = "não encontrado";

    turmas.forEach((turma) => {
        if (turma.id === id) resultado = turma;
    });

    res.send(resultado).end();
};

const cadastrarTurma = (req, res) => {
    turmas.push(req.body);
    res.status(201).send("Turma cadastrada com sucesso!").end();
};

const atualizarTurma = (req, res) => {
    const id = req.params.id;
    const novosDados = req.body;
    var indice = -1;

    turmas.forEach((turma, i) => {
        if (turma.id === id) indice = i;
    });

    if (indice === -1) res.status(404).end();
    else {
        Object.keys(novosDados).forEach((key) => {
            turmas[indice][key] = novosDados[key];
        });
        res.status(204).end();
    }
};

const alterarTurma = (req, res) => {
    const turmaalterada = req.body;
    var encontrei = false;

    turmas.forEach((d, i) => {
        if (d.id === turmaalterada.id) {
            turmas[i] = turmaalterada;
            encontrei = true;
        }
    });

    if (!encontrei) res.status(404).end();
    else res.status(201).end();
};

const apagarTurma = (req, res) => {
    const id = req.params.id;
    var indice = -1;

    turmas.forEach((apague, i) => {
        if (apague.id === id) indice = i;
    });

    if (indice === -1) res.status(404).end();
    else {
        turmas.splice(indice, 1);
        res.status(204).end();
    }
};












const listarPossui = (req, res) => {
    res.status(200).send(possui).end();
};



const cadastrarPossui = (req, res) => {
    const idTurma = req.body.idTurma; 
    const idDisciplina = req.body.idDisciplina;

    let turmaExiste = false;
    let disciplinaExiste = false;

    turmas.forEach((turma) => {
        if (turma.id === req.body.turma_id) turmaExiste = true;
    });

    disciplinas.forEach((disci) => {
        if (disci.id === req.body.disciplina_id) disciplinaExiste = true;
    });

    if (turmaExiste && disciplinaExiste) {
        possui.push(req.body);
        res.status(201).send("Relação criada com sucesso!").end();
    } else {
        res.status(400).send("Turma ou Disciplina não encontrada!").end();
    }
};




const apagarPossui = (req, res) => {
    const id = req.params.id;
    var indice = -1;

    possui.forEach((apague, i) => {
        if (apague.id === id) indice = i;
    });

    if (indice === -1) res.status(404).end();
    else {
        possui.splice(indice, 1);
        res.status(204).end();
    }
};

const buscarPossui = (req, res) => {
    const id = req.params.id;
    var resultado = "não encontrado";

    possui.forEach((po) => {
        if (po.id === id) resultado = po;
    });

    res.send(resultado).end();
};

const atualizarPossui = (req, res) => {
    const id = req.params.id;
    const novosDados = req.body;
    var indice = -1;

    possui.forEach((possui, i) => {
        if (possui.id === id) indice = i;
    });

    if (indice === -1) res.status(404).end();
    else {
        Object.keys(novosDados).forEach((key) => {
            possui[indice][key] = novosDados[key];
        });
        res.status(204).end();
    }
};

const alterarPossui = (req, res) => {
    const possuialterado = req.body;
    var encontrei = false;

    possui.forEach((p, i) => {
        if (p.id === possuialterado.id) {
            possui[i] = possuialterado;
            encontrei = true;
        }
    });

    if (!encontrei) res.status(404).end();
    else res.status(201).end();
};





module.exports = {
    listarProfessores,
    buscarProfessor,
    cadastrarProfessor,
    apagarProfessor,
    alterarProfessor,
    atualizarProfessor,

    listarDisciplinas,
    buscarDisciplina,
    cadastrarDisciplina,
    alterarDisciplina,
    atualizarDisciplina,
    apagarDisciplina,

    atualizarTurma,
    listarTurmas,
    buscarTurma,
    cadastrarTurma,
    alterarTurma,
    apagarTurma,

    listarPossui,
    cadastrarPossui,
    apagarPossui,
    buscarPossui,
    atualizarPossui,
    alterarPossui
};
