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