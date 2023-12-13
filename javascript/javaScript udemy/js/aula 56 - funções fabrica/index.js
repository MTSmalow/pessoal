// factory function(função fabrica)
// constructor function (fução construtora)
function criaPessoa(nome, sobrenome, altura, peso) {
  return {
    nome,
    sobrenome,
    // Getter
    get nomeCompleto() {
      return `${this.nome} ${this.sobrenome}`;
    },

    //Setter
    set nomeCompleto(valor) {
      valor = valor.split(" "); // divide 'valor' pelos espaços e os coloca em uma array
      this.nome = valor.shift(); // pega o primeiro valor do array e coloca como valor de nome
      this.sobrenome = valor.join(" "); // pega o resto do array e o seta como valor de sobrenome e adiciona um espaço entre os dois elementos
      console.log(valor);
    },

    fala(assunto) {
      return "${this.nome} esta ${assunto}.";
    },
    altura,
    peso,
    imc() {
      const indice = this.peso / this.altura ** 2;
      return indice.toFixed(2);
    },
  };
}
const p1 = criaPessoa("luiz", "otavio", 1.8, 80);
console.log(p1.imc());
const p2 = criaPessoa("maria", "oliveira", 1.6, 60);
console.log(p2.imc());
console.log(p1.fala("falando sobre JS"));

//teste setter
// p1.nomeCompleto = "maria oliveira silva";
// console.log(p1.nome); //resultado: maria
// console.log(p1.sobrenome); //resultado; oliveira silva
// console.log(p1.nomeCompleto); //resultado: maria oliveira silva

//opção 2
// function criaPessoa(nome, sobrenome) {
//     return {
//       nome,
//       sobrenome,
//       fala: function (assunto) {
//         return "${this.nome} esta ${assunto}.";
//       },
//     };
//   }

//this sempre sera quem chamar o objete exemplo:

// const k = criaPessoa("luiz", "otavio");
// const h = criaPessoa("maria", "oliveira");
// console.log(h.fala("falando sobre JS"));
// o this neste caso sera o "h" porque ele que esta chamando o objeto

// get imc() {
//     const indice = this.peso / this.altura ** 2;
//     return indice.toFixed(2);
//   },
// };
// }
// const p1 = criaPessoa("luiz", "otavio", 1.8, 80);
// console.log(p1.imc);
//ao colocar o get antes do imc ele passa a entender como se ele fosse uma atributo
// isso e chamado de Getter
