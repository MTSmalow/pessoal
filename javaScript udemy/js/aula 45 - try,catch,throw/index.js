try {
  /*tenta execultar caso ocorra algun erro vai para o bloco chatch para tratar
   o erro ou nao*/
  console.log(naoExisto);
} catch (erro) {
  console.log("naoExisto nao existe");
}

function soma(x, y) {
  if (typeof x !== "number" || typeof y !== "number") {
    throw new errorteste("x e y precisam ser numeros");
    //exibe o erro como se fosse um erro padrao do javascript
  }

  return (x = y);
}

console.log(soma(1, 2));
console.log(soma("1", 2));
