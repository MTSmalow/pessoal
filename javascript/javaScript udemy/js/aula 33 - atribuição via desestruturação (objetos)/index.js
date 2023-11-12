const pessoa = {
  nome: "luiz",
  sobrenom: "miranda",
  idade: 30,
  endereco: { rua: "av brasil", numero: 320 },
};
const { nome, sobrenome } = pessoa;
console.log(nome, sobrenome);

const {
  endereco: { rua, numero }, //puxa somente o valor de rua e numero sem puxar o objeto "endereco"
} = pessoa;
console.log(rua, endereco);

const {
  endereco: { rua2: r = 123456 },
  //o valor de rua2 sera enviado para re se a variavel rua2 nao tiver sido declarada ela recebera o valor de "123456"
} = pessoa;
