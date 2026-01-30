const colors = [];

const btn = document.getElementById("btn");

const color = document.querySelector(".color");

for (let i = 0; i < 40; i++) {
  let hexColor = '#'; 
  const characters = '0123456789ABCDEF';
  for (let j = 0; j < 6; j++) {
    hexColor += characters[Math.floor(Math.random() * characters.length)];
  }
  colors.push(hexColor); 
}

btn.addEventListener("click", function(){
  const randomNumber = getRandomNumber();
  document.body.style.backgroundColor = colors[randomNumber];
  color.textContent = colors[randomNumber];
});

function getRandomNumber(){
  return Math.floor(Math.random() * colors.length);
}
