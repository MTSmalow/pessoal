//nao podemos cria constantes com palavras reservardas como let,if,else,var,etc..
//constantes precisam ter nomes significativos
// nao pode criar o nome de uma constante com um numero
//nao pode conter espaços ou traços
//utilizamos camelCase
//nao pode modificar o valor de uma constante
//NAO UTILIZAMOS VAR, UTILIZA CONST
const nome = "eduardo";
const idade = 15; //number
const saldoBancario = 15 + 10;
const divida = 5 * 2;
const dinheiro = saldoBancario - divida;
console.log("meu nome é", nome);
console.log("minha idade é", idade);
console.log("minha divida é", divida);
console.log(
  "o dinherio que eu tinha",
  saldoBancario,
  ", o dinheiro depois de pagar a divida",
  dinheiro
);
// - menos , + adição , * multiplicação
//saber tipo de dado que ta na const idade
console.log(typeof idade);
console.log(typeof (saldoBancario - divida));
