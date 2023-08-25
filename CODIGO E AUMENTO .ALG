Algoritmo "codigo e aumento "

Var
 codigo , novosalario , salarioatual :real


Inicio
escreval("qual seu salario atual")
leia(salarioatual)
escreval("qual o codigo do seu cargo ")
leia(codigo)
escolha codigo
caso 1
novosalario<-salarioatual+salarioatual/100*45
escreval("tera aumento de 45% e o novo salario sera " , novosalario)
caso 2
novosalario<-salarioatual+salarioatual/100*35
escreval("tera aumento de 35% e o novo salario sera " , novosalario)
caso 3
novosalario<-salarioatual+salarioatual/100*25
escreval("tera aumento de 25% e o novo salario sera " , novosalario)
caso 4
novosalario<-salarioatual+salarioatual/100*15
escreval("tera aumento de 15% e o novo salrio sera " , novosalario)
caso 5
escreval("nao tera aumento e mantera o salario de " , novosalario)
fimescolha

Fimalgoritmo