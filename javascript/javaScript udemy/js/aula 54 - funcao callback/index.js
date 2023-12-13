function rand(min = 1000, max = 3000) {
  const num = Math.random() * (max - min) + min;
  return Math.floor(num);
  //funçãoque gera um  numero aleatorrio emtre 1000 e 3000
}
function f1(callback) {
  setTimeout(function () {
    console.log("f1");
    if (callback) callback();
  }, rand());
}
function f2(callback) {
  setTimeout(function () {
    console.log("f2");
    if (callback) callback();
  }, rand());
}
function f3(callback) {
  setTimeout(function () {
    console.log("f3");
    if (callback) callback();
  }, rand());
}

//callback hell == inferno do callback

f1(function () {
  f2(function () {
    f3(function () {
      console.log("ola mundo");
    });
  });
});

//opção 2

f1(f1callback);
function f1callback() {
  f2(f2callback);
}
function f2callback() {
  f3(f3callback);
}
function f3callback() {
  console.log("ola mundo");
}
