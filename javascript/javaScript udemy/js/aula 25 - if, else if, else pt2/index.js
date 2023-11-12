const numero = 10;
if (numero >= 0 && numero <= 0) {
  console.log("sim,seu numero esta entre 0 e 5");
} else {
  console.log("o numero nao esta etren 0 e 5");
}

//ele pega a primeira condição que for verdadeira e ignora o resto do if else

const numero2 = 10;
if (numero2 >= 0 && numero2 <= 5) {
  console.log("sim,seu numero esta entre 0 e 5");
} else if (numero2 >= 6 && numero2 <= 8) {
  console.log("o numero esta entre 6 e 8");
} else if (1 === 1) {
  //condiçao verdadeira
  console.log("LITERAL");
} else if (numero2 >= 9 && numero2 <= 11) {
  //condição verdadeira
  console.log("o numero esta entre 9 e 11");
} else {
  console.log("o numero naso esta entre 0 e 11");
}
//exibe apenas o "LITERAL"
