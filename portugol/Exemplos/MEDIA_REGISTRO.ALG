algoritmo "Media_registro"
// Disciplina: [Linguagem e L�gica de programa�ao]
// Professor: Antonio Carlos Nicolodi
// Autor: Antonio
// Data: 17/03/2020
// Se��o de Declara��es
tipo
   aluno = Registro
      Nome  : caracter
      Nota1 : real
      Nota2 : real
      Nota3 : real
      Nota4 : real
   fimregistro
var

   Notas : vetor[1..5] de aluno
   indice: Inteiro
   soma : real
   media : real
inicio
   ESCREVAL
   Para indice DE 1 AT� 5 FA�A
      escreva("Digite o ",indice:2," Nome do Aluno: ")
      leia(notas[indice].Nome)
      escreva("Digite a ",indice:2," 1� nota: ")
      leia(notas[indice].nota1)
      escreva("Digite a ",indice:2," 2� nota: ")
      leia(notas[indice].nota2)
      escreva("Digite a ",indice:2," 3� nota: ")
      leia(notas[indice].nota3)
      escreva("Digite a ",indice:2," 4� nota: ")
      leia(notas[indice].nota4)

      soma <-soma + notas[indice].nota1 + notas[indice].nota2 + notas[indice].nota3 + notas[indice].nota4

      media<-(soma/4)
      escreval
      escreval(media)
      escreval
      soma <- 0
      SE media < 7 ent�o
         Escreval("O reprovou ")
      Senao
         Escreval("O aprovou ")
      fimse
   Fimpara
fimalgoritmo
