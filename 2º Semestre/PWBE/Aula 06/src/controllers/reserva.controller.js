const clientes = require("../data/clientes.data");
const quartos = require("../data/quarto.data");
const reservas = require("../data/reserva.data");

const validarCPF = (cpf) => {
    var Soma;
    var Resto;
    Soma = 0;
  if (strCPF == "00000000000") return false;

  for (i=1; i<=9; i++) Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (11 - i);
  Resto = (Soma * 10) % 11;

    if ((Resto == 10) || (Resto == 11))  Resto = 0;
    if (Resto != parseInt(strCPF.substring(9, 10)) ) return false;

  Soma = 0;
    for (i = 1; i <= 10; i++) Soma = Soma + parseInt(strCPF.substring(i-1, i)) * (12 - i);
    Resto = (Soma * 10) % 11;

    if ((Resto == 10) || (Resto == 11))  Resto = 0;
    if (Resto != parseInt(strCPF.substring(10, 11) ) ) return false;
    return true;

};

const cadastrarReserva = (req, res) => {
    const cliente_id = req.body.cliente_id;
    const quarto_id = req.body.quarto_id;

    let clienteExiste = false;
    let quartoExiste = false;
    let quartoVago = false;
    let clienteTemReservaAtiva = false

     clientes.forEach((cli) => {
        if (cli.id === cliente_id) {
            clienteExiste = true;
            if (validarCPF(cli.cpf)) {
                return res.status(400).send("CPF inválido!").end();
            }
        }
    });

    quartos.forEach((quart) => {
        if (quart.id === quarto_id) {
            quartoExiste = true;
            if (quart.status === "Vago") quartoVago = true;
        }
    });

    reservas.forEach((rese) => {
        if (rese.cliente_id === cliente_id && rese.checkout === "null") {
            clienteTemReservaAtiva = true;
        }
    });

    quartos.forEach((quar) => {
        if (quar.id === quarto_id) {
            quar.status = "Ocupado";
            res.status(201).send("Reserva criada com sucesso!").end();
        } else {
            res.status(400).send("Não foi possível criar a reserva. Verifique os dados informados.").end();
        }
    });

};

const listarresrva = (req, res) => {
    res.status(200).send(reservas).end();
};

const finalizerreserva = (req, res) => {
    const reservaalterado = req.body;
    var encontrei = false;

    reservas.forEach((res, i) => {
        if (res.id === reservasalterado.id) {
            reservas[i] = reservaalterado;
            encontrei = true;
        }
    });
    if (!encontrei) res.status(404).end();
    else res.status(201).end();
};

module.exports = {
    validarCPF,
    cadastrarReserva,
    listarresrva,
    finalizerreserva,
};

