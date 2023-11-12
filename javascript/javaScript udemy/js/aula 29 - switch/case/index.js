const data = new Date();
const diaSemana = data.getDay();
let diaSemanaTexto;

// if (diaSemana === 0) { // usando if else
//   diaSemanaTexto = "domingo";
// } else if (diaSemana === 1) {
//   diaSemanaTexto = "segunda";
// } else if (diaSemana === 2) {
//   diaSemanaTexto = "terça";
// } else if (diaSemana === 3) {
//   diaSemanaTexto = "quarta";
// } else if (diaSemana === 4) {
//   diaSemanaTexto = "quinta";
// } else if (diaSemana === 5) {
//   diaSemanaTexto = "sexta";
// } else if (diaSemana === 6) {
//   diaSemanaTexto = "sabado";
// }

switch (
  diaSemana //usando switch
) {
  case 0:
    diaSemanaTexto = "domingo";
    break; // sempre colocar break no final da case para ele na execultar o que tem dentro do proximo case
  case 1:
    diaSemanaTexto = "segunda";
    break;
  case 2:
    diaSemanaTexto = "terça";
    break;
  case 3:
    diaSemanaTexto = "quarta";
    break;
  case 4:
    diaSemanaTexto = "quinta";
    break;
  case 5:
    diaSemanaTexto = "sexta";
    break;
  case 6:
    diaSemanaTexto = "sabado";
    break;
}
function getdiasemanatexto(diaSemana) {
  switch (diaSemana) {
    case 0:
      diaSemanaTexto = "domingo";
      return diaSemanaTexto; // se ele estiver dentro de uma função nao sera necessario so colocar o return
    case 1:
      diaSemanaTexto = "segunda";
      return diaSemanaTexto;
    case 2:
      diaSemanaTexto = "terça";
      return diaSemanaTexto;
    case 3:
      diaSemanaTexto = "quarta";
      return diaSemanaTexto;
    case 4:
      diaSemanaTexto = "quinta";
      return diaSemanaTexto;
    case 5:
      diaSemanaTexto = "sexta";
      return diaSemanaTexto;
    case 6:
      diaSemanaTexto = "sabado";
      return diaSemanaTexto;
  }
}
const diasemanaetxto = getdiasemanatexto(diaSemana);
console.log(diaSemana, diaSemanaTexto);
