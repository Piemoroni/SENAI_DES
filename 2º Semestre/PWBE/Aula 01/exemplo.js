const numero = 100;
var nome = "Fulano";
var idade = 50;
var altura = 1.80;
var cnh = true;

console.log("Numero = " + numero);
console.log("Nome - " + nome);

nome = "Beltrano";

console.log("Nome - " + nome + " (" + typeof(nome) + ")");
console.log("Idade - " + idade + " (" + typeof(idade) + ")"); 
console.log("Altura - " + altura + " (" + typeof(altura) + ")");
console.log("CNH - " + cnh + " (" + typeof(cnh) + ")");

var a = 10;
var b = 20;

console.log(a * b);

a = "10";
b = 10;

if ( a === b){
    console.log("São iguais!");
} else {
    console.log("São Diferentes!");
}

switch (a) {
    case "1":
        break;
    case "2":
        break;
    default:
        break;
}

for (let i = 0; i < 10; i++){
    console.log("I - " + 1);
}


while (a < 10){
    //....
}

