let count = 0;

const valor = document.querySelector("#valor");
const btns = document.querySelectorAll(".btn");

const colors = ["#FFF0F5", "#f6dbe4ff", "#f7cedcff", "#fbc8d9ff", "#ffbbd1ff", "#fda9c3ff"];

btns. forEach(function (btn){
    btn.addEventListener("click", function(e){
        const styles = e.currentTarget.classList;

        if(styles.contains("menos")){
            count--;
        }
        else if(styles.contains("mais")){
            count ++;
        }
        else{
            count = 0;
        }

        valor.textContent = count;
        mudaCor();

    })
})

function mudaCor() {
  if (count < 10) {
    document.body.style.backgroundColor = colors[0];
  } else if (count < 20) {
    document.body.style.backgroundColor = colors[1];
  } else if (count < 30) {
    document.body.style.backgroundColor = colors[2];
  } else if (count < 40) {
    document.body.style.backgroundColor = colors[3];
  } else if (count < 50) {
    document.body.style.backgroundColor = colors[4];
  } else {
    document.body.style.backgroundColor = colors[5];
  }
}