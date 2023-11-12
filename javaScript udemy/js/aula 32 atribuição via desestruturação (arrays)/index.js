let a = "a";
let b = "b";
let c = "c";

[a, b, c] = [b, c, a];
console.log(a, b, c);

//               0    1   2  3    4  5    6   7   8   - indice
const numeros = [10, 20, 30, 40, 50, 60, 70, 80, 90]; //valor
const [primeiroNumero, segundoNumero, ...resto] = numeros;
//pode se usar ao inves de primeroNumero = um, segundoNumero = dois
console.log(primeiroNumero, segundoNumero);
console.log(resto); //exibe os que nao foram exibidos antes

const numeros2 = [
  // atribuição via desestruturação por meio de arrays
  [1, 2, 3], //0 - indice da lista
  //0 1  2    -  indice do elemento da lista

  [4, 5, 6], //1 - indice da lista
  //0 1  2    -  indice do elemento da lista

  [7, 8, 9], //2 - indice da lista
  //0 1 2    -  indice do elemento da lista
];
const [, [, , seis]] = numeros2;
console.log(seis);

// para fazer isso com objetos e deve usar as "{}" inves dos "[]"
