var livros = [
    {
        "titulo": "Dom Casmurro",
        "autor": "Machado de Assis",
        "numero de paginas": "400"
    },
    {
        "titulo": "Melhor do que nos filmes",
        "autor": "Lynn Painter",
        "numero de paginas": "360"
    }
];

//Ecercício 1:

livros.forEach ((livro, i) => {
    if (livro.titulo === "Dom Casmurro"){
        console.log(livro);
    }
});

console.log("----------------");

//Exercício 2:

livros.forEach((livro, i) => {
  if (i === 1) {
    livros.splice(i, 1);
  }
});

console.log(livros);

console.log("----------------");

//Exercício 3:

livros.push({
    "titulo": "Um de nós esta mentindo",
    "autor": "Karen M. McManus",
    "numero de paginas": "290"
});


console.log(livros);

console.log("----------------");

//exercíco 4:


livros.forEach((livro, i) => {
  if (livro.titulo === "Dom Casmurro") {
    livro.autor = "Pietra Moroni";
  }
});
console.log(livros);
