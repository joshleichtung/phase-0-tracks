var header = document.getElementById("header");

function changeTextColor(event){
  event.target.style.color = "blue";
  var text = document.createTextNode("You have unlocked a secret message");
  event.target.parentNode.appendChild(text);
}

header.addEventListener("click", changeTextColor);