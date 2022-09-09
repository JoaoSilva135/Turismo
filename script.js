const colors = ["green", "red", "rgba(133,122,200)", "#f15025"];
const btn = document.getElementById("btn");
const color = document.querySelector(".color");

btn.addEventListener("click", function() {
    const randmNumber = getRandomNunber();

    document.body.style.backgroundColor = colors[randmNumber];
    color.textContent = colors[randmNumber];
});

function getRandomNunber(){
    return Math.floor(Math.random() * colors.length);
}