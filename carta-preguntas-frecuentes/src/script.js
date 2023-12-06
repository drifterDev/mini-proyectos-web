// Autor: Mateo Álvarez Murillo
// Fecha de creación: 2023
//
// Este código se proporciona bajo la Licencia MIT.
// Para más información, consulta el archivo LICENSE en la raíz del repositorio.

"use strict";

function imagen() {
  const img = document.getElementById("imagen-girl");
  const newSrc = window.matchMedia("(max-width: 375px)").matches
    ? "../images/illustration-woman-online-mobile.svg"
    : "../images/illustration-woman-online-desktop.svg";
  img.src = newSrc;
}

function cambiarClase(id) {
  const question = document.getElementById(id);
  question.classList.toggle("active");
  question.classList.toggle("inactive");
}

window.addEventListener("load", () => {
  imagen();
  const questions = document.querySelectorAll(".question");
  questions.forEach((question) => {
    question.addEventListener("click", () => {
      cambiarClase(question.id);
    });
  });
});
window.addEventListener("resize", imagen);
