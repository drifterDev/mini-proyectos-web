"use strict";

const title = document.getElementById("title-tecno");
const description = document.getElementById("description-tecno");
const img = document.getElementById("imagen-tecno");
const radios = document.getElementsByName("tecno");
const logo = document.getElementById("logo");

logo.addEventListener("click", () => {
  window.location.href = "home.html";
});

window.addEventListener("load", () => {
  img.src =
    window.innerWidth > 800
      ? "./assets/technology/image-launch-vehicle-portrait.jpg"
      : "./assets/technology/image-launch-vehicle-landscape.jpg";
});

radios.forEach((radio) => {
  radio.addEventListener("change", () => {
    cambiarInfo(radio.value);
  });
});

async function cambiarInfo(value) {
  try {
    let data = await getInfo(value);
    title.textContent = value;
    description.textContent = data.description;
    img.src =
      window.innerWidth > 800 ? data.images.portrait : data.images.landscape;
  } catch (err) {
    console.error("Error: " + err);
  }
}

async function getInfo(value) {
  try {
    const response = await fetch("js/data.json");
    if (!response.ok) {
      throw new Error(
        "Error en la petición. Código de estado: " + response.status
      );
    }
    const data = await response.json();
    let obj = await data.technology.find((objeto) => objeto.name === value);
    return obj;
  } catch (error) {
    console.error("Error al cargar el archivo JSON:", error);
    throw error;
  }
}
