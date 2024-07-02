// filter -> sempre retorna um array, com a mesma quantidade de elementos ou mais
const numeros = [5,50,80,1,2,3,5,8,7,11,15,22,27]

// tipo 1
// function callbackFilter(valor) {
//     return (valor > 10);
// }
// const numerosFiltrados = numeros.filter(callbackFilter);

// tipo 2
const numerosFiltrados = numeros.filter(valor => valor > 10);
console.log(numerosFiltrados)