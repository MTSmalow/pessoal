const inputTarefa = document.querySelector(".input-tarefa");
const btnTarefa = document.querySelector(".btn-tarefa");
const tarefas = document.querySelector(".tarefas");

function criaLi() {
  const li = document.createElement("li");
  return li;
}

inputTarefa.addEventListener("keypress", function (e) {
  /*pega o evento de precionar uma tecla,keypress pega a tecla que e precionada,tem keyup que e qundo preciona a tecla e soulta e keydown quando preciona e 
  segura a tecla*/
  if (e.keyCode === 13) {
    if (!inputTarefa.value) return; //ve se o input tem valor e cria a tarefa caso ele tenha
    criaTarefa(inputTarefa.value);
  }
});

function limpaInput() {
  inputTarefa.value = ""; //limpa o input
  inputTarefa.focus(); //faz que ao precionar adicionar tarefa volta a digitar no input
}

function criaBotaoApagar(li) {
  li.innerText += " "; //adiciona um espaço emtre o li e o botao
  const botaoApagar = document.createElement("button"); //cria o botao
  botaoApagar.innerText = "Apagar"; //adiciona o texto "apagar" ao botao
  // botaoApagar.classList.add('apagar');
  botaoApagar.setAttribute("class", "apagar"); //adiciona um o atributo classe com valor "apagar" ao botao
  botaoApagar.setAttribute("title", "Apagar esta tarefa");
  //adiciona um o atributo title com valor "apagar essa tarefa" ao botao

  li.appendChild(botaoApagar);
}

function criaTarefa(textoInput) {
  const li = criaLi(); //cria o elemento li
  li.innerText = textoInput;
  tarefas.appendChild(li); // adiciona o elemento li nas tarefas
  limpaInput(); //limpa o input e coloca para digitar nova mente no input quando enviada a tarefa
  criaBotaoApagar(li); //adiciona o botao de apgar quando enviado a terefa
  salvarTarefas();
}

btnTarefa.addEventListener("click", function () {
  if (!inputTarefa.value) return;
  criaTarefa(inputTarefa.value);
});

document.addEventListener("click", function (e) {
  const el = e.target; // salva as informaçoes de onde foi clicado na tela

  if (el.classList.contains("apagar")) {
    //checa se o elemento clicado possui a class "apagar"
    el.parentElement.remove();
    salvarTarefas();
  }
});

function salvarTarefas() {
  const liTarefas = tarefas.querySelectorAll("li"); // seleciona os li e os adiciona na variavel liTarefas
  const listaDeTarefas = []; //cria  um array chamando listaDeTarefas

  for (let tarefa of liTarefas) {
    let tarefaTexto = tarefa.innerText;
    tarefaTexto = tarefaTexto.replace("Apagar", "").trim();
    /* salva o texto da terefa na variavel terefaTexto 
    coloca o replace para apagar o texto"apagar" e o subustitui por " "=string vazia
    usa o ".trin()" para remover o espaco que fica no final 
    */
    listaDeTarefas.push(tarefaTexto); //adiciona o tarefaTexto a listaDeTarefas
  }

  const tarefasJSON = JSON.stringify(listaDeTarefas); // cria um string do array listaDeTarefas convertido pra JSON
  localStorage.setItem("tarefas", tarefasJSON); // salva as tarefas inseridas no local storange
}

function adicionaTarefasSalvas() {
  const tarefas = localStorage.getItem("tarefas");
  const listaDeTarefas = JSON.parse(tarefas); //converte os elementos JSON para objetos javascript

  for (let tarefa of listaDeTarefas) {
    criaTarefa(tarefa);
  }
}
adicionaTarefasSalvas();
