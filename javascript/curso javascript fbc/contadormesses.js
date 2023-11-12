let conta = 0;
let messes = 0;

const objetivo = 100000;
const rendimentoAnual = 0.1;
const deposito = 500


while (conta < 100000){
  conta += deposito
  conta += conta *rendimentoAnual / 12;
  messes += 1;
}
console.log("demorou", messes ,"messes")
console.log("demorou" , messes /12,"anos")