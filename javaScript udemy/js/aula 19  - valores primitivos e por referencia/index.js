/*
primitivos (imutaveis)- string, number, boolean, undefined, null (bigint, symbol)
 valores copiados.se sera copiado se usar o sianal de "=" e cada valor sera independentem um do outro
*/
let a = "A";
let b = a; //copia o valor de a
console.log(a, b);

a = "outracoisa";
console.log(a, b);

/*
referencia (mutavel)- array, object, function
passados por referencia.se usado o sinal de "=" ele apontara para o mesmo lugar na memoria os tornando 
dependentes um do outro,caso um seja mudado o outro tambem sera.
a menos que o copie desta maneira: const var2 = {...var1}.apenas assim um sera independente do outro
*/

let c = [1, 2, 3];
let d = c; // apontam para o mesmo lugar logo quando alteramos um o outro se altera tambem

let e = { ...c }; //copia o valor de "c" o tornando independente
console.log(c, d);
a.push(4);
console.log(a, b);

const pessoa = {
  nome: "luiz",
  sobrenome: "otavio",
};
const pessoa2 = pessoa; // apontam para o mesmo lugar logo quando alteramos um o outro se altera tambem
pessoa.nome = "joão";
console.log(pessoa2);

const pessoa3 = { ...pessoa }; //copia o valor mais o tornando independente do original
