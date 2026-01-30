const btnFiltrar = document.querySelector("#filtrar");

const consultas = [
    {
        id: 2,
        cliente: "Henrique Piccolomini",
        barbeiro: "Thomas Fantini",
        servico: "Corte de Cabelo",
        data: "2025/12/20",
        hora: "17:30",
        status: "Agendada",
        descricao: "Estilo Mullet"
    },
    {
        id: 3,
        cliente: "Pedro Antonio Moroni",
        barbeiro: "Thomas Fantini",
        servico: "Corte de Sobrancelha",
        data: "2025/11/28",
        hora: "18:30",
        status: "Agendada",
        descricao: "Estilo Low Fade e Cortar excesso"
    },
    {
        id: 4,
        cliente: "Pedro Luis Moroni",
        barbeiro: "Thomas Fantini",
        servico: "Corte de Barba",
        data: "2025/11/26",
        hora: "18:30",
        status: "Agendada",
        descricao: "Estilo Social e Pouco corte"
    },
    {
        id: 5,
        cliente: "Matheus Parma",
        barbeiro: "Thomas Fantini",
        servico: "Corte de Cabelo",
        data: "2025/11/25",
        hora: "10:30",
        status: "Em Anadamento",
        descricao: "Estilo Low Fade"
    }
];

const linha = document.querySelector("#modelo");
const tbody = document.querySelector("tbody");

consultas.forEach((atendimento) => {
    let novoCard = linha.cloneNode(true);
    novoCard.querySelector(".id").innerHTML = atendimento.id;
    novoCard.querySelector(".cliente").innerHTML = atendimento.cliente;
    novoCard.querySelector(".barbeiro").innerHTML = atendimento.barbeiro;
    novoCard.querySelector(".servico").innerHTML = atendimento.servico;
    novoCard.querySelector(".data").innerHTML = atendimento.data;
    novoCard.querySelector(".hora").innerHTML = atendimento.hora;
    novoCard.querySelector(".status").innerHTML = atendimento.status;
    novoCard.querySelector(".descricao").innerHTML = atendimento.descricao;

    tbody.appendChild(novoCard);
});

const busca = document.querySelector("#busca");
busca.addEventListener("keyup", () => {
    tbody.childNodes.forEach((tr) => {
        const conteudo = tr.innerHTML;
        if (conteudo) {
            const cliente = tr.querySelector(".cliente").innerHTML;
            if (cliente.toLowerCase().includes(busca.value.toLowerCase())) {
                tr.style.display = "table-row";
            } else {
                tr.style.display = "none";
            }
        }

    });
});


