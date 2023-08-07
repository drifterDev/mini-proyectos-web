"use strict";

const radios = document.getElementsByName("destination");
const img = document.getElementById("imagen-destination");
const title = document.getElementById("title");
const description = document.getElementById("description");
const distance = document.getElementById("distance");
const travel = document.getElementById("travel");

radios.forEach((radio) => {
  radio.addEventListener("change", () => {
    cambiarInfo(radio.value);
  });
});

async function cambiarInfo(value) {
  try {
    let data = await getInfo(value);
    img.src = data.images.png;
    title.textContent = value;
    description.textContent = data.description;
    distance.textContent = data.distance;
    travel.textContent = data.travel;
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
    let obj = await data.destinations.find(
      (objeto) =>
        objeto.name ===
        value.charAt(0).toLocaleUpperCase() + value.slice(1).toLocaleLowerCase()
    );
    return obj;
  } catch (error) {
    console.error("Error al cargar el archivo JSON:", error);
    throw error;
  }
}
