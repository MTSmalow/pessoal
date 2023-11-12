//indice array    0        1         2   , ele e por elemneto do array
const alunos = ["luiz", "maria", "joão"];
console.log(alunos);
console.log(alunos[0]); // mostra apenas o indice especificado entre []
// console.log(alunos[1]);
// console.log(alunos[2]);

alunos[0] = "macaco"; //modifica o indice 0 = "luiz"
alunos[3] = "eduardo"; //adiciona o indice 3 ao array
console.log(alunos);

console.log(alunos.length); //mostra o maior indice do array
alunos[alunos.length] = "fabio"; //adiciona o elemneto "fabio ao final do array"
alunos.push("luiza"); //funçao que adiciona o elemento ao final do array

alunos.unshift(
  "heloisa"
); /*adiciona o elemento ao inicio movendo as outras um indice acima tornando "heloisa"
ao indice zero*/

alunos.pop(); //apaga o ultimo elemneto do array
alunos.shift(); //apaga o primeiro elemneto do array
const pop = alunos.pop(); //apaga o ultimo elemneto do array e o salva em uma variavel
const shift = alunos.shift(); //apaga o primeiro elemneto do array e o salva em uma variavel

delete alunos[1]; //apaga o que tem dentro do indice 1 e o torna um elemneto vazio

console.log(
  alunos.slice(0, 3)
); /*mostra apenas os elementos dos indices 0 a 2 naos mostrando o 3 em diante*/

console.log(
  alunos instanceof Array
); /*verifica se a instancia "alunos" e uma array e se sim retornara true*/
