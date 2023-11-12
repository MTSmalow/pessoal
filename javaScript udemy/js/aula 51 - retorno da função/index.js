//return
//retorna um valor
// termna a função
function soma(a, b) {
  return a + b; //retorna o valor
  console.log(soma(1, 5)); //so exibe a função
}

function falaFrase(comeco) {
  function falaResto(resto) {
    return comeco + " " + resto;
  }
  return falaResto;
}
const olamundo = falaFrase("ola");
console.log(olamundo("mundo"));

function criaMultiplicador(multiplicador) {
  return function (n) {
    return n * multiplicador;
  };
}
const duplica = criaMultiplicador(2);
const triplica = criaMultiplicador(3);
const quadriplica = criaMultiplicador(4);
