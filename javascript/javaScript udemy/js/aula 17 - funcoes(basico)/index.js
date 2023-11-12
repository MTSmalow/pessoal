function saudacao(/*parametros*/ nome) {
  console.log(`bom dia ${nome}`);
  return 123456; //sera retornado este valor
  return `bom dia ${nome}`; //retorna esse valor e exibe a mensagem
}
saudacao("luiz");

function som(x /*= 1 define um valor padro*/, y) {
  const resultado = x + y;
  return resultado; //nada a baixo de return sera exibido a fuction acaba no return
}
console.log(2, 5); //especifca o valor da variaveis como 2 e 5 e execulta a funçao
//console.log(resulatdo) nao se pode puxar nada de dentro da fuçao

const raiz = function (n) {
  return n ** 0.5;
}; //cria uma variavel com o valor de uma função de raiz
console.log(raiz(9));

//const raiz = (n) => n ** 0.5;  funçao de raiz simplificada com arroyfunction
