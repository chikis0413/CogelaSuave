// Este script gestionará la carga de contenido dinámico en el área principal

function cargarContenido(pagina) {
    var xhr = new XMLHttpRequest();
    xhr.onreadystatechange = function () {
        if (xhr.readyState == 4 && xhr.status == 200) {
            document.getElementById("contenido").innerHTML = xhr.responseText;
        }
    };
    xhr.open("GET", pagina, true);
    xhr.send();
}

document.addEventListener("DOMContentLoaded", function () {
    cargarContenido("inicio.html"); // Carga la página de inicio por defecto
});

// Maneja la navegación y carga de páginas
document.addEventListener("click", function (event) {
    if (event.target.tagName === "A") {
        event.preventDefault();
        var pagina = event.target.getAttribute("href");
        cargarContenido(pagina);
    }
});
