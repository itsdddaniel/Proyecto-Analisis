window.onload = function()
{
    var cartDiv = document.getElementById("modalContentCart");
    var json = JSON.parse(localStorage.getItem('cart'));
    var len = json.length;
    if(len > 0)
    {
        for (result of json)
        {
            var htmlString = `<label id='labelProductName'>${result.productName} - L${result.productPrice}</label>`
            var label = document.createElement("label");
            label.id = result.productID;
            if(label.innerHTML.length == 0)
            {
                var removeButton = `<button id='${result.productID}' onclick='deleteItem(this);'>Remover</button>`
                var breakLine = document.createElement("br");
                label.innerHTML = htmlString;
                cartDiv.appendChild(label);
                cartDiv.innerHTML += removeButton;
                cartDiv.appendChild(breakLine);
            }
            else
            {
                label.innerHTML = "";
                var removeButton = document.createElement("button");
                var breakLine = document.createElement("br");
                label.innerHTML = htmlString;
                removeButton.innerHTML = "Remover";
                cartDiv.appendChild(label);
                cartDiv.appendChild(removeButton);
                cartDiv.appendChild(breakLine);
                removeButton.onclick = function()
                {
                    let productID = result.productID;
                    const items = JSON.parse(localStorage.getItem('cart'));
                    const filtered = items.filter(cart => cart.productID !== productID);
                    localStorage.setItem('cart', JSON.stringify(filtered));
                    label.innerHTML = "";
                    cartDiv.removeChild(removeButton);
                }
            }
        }
        updatePrice();
    }
    else if (len == 0)
    {
        var label = document.createElement("label");
        label.id = "emptyCart";
        label.innerHTML = "Carrito Vacio";
        cartDiv.appendChild(label);
    }
}

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
function deleteItem(e)
{
    let name = e.previousSibling;
    let id = Number(name.id);
    const items = JSON.parse(localStorage.getItem('cart'));
    const filtered = items.filter(cart => cart.productID !== id);
    localStorage.setItem('cart', JSON.stringify(filtered));
    location.reload();
} 
function updatePrice()
{
    var json = JSON.parse(localStorage.getItem('cart'));
    var totalLabel = document.createElement("totalPay");
    var cartDiv = document.getElementById("modalContentCart");
    let total = 0;
    for(result of json)
    {
        total = total + Number(result.productPrice);
    }
    totalLabel.innerHTML += `Total a pagar: L${total}`;
    cartDiv.appendChild(totalLabel);

    var payButton = document.createElement("button");
    payButton.innerHTML = "Pagar";
    cartDiv.appendChild(payButton);
}