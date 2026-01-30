//              0   1   2   3   4
var numeros = [10, 20, 30, 40, 50];

console.log("--------");

numeros.forEach( (numero, indicie) => {
    console.log(numero);
}) ;

console.log("--------");

numeros.forEach ( (numero, indicie) => {
    if (numero === 30){
        console.log(indicie);
        numeros[indicie] = 80;
    }
});

console.log(numeros);

console.log("--------");



// function imprime(numero, indice){
//   console.log(indice + " - " + numero);
// }


var partidas = [
    {
        "id":1,
        "data": "15/08/2025 18:00",
        "duracao": 2,
        "pontos" : 0,
        "times" : ["Time A", "Time B"]
    },
    {
        "id":2,
        "data": "16/08/2025 09:00",
        "duracao": 3,
        "pontos" : 0,
        "times" : ["Time C", "Time D"]
    }
];

partidas.forEach( (partida, i) => {
    console.log(partida.times);
});

partidas.forEach( (partida, i) => {
    if(partida.id === 2){
        partida.data = "17/08/2025 10:00";
        console.log(partida)
    }
});