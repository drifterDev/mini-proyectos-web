// Autor: Mateo Álvarez Murillo
// Fecha de creación: 2023
//
// Este código se proporciona bajo la Licencia MIT.
// Para más información, consulta el archivo LICENSE en la raíz del repositorio.

"use strict";

window.addEventListener("load", () => {
  document.getElementById("form").addEventListener("submit", function (event) {
    event.preventDefault(); // Evita que el formulario se envíe de forma predeterminada
    window.location.href = "../pantalla-01/index.html"; // Cambia la localización a la nueva página
  });
});
