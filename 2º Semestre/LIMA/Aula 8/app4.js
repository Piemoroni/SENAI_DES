const imagens = [
  "url('1.jpg')",
  "url('2.jpg')",
  "url('4.jpg')",
  "url('5.jpg')",
  "url('6.jpg')"
];
const btn = document.getElementById ("btn");

const img = document.querySelector(".img");

btn.addEventListener("click", function(){
    const randomNumber = getRandomNumber();
    document.body.style.background = imagens[randomNumber];
    img.textContent = imagens[randomNumber];
});

function getRandomNumber(){
    return Math.floor(Math.random() * imagens.length);
}