const nome = "luiz otavio";
for (let valor of nome) {
  // le cada indice da variavel e retorna o valor
  console.log(valor);
}

nome.forEach(function (valor, indice, array) {
  console.log(valor, indice, array);
});
// for classico - geralmente com interaveis (arrays ou strings)
// for in - retorna o indice ou a chave (arrays,strings ou objetos)
// for of - retorna o valor em si (interaveis,arrays ou strings)
