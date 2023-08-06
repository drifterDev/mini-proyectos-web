/** @type {import('tailwindcss').Config} */
module.exports = {
  content: ["./src/*.{html,js}"],
  theme: {
    extend: {
      colors: {
        darkp: "#0B0D17",
        bluep: "#D0D6F9",
        whitep: "#FFFFFF",
      },
      fontFamily: {
        barlow: ["Barlow Condensed"],
        belle: ["Bellefair"],
      },
      boxShadow: {
        sombra: "0 0 0px 30px RGBA(255,255,255,0.2)",
        sombra2: "0 0 0px 60px RGBA(255,255,255,0.2)",
      },
    },
  },
  plugins: [],
};
