// function soma(a, b) {
//     let res = a + b;
//     return res;
// }

// console.log("Soma = " + soma(2, 10));


const subtrai = (a, b) => {
    console.log(a - b);
};

subtrai (5,7);

var carros = ["Celta", "Gol", "Kazin", "Uno Escada", "147", "Fusca"];

carros.forEach( ( valor ) => {
    if(valor === "Uno Escada"){
        console.log("Encontrei");
    }
} ) ;

//Ano de nascimento e sobrenome

var usuarios = [
    {
        "nome": "Fulano",
        "sobrenome" : "da Silva",
        "idade" : 2015,
        "matricula" : 1234,
        "telefone" : "(19) 57856848815"
    }, 
    {
        "nome": "Ciclano",
        "sobrenome" : "Silvassauro",
        "idade" : 1998,
        "matricula" : 7894,
        "telefone" : "(19) 589631547016"
    }, 
    {
        "nome": "Beltrano",
        "sobrenome" : "Moroni",
        "idade" : "2009",
        "matricula" : 9012,
        "telefone" : "(19) 6987431652012"
    }
];

usuarios.forEach( (usuario) => {
    if (usuario.matricula === 7894){
        console.log(usuario.nome + usuario.sobrenome);
        console.log(2025 - usuario.idade);
    }
});