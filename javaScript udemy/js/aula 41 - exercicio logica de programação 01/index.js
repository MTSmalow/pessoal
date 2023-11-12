const num1 = 10;
const num2 = 20;
function max(x, y) {
  if (x > y) {
    return x;
  } else if (y > x) {
    return y;
  } else {
    return "os numeros sao iguais";
  }
}
console.log(max(1, 1));

//variação 1

function max2(x, y) {
  return x > y ? x : y;
}
console.log(max(5, 10));

//variação 3

const max3 = (x, y) => (x > y ? x : y);
console.log(max3(14, 15));
