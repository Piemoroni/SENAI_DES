const clientes = require("../data/clientes.data");
const quartos = require("../data/quarto.data");
const reservas = require("../data/reserva.data");

const cadastrarcliente = (req, res) => {
    clientes.push(req.body);
    res.status(202).send("Cliente cadastrado com sucesso!").end();
};

const listarclientecomreservaemandamento = (req, res) => {
  let clientesComReserva = [];
  let encontrou = false;

  reservas.forEach((reserva) => {
    if (reserva.checkout === "null") {
      let clienteNome = "";
      let quartoTipo = "";

      clientes.forEach((cli) => {
        if (cli.id === reserva.cliente_id) {
          clienteNome = cli.nome;
        }
    });
      quartos.forEach((quar) => {
        if (quar.id === reserva.quarto_id) {
          quartoTipo = quar.tipo;
        }
    });
      clientesComReserva.push({
        nome: clienteNome,
        quarto: quartoTipo,
    });
    
      encontrou = true;
    }
  });

  if (encontrou) {
    res.status(200).send(clientesComReserva).end();
  } else {
    res.status(404).send("Nenhum cliente com reserva em andamento.").end();
  }
};


module.exports = {
    cadastrarcliente,
    listarclientecomreservaemandamento
}