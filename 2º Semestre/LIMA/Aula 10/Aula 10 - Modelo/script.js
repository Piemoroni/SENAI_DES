const btnMenu = document.querySelector("#btn-menu");
const menuLateral = document.querySelector("#menu-lateral");

btnMenu.addEventListener("click", () => {
    if (
        menuLateral.style.left === "" ||
        menuLateral.style.left === "-200px"
    ) {
        menuLateral.style.left = "0";
    } else {
        menuLateral.style.left = "-200px";
    }
});

const produtos = [
    {
        imagem: "https://www.carretasrusso.com.br/wp-content/uploads/2013/11/S5006860-680x510.jpg",
        nome: "Tradicional com 2 bancos"
    },
    {
        imagem: "https://img.olx.com.br/images/44/440563527943996.jpg",
        nome: "Charrete de madeira 1962"
    },
    {
        imagem: "https://www.carretasrusso.com.br/wp-content/uploads/2013/11/S5009368-680x510.jpg",
        nome: "Charrete Rosa"
    }
];

const card = document.querySelector(".box");
const main = document.querySelector("main");

produtos.forEach((produto) => {
    let novoCard = card.cloneNode(true);

    novoCard.querySelector("img").src = produto.imagem;
    novoCard.querySelector("p").innerHTML = produto.nome;

    main.appendChild(novoCard);
});

const busca = document.querySelector("#busca");

busca.addEventListener("keyup", () => {
    main.childNodes.forEach((box) => {
        const conteudo = box.innerHTML;
        if(conteudo) {
            if(conteudo.includes(busca.value)) {
                box.style.display = "block";
            }else {
                box.style.display = "none";
            }
        }
        // const conteudo = box.innerHTML;
        // if(box.innerHTML.includes(busca.value)) {
        //     box.style.display = "block";
        // }else {
        //     box.style.display = "none";
        // }
    });
});