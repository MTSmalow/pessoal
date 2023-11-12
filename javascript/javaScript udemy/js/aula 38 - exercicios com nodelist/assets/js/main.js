const paragrafos = document.querySelector(".paragrafos");
const Ps = paragrafos.querySelectorAll("p");

const estilosBody = getComputedStyle(document.body); // pega os estilos do body e o define em uma variavel
const backgroudColorBody = estilosBody.backgroundColor; // pega o backgroud-color do body e o define em uma variavel

for (let p of Ps) {
  p.style.backgroundColor = backgroudColorBody; // altera cor de fundo do parametro p para a cor de funfo do body
  p.style.color = "white"; // muda a cor do parametro p para "white"
}
