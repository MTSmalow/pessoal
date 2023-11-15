const nome = "luiz";

function falanome() {
  //const nome = 'jairo' somente essa alterara o valor da variavel
  console.log(nome);
}
function usafalanome() {
  const nome = "jorge"; //sera exibido luiz quando execultado pos essa linha nao interfere no valor da variavel inicial
  falanome();
}
usafalanome();
