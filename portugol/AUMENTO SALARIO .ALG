Algoritmo "aumento salario "

Var
 salario , condicao , salariofinal:real


Inicio
salario <- 1200
   escreval("qual sua condiçao 1-casada sem filhos 2-têm filhos 3-solteira e sem filhos")
   leia(condicao)
   escolha condicao
   caso 1
    salariofinal*salario+salario/100*15
   escreval ("tera aumento de 15% no salario  e ficara" , salariofinal)
   caso 2
       salariofinal*salario+salario/100*35
   escreval("tera aumento de 35% no salario e ficara " , salariofinal)
   caso 3

   escreval("nao tera aumento e o salario sera " , salario)
   fimescolha
   

Fimalgoritmo