function recebe(x) {
  if (x % 3 === 0 && x % 5 === 0) {
    return "FizzBuzz";
  } else if (x % 3 === 0) {
    return "Fizz";
  } else if (x % 5 === 0) {
    return "Buzz";
  } else {
    return x;
  }
}
for (let i = 0; i <= 100; i++) {
  console.log(i, recebe(i));
}
//variação1

function FizzBuzz(numero) {
  if (typeof numero !== "number") return numero;
  if (n % 3 === 0) return "fizz";
  if (n % 5 === 0) return "buzz";
  if (n % 3 === 0 && numero % 5 === 0) return "FizzBuzz";
  return numero;
}
for (let i = 0; i <= 100; i++) {
  console.log(i, FizzBuzz(i));
}
