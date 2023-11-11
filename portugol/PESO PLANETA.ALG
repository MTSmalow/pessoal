Algoritmo "peso planeta"

Var
 codigo , novopeso, peso:real


Inicio
escreval("qual seu peso ")
leia(peso)
escreval("qual o codigo do planeta ")
leia(codigo)
            escolha codigo
caso 1
novopeso<-peso/10*(37/100)
escreval("seu peso em mercurio sera " , novopeso)
caso 2
novopeso<-peso/10*(88/100)
escreval("seu peso em venus sera" , novopeso)
caso 3
novopeso<-peso/10*(38/100)
escreval("seu peso em marte sera" , novopeso)
caso 4
novopeso<-peso/10*(2+64/100)
escreval("seu peso em jupiter sera  " , novopeso)
caso 5
novopeso<-peso/10*(1+15/100)
escreval("seu peso em saturno sera" , novopeso)
caso 6
novopeso<-peso/10*(1+17/100)
escreval("seu peso em urano sera" , novopeso)
fimescolha

Fimalgoritmo