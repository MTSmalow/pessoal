//declaração de funçao (Function hoisting)
function falaOi() {
  console.log("oi");
}
// first-class objects (objetos de primeira classe)
//function expression
const souUmDado = function () {
  consolo.log("sou um dado");
};

//arrow function
const funcaArrow = () => {
  consolo.log("sou uma arrow function");
};

//dentro de um objeto
const obj = {
  falar: function () {
    console.log("estou falando");
  },
};
//variação 1
const obj2 = {
  falar() {
    console.log("estou falando");
  },
};
