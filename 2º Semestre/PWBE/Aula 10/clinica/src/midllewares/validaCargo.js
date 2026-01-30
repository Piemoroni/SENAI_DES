const ValidaAtendente = (req, res, next) => {
    const cargo = req.headers['user'].cargo;

    if (cargo === "ATENDENTE"){
        next();
    }else {
        res.status(401).send("Sem nível de acesso").end();
    }
};

const validaADM = (req, res, next) => {
    const cargo = req.headers['user'].cargo;
    
    if(cargo === "ADM"){
        next();
    }else {
        res.status(401).send("Sem nível de acesso").end();
    }
}

const validaADMeATENDENTE = (req, res, next) => {
    const cargo = req.headers['user'].cargo;

    if(cargo === "ADM" || cargo === "ATENDENTE"){
        next();
    }else {
        res.status(401).send("Sem nível de acesso").end();
    }
}

const validaMedico = (req, res, next) => {
    const cargo = req.headers['user'].cargo;

    if (cargo === "CARDIOLOGISTA"){
        next();
    } else if (cargo === "NEUROLOGISTA"){
        next();
    } else if (cargo === "ORTOPEDIA"){
        next();
    } else if (cargo === "OFTALMOLOGIA"){
        next();
    } else if (cargo === "TRAUMATOLOGIA") {
        next();
    } else if (cargo === "GINECOLOGISTA"){
        next();
    } else if (cargo === "PEDIATRA"){
        next();
    } else{
        res.status(401).send("Sem nível de acesso").end();
    }
}

module.exports = {
    ValidaAtendente,
    validaADM,
    validaADMeATENDENTE,
    validaMedico
};