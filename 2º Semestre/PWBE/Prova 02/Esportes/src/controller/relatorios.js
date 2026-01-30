const db = require('../data/conecction');

const locCategorias = async (req, res) => {
  try {
    const [resultado] = await db.query("SELECT equipamentos.categoria AS categoria, COUNT(locacoes.id) AS total_locacoes FROM locacoes INNER JOIN equipamentos ON locacoes.id_equipamento = equipamentos.id GROUP BY equipamentos.categoria ORDER BY total_locacoes DESC");

    res.status(200).json(resultado);

  } catch (error) {
    
    console.error(error);
    res.status(500).json({ msg: "Erro ao buscar total de locações por categoria" });
  }
};

const locAlunos = async (req, res) => {

  try {
    const resultado = await db.query( "SELECT alunos.nome AS aluno, COUNT(locacoes.id) AS total_locacoes FROM locacoes INNER JOIN alunos ON locacoes.id_aluno = alunos.id GROUP BY alunos.nome ORDER BY total_locacoes DESC");
    
    res.status(200).send(resultado[0]).end();
  } 
  
  catch (error) {
    res.status(500).json({ msg: 'Erro ao buscar total de locações por aluno' }).end();
  }
};

const locEquipamento = async (req, res) => {

  try {
    const resultado = await db.query("SELECT equipamentos.nome AS equipamento, COUNT(locacoes.id) AS total_locacoes FROM locacoes INNER JOIN equipamentos ON locacoes.id_equipamento = equipamentos.id GROUP BY equipamentos.nome ORDER BY total_locacoes DESC");
    
    res.status(200).send(resultado[0]).end();
  }

  catch (error) {
    res.status(500).json({ msg: 'Erro ao buscar total de locações por equipamento' }).end();
  }
};

module.exports = {
 locCategorias,
 locAlunos,
 locEquipamento
}