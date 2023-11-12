const verdadeiro = true;
//let tem escopo de bloco { ...bloco }
// var so tem escopo de funçao

let nome = "luiz"; //criando
var nome2 = "luiz"; //criando
//let nome = "otavio" // nao se pode redeclarar o let deste jeito

if (verdadeiro) {
  // exemplo de escopo de bloco

  let nome = "otavio"; // criando
  var nome2 = "rogerio"; // redeclarando

  console.log(nome, nome2);
  if (verdadeiro) {
    let nome = "outra coisa"; //criando
    var nome2 = "ronaldo"; //redeclarando
    console.log(nome);
  }
}
console.log(nome, nome2, "escopo global"); // exibe "luiz ronaldo escopo global"

var sobrenome = "miranda";
function falaOi() {
  // variaveis declaradas apenas dentro da funçao nao serão exibidas fora delas
  var nome = "luiz";
  console.log(sobrenome);
}
console.log(nome); // exibe um erro de nal declarada a variavel

falaOi(); // sera efetuado apenas o "console.log(sobrenome)"

console.log(sobrenome2);
/* exibe undefined apenas para o var onde ele declara a variavel como se fosse no topo do 
codio e espera o valor ser declarado*/
var sobrenome2 = "miranda";

console.log(sobrenome3);
// exibe apenas um erro avisando que a variavel nao foi declarada
let sobrenome3 = "miranda";
