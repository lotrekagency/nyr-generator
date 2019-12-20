function move(e){
    var moveX, moveY;
    moveX = e.pageX * -1 / 100 + 'px';
    moveY = e.pageY * -1 / 100 + 'px';
    var bgPeople = document.getElementById("bg_people");
    bgPeople.style.backgroundPosition = "calc(50% + " + moveX + ") calc(50% + " + moveY + ")";
}

function callAjax() {
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var obj = JSON.parse(xhttp.responseText);
            window.location.href = "/" + obj.slug;
        }
    };
    xhttp.open("GET", "/api/random-generate/", true);
    xhttp.send();
}

document.addEventListener("DOMContentLoaded", function() {
    window.addEventListener('resize', move);
    window.addEventListener('mousemove', move);
});

// Get the modal
var modal = document.getElementById("myModal");

// Get the button that opens the modal
var btn = document.getElementById("myBtn");

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on the button, open the modal
btn.onclick = function() {
  modal.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span.onclick = function() {
  modal.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal) {
    modal.style.display = "none";
  }
}
