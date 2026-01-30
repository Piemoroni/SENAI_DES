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
