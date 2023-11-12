// for in -> le os indices ou chaves do objetos
const frutas = ["pera", "maca", "uva"];
for (let indice in frutas) {
  console.log(frutas[indice]);
}
const pessoa = {
  nome: "luiz",
  sobrenome: "miranda",
  idade: 30,
};
console.log(pessoa.nome);

for (let chave in pessoa) {
  console.log(chave, pessoa[chave]);
}
