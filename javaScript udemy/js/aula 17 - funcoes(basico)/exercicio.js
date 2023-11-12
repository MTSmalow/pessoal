const num1 = prompt("digitye um numero para achar a raiz")

const raiz = function (n) {
    return n ** 0.5;
  }; //cria uma variavel com o valor de uma função de raiz
  document.body.innerHTML += `o resultado da Raiz é ${raiz(num1)}`
  /*
pede para usuario digitar um numero e faz a raiz quadrada deste e o exibe na tela do
usuario
*/
