// IIFE -> immediately invoked function expression
(function (idade, peso, altura) {
  const sobrenome = "miranda";
  function criaNome(nome) {
    return nome + " " + sobrenome;
  }
  function falaNome() {
    console.log(criaNome("luiz"));
  }
  falaNome();
  console.log(idade, peso, altura);
})(30, 80, 1.8);
