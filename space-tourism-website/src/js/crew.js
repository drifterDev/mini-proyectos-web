"use strict";

const role = document.getElementById("role-crew");
const title = document.getElementById("name-crew");
const description = document.getElementById("description-crew");
const img = document.getElementById("imagen-crew");
const radios = document.getElementsByName("crew");
const logo = document.getElementById("logo");

logo.addEventListener("click", () => {
  window.location.href = "home.html";
});

radios.forEach((radio) => {
  radio.addEventListener("change", () => {
    cambiarInfo(radio.value);
  });
});

async function cambiarInfo(value) {
  try {
    let data = await getInfo(value);
    role.textContent = data.role;
    title.textContent = value;
    description.textContent = data.bio;
    img.src = data.images.png;
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
    let obj = await data.crew.find((objeto) => objeto.name === value);
    return obj;
  } catch (error) {
    console.error("Error al cargar el archivo JSON:", error);
    throw error;
  }
}
