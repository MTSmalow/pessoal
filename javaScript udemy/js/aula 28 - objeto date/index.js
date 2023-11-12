//const data = new Date(0); 01/01/1970 timestamp unix ou epoca unix
// messes em javascrip começam no mes 0 ao 11
const tresHoras = 60 * 60 * 3 * 1000;
const umDia = 60 * 60 * 24 * 1000;
const data = new Date();
console.log("dia", data.getDate()); // mostra apenas o dia
console.log("mes", data.getMonth() /* + 1  coloque para começar do mes 1*/); // mostar apenas o mes, começa do zero
console.log("ano", data.getFullYear()); //mostra apenas  o ano
console.log("hora", data.getHours()); //mostra apenas as horas
console.log("minuto", data.getMinutes()); //mostra apenas os minutos
console.log("segundo", data.getSeconds()); //mostra apenas os segundos
console.log("milesegundos", data.getMilliseconds()); //mostra apenas os milesegundos
console.log("dia da semana", data.getDay()); //mostra apenas o dia da semana    -   0 - domingo , 6 - sabado

console.log(data.toString());
console.log(Date.now); // data atual desde do ponto 0 em milesimos de segundos

function zeroEsquerda(num) {
  //formata para colocar um zero a esquerda
  return num >= 10 ? num : `0${num}`;
}
function FormataData(data) {
  //faz a formatação das horas no codigo
  const dia = zeroEsquerda(data.getDate());
  const mes = zeroEsquerda(data.getMonth() + 1);
  const ano = zeroEsquerda(data.getFullYear());
  const hora = zeroEsquerda(data.getHours());
  const minuto = zeroEsquerda(data.getMinutes());
  const segundo = zeroEsquerda(data.getSeconds());

  return `${dia}/${mes}/${ano} ${hora}:${minuto}:${segundo}`;
}
const data2 = new Date();
const dataBrasil = FormataData(data);
console.log(dataBrasil);
