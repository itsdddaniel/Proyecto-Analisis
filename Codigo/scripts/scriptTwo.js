var modal = document.getElementById("modalCart");
var btn = document.getElementById("cart");
var span = document.getElementsByClassName("closeCart")[0];

btn.onclick = function() 
{
  modal.style.display = "block";
}

span.onclick = function() 
{
  modal.style.display = "none";
}

window.onclick = function(event)
 {
  if (event.target == modal) 
  {
    modal.style.display = "none";
  }
}
