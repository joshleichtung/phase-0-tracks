var header = document.getElementById("header");

function changeTextColor(event){
  event.target.style.color = "blue";
}

header.addEventListener("click", changeTextColor);