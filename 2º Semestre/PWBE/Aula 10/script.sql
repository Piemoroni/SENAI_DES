---- SERVER.JS ----

require("dotenv").config();
const express = require('express');
const app = express();
const port = 3000;

const  pacientesRoutes = require('./src/routes/pacientes');
const  funcionariosRoutes = require("./src/routes/funcionarios");
const  consultasRoutes = require('./src/routes/consultas');

app.use(express.json());

app.use(pacientesRoutes);
app.use(funcionariosRoutes);
app.use(consultasRoutes);

app.listen(port, () => {
    console.log('Servidor Online na Porta ' + port);
})

---- .ENV ----

SECRET_JWT=f?#cPV9]2sc"}gQhO)Yx7IT1M*zuv&;FVC(vsFAz;]n2tK:T*uH|@Ixrow3bLC+

DATABASE_URL=localhost
DATABASE_USER= root
DATABASE_PASSWORD= 
DATABASE= clinica

---- ROUTES ----
---- CONSULTAS.JS ----

const consultasController = require('../controller/consultas');

const express = require('express');
const validate = require("../midllewares/auth");

const { validaADM } = require ("../midllewares/validaCargo");
const { validaADMeATENDENTE } = require ("../midllewares/validaCargo");
const {validaMedico} = require ("../midllewares/validaCargo");

const consultasRoutes = express.Router();

consultasRoutes.post('/cadastrarconsulta',validate, validaADMeATENDENTE, consultasController.cadastrarconsulta); //testado
consultasRoutes.delete('/excluirconsultas/:id',validate, validaADM, consultasController.excluirconsulta); //testado
consultasRoutes.get('/listarconsultas',validate,validaADM, consultasController.listarconsulta); //testado
consultasRoutes.get('/consultasEspecilaidade',consultasController.consultaespecialidade); //testado
consultasRoutes.get('/pacientesMedico',consultasController.pacientesmedico); //testado
consultasRoutes.get('/listarcomdados',consultasController.listarconsultascomdados); //testado
consultasRoutes.get('/dadosdeles/:id_funcionario',validate, validaMedico,consultasController.listarpacientesdeles); //testado

module.exports = consultasRoutes;


---- FUNCIONARIOS.JS ----

const funcionariosController = require('../controller/funcionarios');

const express = require('express');
const validate = require("../midllewares/auth");

const { validaADM } = require ("../midllewares/validaCargo");

const funcionariosRoutes = express.Router();

funcionariosRoutes.post('/cadastrarfuncionario',validate, validaADM, funcionariosController.cadastrarfuncionario);//testado
funcionariosRoutes.delete('/excluirfuncionario/:id',validate, validaADM, funcionariosController.excluirfuncionarios); //testado
funcionariosRoutes.get('/listarfuncionario',validate, validaADM, funcionariosController.listarfuncionarios); //testado
funcionariosRoutes.post('/Login', funcionariosController.LoginFuncionarios); //testado

module.exports = funcionariosRoutes;


---- PACIENTES.JS ----
const pacientesController = require('../controller/pacientes');

const express = require('express');
const validate = require("../midllewares/auth");

const { validaADM } = require ("../midllewares/validaCargo");
const { validaADMeATENDENTE } = require ("../midllewares/validaCargo");
const {validaMedico} = require ("../midllewares/validaCargo");

const pacientesRoutes = express.Router();

pacientesRoutes.post('/cadastrarpaciente',validate, validaADMeATENDENTE, pacientesController.cadastrarpaciente); //testado
pacientesRoutes.delete('/excluirpaciente/:id',validate, validaADM, pacientesController.excluirpaciente); //testado
pacientesRoutes.get('/listarpaciente',validate, validaADM, pacientesController.listarpaciente); //testado

module.exports = pacientesRoutes;



---- MIDLLEWARES ----
---- AUTH.JS ----

const jsonwebtoken = require("jsonwebtoken");

const validate = (req, res, next) => {
    const token  = req.headers.authorization?.split(" ")[1];
    //  0     1
    //Break Token

    if(!token) res.status(401).send({message : "Access Denied. No token provided."}).end();
    
    try {
        const payload = jsonwebtoken.verify(token, process.env.SECRET_JWT);

        req.headers['user'] = payload;

        next();
        
    }catch(err) {
        res.status(500).send(err).end();
    }
}

module.exports = validate;


---- ValidaCargo.js ----
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



----- data ----
---- connection ---- 


const database = require("mysql2/promise");

const connection = database.createPool({
   host: process.env.DATABASE_URL,
   user: process.env.DATABASE_USER,
   password: process.env.DATABASE_PASSWORD,
   database: process.env.DATABASE
});

module.exports = connection;



---- controller ----
---- consultas.js -----

const db = require("../data/connection");
const jsonwebtoken = require("jsonwebtoken");
const crypto = require('node:crypto');


const listarconsulta = async (req, res) => {
  const fun = await db.query("SELECT * FROM consultas")
  res.status(200).send(fun[0]).end();
}

const consultaespecialidade = async (req, res) => {
  try {
    const especialidade = await db.query("SELECT f.cargo, COUNT(c.id) AS quantidade FROM consultas c INNER JOIN funcionarios f ON c.id_funcionario = f.id GROUP BY f.cargo");
    res.status(200).send(especialidade[0]).end();
  } 
  catch (error) {
    res.status(500).json({ msg: "Erro ao buscar consultas por especialidade" }).end();
  }
};

const pacientesmedico = async (req, res) => {
  try {
    const pacientes = await db.query("SELECT f.nome AS medico, COUNT(DISTINCT c.id_paciente) AS quantidade_pacientes FROM consultas c INNER JOIN funcionarios f ON c.id_funcionario = f.id GROUP BY f.nome");
    res.status(200).send(pacientes[0]).end();
  } 
  catch (error) {
    res.status(500).json({ msg: "Erro ao buscar pacientes por médico" }).end();
  }
};

const listarconsultascomdados = async (req, res) => {
  try {
    const consultas = await db.query(" SELECT p.nome AS paciente, f.cargo AS especialidade, c.data, c.status FROM consultas c INNER JOIN pacientes p ON c.id_paciente = p.id INNER JOIN funcionarios f ON c.id_funcionario = f.id");
    res.status(200).send(consultas[0]).end();
  } 
  catch (error) {
    res.status(500).json({ msg: "Erro ao buscar consultas" }).end();
  }
};

const listarpacientesdeles = async (req, res) => {
  const idMedico = req.headers['user'].id;
  console.log(idMedico);

  try {
    const [pacientes] = await db.query(
      "SELECT p.* FROM pacientes p INNER JOIN consultas c ON p.id = c.id_paciente WHERE c.id_funcionario = ?", [idMedico]);

    return res.status(200).json(pacientes);
  } 
  catch (error) {
    console.error(error);
    return res.status(500).json({ msg: "Erro ao buscar pacientes" });
  }
};


const cadastrarconsulta = async (req, res) => {
  const { id_paciente, id_funcionario, data, hora, status } = req.body;
  const hoje = new Date();
  const consulta = new Date(data);
  consulta.setDate(consulta.getDate() + 1);

  hoje.setHours(0,0,0,0);
  consulta.setHours(0,0,0,0);

  if (hoje <= consulta) {
    try {
      const consultaExistente = await db.query(
        "SELECT * FROM consultas WHERE id_funcionario = ? AND id_paciente = ? AND data = ?", [id_funcionario, id_paciente, data]
      );

      if (consultaExistente[0].length > 0) {
        res.status(400).json({ msg: "Funcionário e paciente já têm consulta agendada para este dia" }).end();
      }
      else {
        const novaConsulta = await db.query(
          "INSERT INTO consultas VALUES (DEFAULT, ?, ?, ?, ?, ?)", [id_paciente, id_funcionario, data, hora, status]
        );

        res.send({
          id: novaConsulta[0].insertId,
          id_paciente: id_paciente,
          id_medico: id_funcionario,
          data: data,
          hora: hora,
          status: status,
        }).end();
      }

    } catch (error) {
      const info = { msg: "" };
      if (error.errno === 1451) {
        info.msg = "Não foi possível cadastrar";
      }
      res.status(500).json(info).end();
    }
  }else {
    res.status(400).json({ msg: "Data inválida" }).end();
  }
};

const excluirconsulta = async (req, res) => {
  const idCon = req.params.id;

  try {
    const delCon = await db.query("DELETE FROM consultas WHERE id = ?", [idCon]);

    const info = { msg: "" };

    if (delCon[0].affectedRows === 1) {
      info.msg = "Excluída com sucesso";
    } else if (delCon[0].affectedRows === 0) {
      info.msg = "Consulta não encontrada";
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


module.exports = {
  cadastrarconsulta,
  listarconsulta,
  excluirconsulta,
  consultaespecialidade,
  pacientesmedico,
  listarconsultascomdados,
  listarpacientesdeles,
}



---- funcionarios.js ----

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


---- pacientes.js ----

const db = require("../data/connection");
const jsonwebtoken = require("jsonwebtoken");
const crypto = require('node:crypto');

const listarpaciente = async (req, res) => {
    const paci = await db.query("SELECT * FROM pacientes")
    res.status(200).send(paci[0]).end();
};


const cadastrarpaciente = async (req, res) => {
    const { nome, telefone, data_nascimento, cpf, senha, email } = req.body;

    //Cria uma hash md5 em hexadecimal
    const novasenha = crypto.createHash("MD5").update(senha).digest("hex").toString();

    const novoPaciente = await db.query("INSERT INTO pacientes VALUES (DEFAULT, ?, ?, ?, ?, ?, ?)", [nome, telefone, data_nascimento, cpf, novasenha, email]);

    res.send({
        id: novoPaciente[0].insertId, 
        nome: nome,
        telefone: telefone,
        aniversário: data_nascimento,
        CPF: cpf,
        senha: novasenha,
        email: email
    }).end();
}

const excluirpaciente = async (req, res) => {
    const idPaci = req.params.id;

    try {
        const delCli = await db.query("DELETE FROM pacientes WHERE id = ?", [idPaci]);

        const info = { msg: "" };

        if (delCli[0].affectedRows === 1) {
            info.msg = "Excluído com sucesso";
        } else if (delCli[0].affectedRows === 0) {
            info.msg = "Paciente não encontrado";
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


module.exports = {
    cadastrarpaciente,
    listarpaciente,
    excluirpaciente
}


