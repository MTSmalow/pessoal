//referencia de ojeto

//jeito errado
let obj1 = {
  nome: "teste1",
};
let obj2 = obj1;
obj2.nome = "alterado";
console.log(obj1);
conaole.log(obj2);
/*saida: {nome: 'alterado'}
         {nome: 'alterado'}
*/

//jeito certo
let obj3 = {
  nome: "teste1",
};
let obj4 = { ...obj3 };
obj2.nome = "alterado";
console.log(obj3);
conaole.log(obj4);
/*saida: {nome: 'teste1'}
         {nome: 'alterado'}
*/
