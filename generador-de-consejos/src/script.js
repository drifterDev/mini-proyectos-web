// Autor: Mateo Álvarez Murillo
// Fecha de creación: 2023
//
// Este código se proporciona bajo la Licencia MIT.
// Para más información, consulta el archivo LICENSE en la raíz del repositorio.

"use strict";

const options = { method: "GET" };
const url = "https://api.adviceslip.com/advice";

function imagen() {
  const img = document.getElementById("separador");
  const newSrc = window.matchMedia("(max-width: 375px)").matches
    ? "../images/pattern-divider-mobile.svg"
    : "../images/pattern-divider-desktop.svg";
  img.src = newSrc;
}

async function advice() {
  try {
    const response = await fetch(url, options);
    const jason = await response.json();
    return jason.slip;
  } catch (err) {
    console.log(err);
    throw error;
  }
}

async function actualizarAdvice() {
  const number = document.getElementById("advice");
  const text = document.getElementById("advice_text");
  try {
    const info = await advice();
    number.textContent = await info.id;
    text.textContent = await info.advice;
    console.log(info);
  } catch (err) {
    console.log(err);
    text.textContent = "Error al obtener advice";
    number.textContent = "Error";
  }
}

window.addEventListener("load", () => {
  const dice = document.getElementById("dice");
  const imgDice = document.getElementById("imgDice");
  imagen();
  actualizarAdvice();
  dice.addEventListener("click", actualizarAdvice);
  imgDice.addEventListener("click", actualizarAdvice);
});
window.addEventListener("resize", imagen);
