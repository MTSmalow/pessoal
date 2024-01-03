// funcao construtora -> objetos   constroi objetos
//funcao fabrica -> objetos  fabrica objetos
//construtora -> Pessoa
//fabrica -> criaPessoa
function Pessoa(nome, sobrenome) {
  const ID = 123456;
  const metodointerno = function () {};

  this.nome = nome;
  this.sobrenome = sobrenome;

  this.metodo = function () {
    console.log(this.nome + ": sou um metodo");
  };
}
const p1 = new Pessoa("luiz", "otavio");
