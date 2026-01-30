const validaGerente = (req, res, next) => {
    const cargo = req.headers['user'].cargo;

    if (cargo === "GERENTE"){
        next();
    }else {
        res.status(401).send("Sem nível de acesso").end();
    }
};

const validaSupervisor = (req, res, next) => {
    const cargo = req.headers['user'].cargo;

    if(cargo === "SUPERVISOR"){
        next();
    }else {
        res.status(401).send("Sem nível de acesso").end();
    }
}

const validaGerenteeSupervisor = (req, res, next) => {
    const cargo = req.headers['user'].cargo;

    if(cargo === "GERENTE" || cargo === "SUPERVISOR"){
        next();
    }else {
        res.status(401).send("Sem nível de acesso").end();
    }
}

module.exports = {
    validaGerente,
    validaSupervisor,
    validaGerenteeSupervisor
};