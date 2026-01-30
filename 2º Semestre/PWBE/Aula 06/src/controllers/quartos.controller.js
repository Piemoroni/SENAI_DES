const quartos = require("../data/quarto.data");

const listarquartosdisponiveis = (req, res) => {
    const quartosDisponiveis = quartos.filter(quarto => quarto.disponivel);
    res.status(200).send(quartosDisponiveis).end();
};

const simularvalorestadia = (req, res) => {
  const idQuarto = req.params.idquarto;
  const dias = req.params.dias;
  let quartoExiste = false;
  let valorDiaria = 0;
  let tipoQuarto = "";

  quartos.forEach((quar) => {
    if (quar.id === idQuarto) {
      quartoExiste = true;
      tipoQuarto = quar.tipo;
      valorDiaria = quar.valor;
    }
  });
  if (quartoExiste) {
    res.status(400).send("Quarto não encontrado!").end();
    return;
  }

  if (dias <= 0) {
    res.status(400).send("Número de dias inválido.").end();
    return;
  }

  const valorTotal = dias * valorDiaria;
  res.status(200).send({
    quarto: tipoQuarto,
    valorDiaria: valorDiaria,
    diasSimulados: dias,
    valorTotal: valorTotal
  }).end();
};




module.exports = {
   listarquartosdisponiveis,
   simularvalorestadia
}