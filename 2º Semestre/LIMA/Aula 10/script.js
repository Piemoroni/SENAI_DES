const selectCategoria = document.querySelector("#categoria");
const inputValor = document.querySelector("#valor");
const btnFiltrar = document.querySelector("#filtrar");

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
        imagem: "https://acdn-us.mitiendanube.com/stores/001/335/424/products/imagem111-99c5aa021f90bfa52716899538924424-1024-1024.webp",
        nome: "Ponta - Anne",
        valor: 249.50,
        categoria: "1"
    },
    {
        imagem: "https://acdn-us.mitiendanube.com/stores/001/039/642/products/602d0813bfe02335c95a763064555554-a15b49eb657a7c099017509644539843-640-0.jpg",
        nome: "Ponta - Grisie",
        valor: 209.20,
        categoria: "1"
    },
    {
        imagem: "https://acdn-us.mitiendanube.com/stores/001/335/424/products/imagem3-8d8041bafbcc5e70b117080150345550-1024-1024.webp",
        nome: "Ponta - Natacha",
        valor: 329.00,
        categoria: "1"
    },
    {
        imagem: "https://cdn.awsli.com.br/800x800/1358/1358957/produto/266336067/773b8446a1-z0rgquol9x.jpg",
        nome: "Ponta - Claudia",
        valor: 249.90,
        categoria: "1"
    },
    {
        imagem: "https://acdn-us.mitiendanube.com/stores/001/335/424/products/imagem2-fc5ab92bc0596f8a4b17207511308246-1024-1024.webp",
        nome: "Ponta - Toshie Star",
        valor: 300.42,
        categoria: "1"
    },
    {
        imagem: "https://acdn-us.mitiendanube.com/stores/001/335/424/products/imagem211-b921936cf184b6cac616899580743368-1024-1024.webp",
        nome: "Ponta - Grand Pas",
        valor: 312.90,
        categoria: "1"
    },
    {
        imagem: "https://cdn.awsli.com.br/800x800/1358/1358957/produto/266340243/aurora-phnq6tuz5p.jpg",
        nome: "Ponta - Aurora",
        valor: 250.90,
        categoria: "1"
    },
    {
        imagem: "https://images.tcdn.com.br/img/img_prod/923331/sapatilha_de_ponta_aurora_fr_e_fx_salmao_122067_1_32c8023f716155571bd77695432c4971.jpg",
        nome: "Ponta - piroutte",
        valor: 388.90,
        categoria: "1"
    },
    {
        imagem: "https://acdn-us.mitiendanube.com/stores/001/335/424/products/185917-1200-auto-0d716b1ebe127ebebb17546877610003-1024-1024.webp",
        nome: "Meia Ponta - Fly",
        valor: 84.90,
        categoria: "2"
    },
    {
        imagem: "https://cdn.awsli.com.br/300x300/195/195488/produto/254225857/sd-106-rosa-sapatilha-de-meia-ponta-juliet-p3qu1hyrsp.png",
        nome: "Meia Ponta - Hanami",
        valor: 179.90,
        categoria: "2"
    },
    {
        imagem: "https://acdn-us.mitiendanube.com/stores/001/335/424/products/imagem7-1f3ae271b7dac5196a17207534183345-1024-1024.webp",
        nome: "Meia Ponta - F43",
        valor: 182.90,
        categoria: "2"
    },
    {
        imagem: "https://images.tcdn.com.br/img/img_prod/688258/ponteira_de_silicone_cirurgico_cristal_462_3_fa62e29c791ddc29a676c70689255bba_20250829132912.jpg",
        nome: "Ponteira Silicone - Fouetté",
        valor: 56.90,
        categoria: "3"
    },
    {
        imagem: "https://http2.mlstatic.com/D_NQ_NP_887124-MLB81777803479_012025-O-ponteira-de-malha-com-gel-recortavel.webp",
        nome: "Ponteira Malha - Nas Pontas",
        valor: 121.50,
        categoria: "3"
    },
    {
        imagem: "https://down-br.img.susercontent.com/file/sg-11134201-7rbl9-ln0qqgvooo0b5b",
        nome: "Ponteira - Protetor de Dedos",
        valor: 39.99,
        categoria: "3"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/540515/Collant-Tessalia---Maritimo---SD2375---Adulto.jpg?v=638941450152100000",
        nome: "Collant - Tessalia",
        valor: 311.90,
        categoria: "4"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/571881/Collant-Luciana---Viena---SD2370---Adulto.jpg?v=638938908569800000",
        nome: "Collant - Luciana",
        valor: 384.90,
        categoria: "4"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/565232/Collant-Claudia-Mota---Marrom---CM67---Adulto.jpg?v=638931975552570000",
        nome: "Collant - Claudia Mota",
        valor: 340.90,
        categoria: "4"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/553614/Collant-Tiler-Peck---Branco---TP171---Adulto.jpg?v=638914711965870000",
        nome: "Collant - Tiller Pack",
        valor: 402.90,
        categoria: "4"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/541492/Collant-Angelica---Cacau---SD2455---Adulto.jpg?v=638902631876970000",
        nome: "Collant - Angelica",
        valor: 406.90,
        categoria: "4"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/522462/Collant-Noemi---Verde-Aruba---SD2330---Adulto.jpg?v=638739192044130000",
        nome: "Collant - Noemi",
        valor: 318.90,
        categoria: "4"
    },
    {
        imagem: "https://acdn-us.mitiendanube.com/stores/001/039/642/products/f3c47a8517e6fd987109556230536274-7659721b7b622f9d4717526127158097-1024-1024.webp",
        nome: "Collant - Mulan",
        valor: 233.49,
        categoria: "4"
    },
    {
        imagem: "https://acdn-us.mitiendanube.com/stores/001/039/642/products/novas-fotos-site1-4d7bf131d9e95689f616559211921063-1024-1024.webp",
        nome: "Collant - Branca de Neve",
        valor: 233.49,
        categoria: "4"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/543606/Collant-Luciana-Sagioro---Rosa-Romantico---LS45---Adulto.jpg?v=638912872964570000",
        nome: "Collant - Larissa",
        valor: 359.00,
        categoria: "4"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/543917/Collant-Luciana-Sagioro---Azul-Lavando---LS50---Adulto.jpg?v=638912882168400000",
        nome: "Collant - Lavando",
        valor: 261.90,
        categoria: "4"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/408824/Collant-Heloise---Branco---SD1209.jpg?v=638403154066770000",
        nome: "Collant - Heloise",
        valor: 239.90,
        categoria: "4"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/528165/Casaquinho-Elvira---Branco---SD2354---Adulto.jpg?v=638750423104930000",
        nome: "Collant - Elvira",
        valor: 197.90,
        categoria: "4"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/546276/Polaina-Warm---Cristal---SD2261----Adulto.jpg?v=638912962818030000",
        nome: "Polaina - Warm ",
        valor: 87.9,
        categoria: "5"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/408113/5620-Perneira-Adulto-La.jpg?v=638400793309930000",
        nome: "Polaina - Lã",
        valor: 118.90,
        categoria: "5"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/450551/Polaina-La---Infantil---5623.jpg?v=638526122177600000",
        nome: "Polaina - Cold",
        valor: 72.90,
        categoria: "5"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/542181/Bota-de-aquecimento---Marrom---BT40.jpg?v=638914047415800000",
        nome: "Botinha - Cacau",
        valor: 252.90,
        categoria: "6"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/496075/Bota-de-aquecimento-Mundo-Bailarinistico---Preto---MB65-SB2447.jpg?v=638719688382530000",
        nome: "Botinha - Preta",
        valor: 252.90,
        categoria: "6"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/496090/Bota-de-aquecimento-Mundo-Bailarinistico---Melissa---MB65-SB2449.jpg?v=638719688640800000",
        nome: "Botinha - Rosa",
        valor: 252.90,
        categoria: "6"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/363855/KIT-Acessorios-para-Sapatilha-de-Ponta-com-Elastico-Rendado---AC-07.jpg?v=638022312034970000",
        nome: "Acessórios - Kit Amarração",
        valor: 19.99,
        categoria: "7"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/321901/Protetor-para-Sapatilha-de-Ponta-com-elastico---AC-12.jpg?v=637794950588400000",
        nome: "Acessórios - Pretetor de Pontas",
        valor: 60.90,
        categoria: "7"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/438348/Fita-Elastica---AC18.jpg?v=638422100781670000",
        nome: "Acessórios - Fita Elástica",
        valor: 22.90,
        categoria: "7"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/550303/Bolsa-Duffel-Active---Rosa---SD2453---Adulto.jpg?v=638913155180600000",
        nome: "Bolsa - Rosa",
        valor: 474.90,
        categoria: "8"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/542208/Necessaire-Duffel---Cacau---BG757.jpg?v=638914046420130000",
        nome: "Bolsa - Necessaire Marrom",
        valor: 256.69,
        categoria: "8"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/496168/Mochila-Infantil---Rosa---MB72.jpg?v=638719689983900000",
        nome: "Bolsa - Infantil Rosa",
        valor: 212.90,
        categoria: "8"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/497738/Bolsa-Tiracolo--Preto-2447---MB73.jpg?v=638725474200100000",
        nome: "Bolsa - Sapatilha Preta ",
        valor: 393.90,
        categoria: "8"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/496163/Necessaire----Azul-2452---MB70.jpg?v=638719689899770000",
        nome: "Bolsa - Necessaire Azul",
        valor: 208.90,
        categoria: "8"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/550305/Bolsa-Duffel-Active---Preto---SD2453---Adulto.jpg?v=638913155439700000",
        nome: "Bolsa - Preta",
        valor: 474.99,
        categoria: "8"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/413603/Tutu---Adulto-SD2121.jpg?v=638406017729000000",
        nome: "Tutut - Prato ",
        valor: 947.90,
        categoria: "9"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/450604/Tutu-Romantico---SD1404.jpg?v=638530249888900000",
        nome: "Tutu - Romântico",
        valor: 679.99,
        categoria: "9"
    },
    {
        imagem: "https://lojasodanca.vtexassets.com/arquivos/ids/450581/Tutu-Romantico-Longo---SD1449.jpg?v=638527618937300000",
        nome: "Tutu - Roamântico Longo",
        valor: 883.90,
        categoria: "9"
    }
];

const card = document.querySelector(".box");
const main = document.querySelector("main");

var valormaximo = 0;

produtos.forEach((produto) => {
    let novoCard = card.cloneNode(true);

    novoCard.querySelector("img").src = produto.imagem;
    novoCard.querySelector(".nome").innerHTML = produto.nome;
    novoCard.querySelector(".valor").innerHTML = "R$ " + produto.valor;
    novoCard.querySelector(".categoria").innerHTML = produto.categoria;

    main.appendChild(novoCard);

    if (produto.valor > valormaximo){
        valormaximo = Math.round(produto.valor);
    }
});
inputValor.max = valormaximo;

const busca = document.querySelector("#busca");

busca.addEventListener("keyup", () => {
    main.childNodes.forEach((box) => {
        const conteudo = box.innerHTML;
        if(conteudo) {
            const nome = box.querySelector(".nome").innerHTML;
            if(nome.toLowerCase().includes(busca.value.toLowerCase())) {
                box.style.display = "block";
            }else {
                box.style.display = "none";
            }
        }
    });
});

btnFiltrar.addEventListener("click", (event) => {
    event.preventDefault();
    
    const catSel = selectCategoria.value;
    const valSel = inputValor.value;

    main.childNodes.forEach((box) => {
        if (box.innerHTML){
            const catBox = box.querySelector(".categoria").innerHTML;
            const valBox =Number(box.querySelector(".valor").innerHTML.split(" ")[1]);

            if (
                (catBox === catSel || catSel == 0)
                &&
                (valSel == 0 || valBox <= valSel)
            ) {
                box.style.display = "block";
            } else {
                box.style.display = "none";
            }
        }
        
    });
});

inputValor.addEventListener("change", () => {
    document.querySelector("#spVal").innerHTML = "R$ " + inputValor.value;
});