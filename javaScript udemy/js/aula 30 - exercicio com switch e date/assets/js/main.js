const data = new Date();
const diaSemana = data.getDay();
const ano = data.getFullYear();
const mes = data.getMonth();
const minutos = data.getMinutes();
const horas = data.getHours();
let mesTexto;
const dia = data.getDate();
let diaSemanaTexto;
switch (diaSemana) {
  case 0:
    diaSemanaTexto = "domingo";
    break; // sempre colocar break no final da case para ele na execultar o que tem dentro do proximo case
  case 1:
    diaSemanaTexto = "segunda-feira";
    break;
  case 2:
    diaSemanaTexto = "terça-feira";
    break;
  case 3:
    diaSemanaTexto = "quarta-feira";
    break;
  case 4:
    diaSemanaTexto = "quinta-feira";
    break;
  case 5:
    diaSemanaTexto = "sexta-feira";
    break;
  case 6:
    diaSemanaTexto = "sabado";
    break;
}
switch (mes) {
  case 0:
    mesTexto = "janeiro";
    break;
  case 1:
    mesTexto = "fevereiro";
    break;
  case 2:
    mesTexto = "marco";
    break;
  case 3:
    mesTexto = "abril";
    break;
  case 4:
    mesTexto = "maio";
    break;
  case 5:
    mesTexto = "junho";
    break;
  case 6:
    mesTexto = "julho";
    break;
  case 7:
    mesTexto = "agosto";
    break;
  case 8:
    mesTexto = "setembro";
    break;
  case 9:
    mesTexto = "outubro";
    break;
  case 10:
    mesTexto = "novenbro";
    break;
  case 11:
    mesTexto = "dezenbro";
    break;
}
setResultado(
  `${diaSemanaTexto},${dia} de ${mesTexto} de ${ano} ${horas}:${minutos}`
);

function setResultado(msg) {
  const resultado = document.querySelector("#resultado");
  resultado.innerHTML = msg;
}
