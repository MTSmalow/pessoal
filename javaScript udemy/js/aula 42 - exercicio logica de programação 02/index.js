function ePaisagem(largura, altura) {
  if (largura > altura) {
    return true;
  } else if (altura > largura) {
    return false;
  }
}
console.log(ePaisagem(10, 20));

//variação 1
function ePaisagem2(largura, altura) {
  return largura > altura;
}
console.log(ePaisagem2(1080, 1920));
