const pessoas = [
    {nome: 'Luiz', idade: 62},
    {nome: 'maria', idade: 23},
    {nome: 'eduardo', idade: 55},
    {nome: 'leticia', idade: 19},
    {nome: 'rosana', idade: 32},
    {nome: 'wallace', idade: 47},
];
const result = pessoas.filter( valor => valor.nome.length >= 5 );
console.log(result)

result = pessoas.filter(valor => valor.idade > 50);
console.log(result)

result = pessoas.filter(valor => (valor.nome[valor.nome.length - 1]) == 'a')
console.log(result)