// Mostrar apenas números pares
console.log("------------------");

console.log("Exercício 1:");

var numeros = [5, 12, 9, 4, 14, 30, 22, 11, 1, 5];

numeros.forEach((numero) => {
  if (numero % 2 == 0) {
    console.log("Numeros " + numero);
  }
});

console.log("------------------");

