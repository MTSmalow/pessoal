const form = document.querySelector(".form");
form.addEventListener("submit", function (e) {
  e.preventDefault();
  const inputpeso = e.target.querySelector("#peso");
  const inputpesoaltura = e.target.querySelector("#altura");

  const peso = Number(inputpeso.value);
  const altura = Number(inputpesoaltura.value);
  const IMC = peso / altura ** 2;

  if (IMC < 18.5) {
    setResultado(`voce esta abaixo do peso`);
  } else if (IMC >= 18.5 && IMC <= 24.9) {
    setResultado("o seu peso esta normal");
  } else if (IMC >= 25 && IMC <= 29.9) {
    setResultado("voce esta acima do peso");
  } else if (IMC >= 30 && IMC <= 34.9) {
    setResultado("voce tem obesidade garu 1");
  } else if (IMC >= 35 && IMC <= 39.9) {
    setResultado("voce tem obesidade garu 2");
  } else if (IMC > 40) {
    setResultado("voce tem obesidade garu 3");
  }
});

function setResultado(msg) {
  const resultado = document.querySelector("#resultado");
  resultado.innerHTML = msg;
}
