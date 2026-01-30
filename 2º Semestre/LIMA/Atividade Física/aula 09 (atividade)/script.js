const btnMenu = document.querySelector("#btn-menu");
const menuLateral = document.querySelector("#menu-lateral");

btnMenu.addEventListener("click", () => {
    if(
        menuLateral.style.left === "" ||  
        menuLateral.style.left === "-200px"
    ) {
        menuLateral.style.left = "0";
    } else {
        menuLateral.style.left = "-200px";
    }
});

const alunos = [
    {
        "nome": "Letícia Doff Sotta Souza",
        "turma": "2B",
        "disciplina": "Dsenvolvimento de Sistemas",
        "media": "9,0"
    },
    {
       "nome": "Murilo Lazarini Chiarello",
        "turma": "2B",
        "disciplina": "Dsenvolvimento de Sistemas",
        "media": "4,0"
    },
    {
       "nome": "Alice Rodrigues da Silva",
        "turma": "2B",
        "disciplina": "Dsenvolvimento de Sistemas",
        "media": "8,5"
    }
];

const card = document.querySelector(".box");
const main = document.querySelector("main");

alunos.forEach((aluno) => {
    let novoCard = card.cloneNode(true);
    
    novoCard.querySelector("#nome").innerHTML = aluno.nome;
    novoCard.querySelector("#turma").innerHTML = aluno.turma;
    novoCard.querySelector("#disc").innerHTML = aluno.disciplina;
    novoCard.querySelector("#media").innerHTML = aluno.media;
    

    main.appendChild(novoCard);
});

if(aluno.media<7)