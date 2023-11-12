alert("bom dia");
window.alert("oba");

window.confirm("deseja confirmar"); //faz uma pergunta e ser for confirmada retorna valor true
confirm("cirma que deseja pagar"); //faz uma pergunta e ser for confirmada retorna valor true
const confirma = confirm("realmente deseja apagar"); //faz uma pergunta e o valor que for selecionado sera armazenado na variavel
console.log(confirma);

window.prompt("digite seu nome"); //abre uma caixa de texto para o usuario digitar e o que ele digita e mandado pro sistema
let num1 = prompt("digite um numero"); //tudo retornado pelo prompt e uma string
console.log(num1);
num1 = parseFloat(num1); //transforma o valor de num1 em float
