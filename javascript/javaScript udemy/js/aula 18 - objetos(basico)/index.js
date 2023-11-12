const pessoa1 = {
  nome: "luiz",
  sobrenome: "miranda",
  idade: 25,
}; //cria um objeto chamado pessoa1
console.log(pessoa1.nome);
console.log(pessoa1);

function criaPessoa(nome, sobrenome, idade) {
  return {
    nome: nome,
    sobrenome: sobrenome,
    idade: idade,
  };
} //funcao factori que cra objetos

const pessoa2 = criaPessoa("luiz", "otavio", 25);

const pessoa3 = {
  nome: "luiz",
  sobrenome: "miranda",
  idade: 25,

  fala() {
    console.log(
      `${this.nome} ${this.sobrenome} esta falando oi`
    ); /*faz que mostre o nome e o sobrenome 
    na tela do objeto que esta falando*/

    /* incrementaIdade(){
        this.idade++;
     }*/
  },
};
pessoa3.fala();
//pessoa3.incrementaIdade();//faz que o incrementaIdade seja execultado aumantando a idade
