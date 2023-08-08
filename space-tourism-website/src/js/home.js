"use strict";

const logo = document.getElementById("logo");

logo.addEventListener("click", () => {
  window.location.href = "home.html";
});

const explore = document.getElementById("explore");
explore.addEventListener("click", () => {
  window.location.href = "destination.html";
});
