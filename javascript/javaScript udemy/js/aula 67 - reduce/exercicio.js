const numeros = [5,50,80,1,2,3,5,8,7,11,15,22,27]
// const total = numeros.reduce(function(acumulador, valor){
//     if(valor % 2 === 0) acumulador.push(valor);
//         return acumulador
// }, []);
// console.log(total)

// const total = numeros.reduce(function(acumulador, valor){
//     acumulador.push(valor*2);
//     return acumulador
// }, 0);
// console.log(total)

const pessoas = [
    {nome: 'Luiz', idade: 62},
    {nome: 'maria', idade: 23},
    {nome: 'eduardo', idade: 55},
    {nome: 'leticia', idade: 19},
    {nome: 'rosana', idade: 32},
    {nome: 'wallace', idade: 47},
];

const maisVelha = pessoas.reduce(function(acumulador, valor){
    if(acumulador.idade >valor.idade) return acumulador;
    return valor;
}, 0);
console.log(maisVelha)