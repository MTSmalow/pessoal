//continue continua para proxima interação
//break sai do laço de repetição
const numeros = [
  1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22,
  23, 24, 25, 26, 27, 28, 29, 30,
];
let i = 0;
for (let numero of numeros) {
  if (numero === 2) {
    continue; // faz que pule para a proxima interação do laço
  }
  if (numero === 7) {
    //faz que uando encontrado o numero 7 o laco de repetição pare
    break;
  }
  console.log(numero);
}

while (i < numeros.length) {
  let numero = numeros[i];
  if (numero === 2) {
    i++;
    continue; // faz que pule para a proxima interação do laço
  }
  if (numero === 7) {
    //faz que uando encontrado o numero 7 o laco de repetição pare
    i++;
    break;
  }
  i++;
}
