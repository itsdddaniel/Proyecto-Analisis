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

var slideIndex = 0;
showSlides();

function showSlides() 
{
    var i;
    var slides = document.getElementsByClassName("mySlides");
    var dots = document.getElementsByClassName("dot");
    
    for (i = 0; i < slides.length; i++) 
    {
        slides[i].style.display = "none";  
    }
    slideIndex++;
    
    if (slideIndex > slides.length) 
    {
        slideIndex = 1
    }    
    
    for (i = 0; i < dots.length; i++) 
    {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); 
}
