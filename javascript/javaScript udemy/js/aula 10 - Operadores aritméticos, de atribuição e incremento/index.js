/*
 *aritimecos
 * + adiçao / concatenação
 * ** = potenciaçao
 * % = resto divisão
 */
const num1 = 5;
const num2 = 10;
const pala1 = "oi";
const pala2 = "tchau";
console.log(num1 + num2); //adiçao
console.log(num1 - num2); //subitraçao
console.log(num1 / num2); //divisao
console.log(num1 * num2); //mutiplicaçao

console.log(num1 ** num2); //potenciaçao
console.log(num1 % num2); //resto da divisao

console.log(pala1 + pala2); //concatenaçao

let contador = 1;
contador++;
console.log(++contador); //incremento = ++
console.log(--contador); //decremento = --

const passo = 10;
let contador2 = 1;
contador2 = contador2 + passo;
console.log(contador2);
let contador3 = 1;
contador3 **= 10; //potenciação
console.log(contador3);

console.log(pala1 + contador); //NaN = not a number = erro na conta
console.log("5" * contador);
const num3 = psrseInt("5"); //transforma em numero inteiro
// psrse = converte a varivel em outros tipos
