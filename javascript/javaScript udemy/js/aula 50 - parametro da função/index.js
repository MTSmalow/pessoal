//argumentos que sustenta todos od argumentos enviados
function funcao() {
  console.log("oi");
  console.log(arguments); //exibe os valores adicionados uando ela e chaamada que nao sao usados
  for (let argumento of arguments) {
    //soma dos valores dos arumentos inseridos
    total += argumento;
  }
}
funcao("valor");

function funcao2(
  a,
  b = 0 /*maneira atual de definir por padrao */,
  c,
  d,
  e,
  f /*parametros*/
) {
  b = b || 0; //define que se o "b" nao possuir um valor ele recebera por padro o 0 - maneira antiga
  console.log(a, b, c, d, e, f);
  console.log(b + f);
}
funcao2(a, b /* argumentos */);

function funcao3({ nome, sobrenome, idade }) {
  console.log(nome, sobrenome, idade);
}
// "..." operador de resto - pega todos os valores que nao foran definidos para uma parametro
function conta(operador, acumulador, ...numeros) {
  for (let numero of numeros) {
    if (operador === "+") acumulador += numero;
    if (operador === "-") acumulador -= numero;
    if (operador === "*") acumulador *= numero;
    if (operador === "/") acumulador /= numero;
  }
}
