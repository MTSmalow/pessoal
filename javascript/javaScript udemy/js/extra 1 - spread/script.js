//spread operator

//exemplo 1
const array1 = [1, 2, 3];
const array2 = [4, 5, 6];
const combinado = [...array1, ...array2];

console.log(combinado); // saida: [1,2,3,4,5,6]

//exemplo 2
function exemplo(a, b, c) {
  console.log(a, b, c);
}
const argumentos = [1, 2, 3];
exemplo(...argumentos); // saida: 1 2 3
