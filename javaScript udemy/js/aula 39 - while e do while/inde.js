let controle = 0;

while (controle <= 10) {
  console.log(controle);
  controle++;
}
function ramdom(min, max) {
  const r = Math.random() * (max - min) + min;
  return Math.floor(r);
}
const min = 1;
const max = 50;
let rand = ramdom(min, max);

while (rand !== 10) {
  // checa a condição e depois executa o codigo
  rand = ramdom(min, max);
  console.log(rand);
}

do {
  //executa o codigo e depois checa a condição
  rand = ramdom(min, max);
  console.log(rand);
} while (rand !== 10);
