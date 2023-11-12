let num1 = 102;
let num2 = 2.5;
let num3 = 1;

console.log(num1.toString() + num2); //converte o num1 para string somente neste console.log
console.log(typeof num1);

num3 = num3.toString(); //converte o num3 em string em todo o codigo
console.log(num1.toString(2)); //mostra o valor da variavel em binario

console.log(num1.toFixed(2)); //aredonda o valor da variavel na quantidade inserida nas aspas

console.log(Number.toString(num1)); // retorna o valor de true se o numero for inteiro

let temp = num1 * "ola";
console.log(Number.isNaN(temp)); //checa se o valor da variavel NÃO é um numero
