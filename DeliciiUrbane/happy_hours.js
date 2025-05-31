const hhSpecials = [
  { title: "Margherita Mini & Limonadă", desc: "Pizza 28cm + limonadă", price: "49 lei" },
  { title: "Spaghetti Carbonara", desc: "Porție + pahar vin la alegere", price: "59 lei" },
  { title: "Gamberi al Burro", desc: "Porție + focaccia gratuită", price: "65 lei" },
  { title: "Salată Caprese", desc: "Mozzarella + roșii + pahar Prosecco", price: "55 lei" },
];

function initHappyHours() {
  const section   = document.getElementById("happy-hours");
  const container = document.getElementById("hh-carousel");
  if (!section || !container) return;

  container.innerHTML = "";
  section.style.display = "block";

  hhSpecials.forEach((s, i) => {
    const slide = document.createElement("div");
    slide.className = "slide" + (i === 0 ? " active" : "");
    slide.innerHTML = `
      <h3 style="margin:0 0 8px;">${s.title} — <strong>${s.price}</strong></h3>
      <p style="margin:0;">${s.desc}</p>
    `;
    container.appendChild(slide);
  });

  let idx    = 0;
  const slides = container.querySelectorAll(".slide");
  setInterval(() => {
    slides[idx].classList.remove("active");
    idx = (idx + 1) % slides.length;
    slides[idx].classList.add("active");
  }, 5000);
}
