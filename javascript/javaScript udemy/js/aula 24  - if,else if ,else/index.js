/*
entre 0 -11 - bom dia
entre 12 - 17 - boa tarde
entre 18 -23 - boa noite
 */

// if pode ser usado sozinho
// sempre que utilizo a palvara else precisso de um if antes
//eu posso ter ter varios else if na checagem
//so posso ter um else na checagem
//podemos usar consicoes sem else if,utilizando apenas if e else
const hora = 10;
if (hora >= 0 && hora <= 11) {
  console.log("Bom dia");
} else if (hora >= 12 && hora >= 17) {
  console.log("boa tarde");
} else if (hora >= 18 && hora <= 23) {
  console.log("boa noite");
} else {
  console.log("ola");
}

const tenhoGrana = true;
if (tenhoGrana) {
  console.log("vou sair");
} else {
  console.log("nao vou sair");
}
