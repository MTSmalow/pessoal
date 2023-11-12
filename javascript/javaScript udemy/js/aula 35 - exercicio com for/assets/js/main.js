const elementos = [
  { tag: "p", texto: "frase 1" },
  { tag: "div", texto: "frase 2" },
  { tag: "footer", texto: "frase 3" },
  { tag: "section", texto: "frase 4" },
];

const conteiner = document.querySelector(".container");
const div = document.createElement("div");

for (let i = 0; i < elementos.length; i++) {
  let { tag, texto } = elementos[i];
  console.log(tag);
  let tagCriada = document.createElement(tag);
  tagCriada.innerHTML = texto;
  div.appendChild(tagCriada);
}

conteiner.appendChild(div);
