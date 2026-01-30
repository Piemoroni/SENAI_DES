//EX 1.
console.log("--------");

var nome = "Pietra";
console.log(" Olá, "+ nome);

console.log ("--------");

//EX 2.
var a = 30;
var b = 14;

console.log(a + b);
console.log(a - b);
console.log(a * b);
console.log(a / b);

console.log("--------");

//EX 3.
var altura = 15;
var largura = 5;

console.log("A Área do retângulo é: " + (altura * largura));

console.log("--------");

//EX 4.
var nascimento = 2009;

if (2025 - nascimento >= 18){
   console.log("São iguais!");
}else {
    console.log("Você é menor de idade");
}

console.log("--------");

//EX 5.
var numero = 14;

if (numero % 2 == 0){
    console.log("O número é par");
} else {
    console.log("O número é ímpar");
}

console.log("--------");

//EX 6.
var n1 = 7.0;
var n2 = 8.5;
var n3 = 6.7;

if (((n1 + n2 + n3) / 3) >= 9){
    console.log("A");
} else if (((n1 + n2 + n3) / 3) >= 7){
    console.log("B");
} else if (((n1 + n2 + n3) / 3) >= 5){
    console.log("C");
}else {
    console.log("Reprovado");
}

console.log("--------");


//EX 7.
for (let i = 30; i >= 0; i --){
    console.log(i);
}

console.log("--------");

//EX 8.
for (let i = 0; i <= 500; i += 3){
    console.log(i);
}

console.log("--------");

// EX 9. 

for (let i = 0; i <= 300; i ++){
    if (i % 2 == 0){
        console.log(i);
    }
}


console.log("--------");

//EX 10.
var fatorial = 1;

for (let i = 5; i >= 1; i --){
    fatorial = i * fatorial;
}
console.log(fatorial);

console.log("--------");