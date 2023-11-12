/*
operadores de comparação
> maior que
>= maior ou igual a
< menor ue
<= menor que ou igual a
== igaldade (valor)*******
=== igualdade estrita (valor e tipo)
!= diferente (valor)*******
!== diferente estrito(valor e tipo)
*/
const comp = 10 > 5;
console.log(comp);

// const num1 = 10; //number
// const num2 = "10"; // string
// const comp2 = num1 == num2; checa se sao iguais.nao se deve uar desse jeito
// console.log(comp);
//  retorna true
//nao se deve usar

const nu1 = 10; //number
const num2 = "10"; // string
const comp2 = num1 === num2; // checa se sao iguais.se deve uar desse jeito
//retorna false

//const comp3 = num1 != num2; checa se os dois sao diferentes.nao se usa mais assim
//retorna false

const comp3 = num1 !== num2; //checa se os dois sao diferentes.se faz deste jeito
//retorna true
