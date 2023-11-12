for (
  let i = 0 /*valor inicial da estrutura */;
  i <= 5 /*numero que quando for atingido ira parar a repeticao */;
  i++ /* toda fez que o laco de repetição funcionar sera adicionado +1 ao valor de i */ // variaçao: i += valor desejado que sera adicionado a cada execução
) {
  console.log("linha", i);
}

for (let i = 0; i <= 10; i++) {
  //exibe os numero de 0 a 10 e diz se eles sao par ou inpar
  const par = i % 2 === 0 ? "par" : "impar";
  console.log(i, par);
}

//                 0       1      2
const frutas = ["maça", "pera", "uva"];
for (let i = 0; i < frutas.length; i++) {
  /*inicia o valor do i como 0 e checa se o tamanho do array frutas for menor que i  sera adicionado +1 ao valor de i
    depois disso sera exibido o "indice","o valor de i a cada repetição","a fruta que e petencente ao indice do valor
    de i"
  */
  console.log(`indice ${i}`, frutas[i]);
}
