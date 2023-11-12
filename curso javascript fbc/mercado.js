let preçoDoProduto1 =12;
let preçoDoProduto2 = 10;
let preçoDoProduto3 = 5

let custo = 0
if (preçoDoProduto1 <= 18){
  console.log("comprei o produto 1")
  custo = custo + preçoDoProduto1
}
if (preçoDoProduto2 < 3 ){
  if (preçoDoProduto2 >= 1.5){
    comsole.log("comprei o produto 2");
    custo = custo + preçoDoProduto2
  }
  else {
    console.log("tem algo de errado com o produto 2")
  }
}
console.log("comprei o produto 3")
custo = custo + preçoDoProduto3
console.log("eu paguei", custo, "reais")