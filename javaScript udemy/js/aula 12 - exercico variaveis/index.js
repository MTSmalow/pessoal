let varA = "a";
let varB = "b";
let varC = "c";
let extra;
extra = varA;
varA = varB;
varB = varC;
varC = extra;
console.log(varA, varB, varC);
