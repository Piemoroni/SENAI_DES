const colors = ["#F0FFFF", "#008B8B", "#20B2AA", "#20665a","#B0E0E6", "#4d9f9f", "#00CED1","lightgoldenrodyellow",
    "#C71585", "rgba(250,250,210, 0.8)", "#90EE90", "#2E8B57", "#808000", "#8B4513", "#BA55D3", "#FF00FF", "#8B008B",
    "#EE82EE", "#FF69B4", "#DC143C", "#8B0000", "#FFF5EE", "#FFFFE0", "#FFF0F5", "#D8BFD8", "#B0E0E6", "#F5F5F5", "#C71585",
    "#CD6090", "#FF82AB", "#EE30A7", "#8B1C62", "#CD3278", "#FFBBFF", "#FFE1FF", "#8B0000", "#79CDCD", "#C1FFC1", "#A2CD5A",
    "#F0FFF0", "#2F4F4F", "#696969", "#D8BFD8", "#2E8B57", "#CD853F", "#c03969", "#F7F2C5","#59C6BE", "#2F9258", "#ADE3F9",
    "#B94E77", "#CA88A4", "#150C67", "#544F79", "#704875", "#f8b2e3ff", "#f0c6fa", "#fae1ff"];

const btn = document.getElementById ("btn");

const color = document.querySelector(".color");

btn.addEventListener("click", function(){
    const randomNumber = getRandomNumber();
    document.body.style.backgroundColor = colors[randomNumber];
    color.textContent = colors[randomNumber];
});

function getRandomNumber(){
    return Math.floor(Math.random() * colors.length);
}