var modalLogin = document.getElementById("modalLogin");
var btnLogin = document.getElementById("login");
var spanLogin = document.getElementsByClassName("closeLogin")[0];

btnLogin.onclick = function() 
{
  modalLogin.style.display = "block";
}

spanLogin.onclick = function() 
{
  modalLogin.style.display = "none";
}

window.onclick = function(event) 
{
  if (event.target == modalLogin) 
  {
    modalLogin.style.display = "none";
  }
}

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