const pessoas = [
    {nome: 'Luiz', idade: 62},
    {nome: 'maria', idade: 23},
    {nome: 'eduardo', idade: 55},
    {nome: 'leticia', idade: 19},
    {nome: 'rosana', idade: 32},
    {nome: 'wallace', idade: 47},
];

// const nomes = pessoas.map(obj => obj.nome)
// console.log(nomes)

// const deletados = pessoas.map(obj => {idade: obj.idade})
// console.log(deletados)

a = 1
const IDs = pessoas.map((obj,indice) => {obj.id = indice+1;return obj;})
console.log(IDs)