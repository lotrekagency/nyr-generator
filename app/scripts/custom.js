if(window.location.pathname == "/"){
  function move(e){
    var moveX, moveY;
    moveX = e.pageX * -1 / 100 + 'px';
    moveY = e.pageY * -1 / 100 + 'px';
    var bgPeople = document.getElementById("bg_people");
    bgPeople.style.backgroundPosition = "calc(50% + " + moveX + ") calc(50% + " + moveY + ")";
  }
}


function callAjax() {
  var xhttp = new XMLHttpRequest();
  xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
      var obj = JSON.parse(xhttp.responseText);
      window.location.href = "/" + obj.slug;
    }
  };
  xhttp.open(
    "GET",
    "/api/random-generate/" + "?c=" + Date.now(),
    true
  );
  xhttp.send();
}

var spanClose = document.getElementsByClassName("sharer__close")[0];
var modalSharer = document.getElementById("popup_sharer");

spanClose.onclick = function() {
  modalSharer.style.display = "none";
}

document.addEventListener("DOMContentLoaded", function() {
  window.addEventListener('resize', move);
  window.addEventListener('mousemove', move);
  if(window.location.pathname !== "/"){
    setTimeout(function(){
      modalSharer.style.display = "block";
      
    },2000);
  }
});



var modal = document.getElementById("popup_credits");
var btn = document.getElementById("credits");
var span = document.getElementsByClassName("modal__close")[0];

btn.onclick = function() {
  modal.style.display = "block";
}

span.onclick = function() {
  modal.style.display = "none";
}

window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
  if (event.target == modalSharer) {
    modalSharer.style.display = "none";
  }
}
