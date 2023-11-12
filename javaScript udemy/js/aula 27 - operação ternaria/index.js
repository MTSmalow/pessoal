// ?:
// (condição) ? 'valor para verdadeiro' : 'valor para falso'

const pontusacaoUsuario = 999;
const nivelUsuario =
  pontusacaoUsuario >= 1000 ? "usuario vip" : "usuario normal";

// if (pontusacaoUsuario >= 1000) {
//   console.log("usuario vip");
// } else {
//   console.log("usuario normal");
// }

const corUsuario = null;
const corPadro = corUsuario || "preta";
