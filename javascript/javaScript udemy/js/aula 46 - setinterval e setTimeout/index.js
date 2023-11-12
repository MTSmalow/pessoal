function retornaHora() {
  let data = new Date();
  return data.toLocaleTimeString("pt-BR", {
    hour12: false,
  });
}

setInterval(function () {
  console.log(retornaHora());
}, 1000);

// setTimeout(function () {
//   clearInterval(timer);
// }, 3000);

// setTimeout(function () {
//   console.log("ola mundo");
// }, 5000);
