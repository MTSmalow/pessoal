// indice de uma string
//               01234567
let umaString = "um texto";
console.log(umaString[1]);
let umaString2 = "um 'texto'";
let umaString3 = 'um "texto"'; //colocar aspas a mais sem fechar a caixa de texto
// concat() = +

console.log(umaString.indexOf("texto")); //dis o indice de onde esta a palavra começando do indice 0
console.log(umaString.lastIndexOf("texto")); //dis o indice de onde esta a palavra começando do ultimo indice

console.log(umaString.replace("um", "outro")); //troca a palavra

console.log(umaString.replace(/u/g, "#")); //troca o caracter u pelo # em toda string

console.log(umaString.slice(2, 5)); //so mostra os caracteres que setaco dentro dos indices especificados

console.log(umaString.split(" ")); //divide a palavra em cada espaco
console.log(umaString.split("t", 1)); //divide a palavra em cada caracter igual somente o numero de vezes especificados

console.log(umaString.toUpperCase); //coloca a string toda em maiusculo
console.log(umaString.toLowerCase); //coloca a sting inteira em minusculo
