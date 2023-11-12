/*
operadores logicos
&& -> and -> E = todas as expressoes precisam ser verdadeiras para ser verdadeira
|| -> or -> ou = apenas uma ser verdadeira para a expressao ser verdadeira
! -> not -> nao = nega um valor faz inverter o valor
*/
const expressaoAND = true && true && true && true; //todas as expressoes precisam ser verdadeiras para ser verdadeira
console.log(expressaoAND);
console.log(true && true);

const usuario = "luiz";
const senha = "123456"; //  true        +       false    = false
const vaiLogar = usuario === "luiz" && senha === "12345";
console.log(vaiLogar);

const expressaoOR = false || true; //apenas uma ser verdadeira para a expressao ser verdadeira
