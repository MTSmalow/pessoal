/*
&& -> false && true = false -> todas tem que ser verdadeiras
|| -> true || fals -> vai retornar 'verdadeiro'

falSY -> valoeres considerados falsos
0
'' "" `` = string  vazia
null / undefined
NaN
*/
console.log("luiz otavio" && 0 && "maria"); //retorna zero que e avaliado em falso

function falaOi() {
  return "oi";
}
const vaiExecultar = false;
console.log(vaiExecultar && falaOi());

console.log(0 || false || null || "luiz otavio" || true); //retorna "luiz otavio" ue e o primeiro elemento "verdadeiro"

const a = 0;
const b = null;
const c = "false"; //exibe este texto qque e considerado um valor "verdadeiro"
const d = false;
const e = NaN;
console.log(a || b || c || d || e);
