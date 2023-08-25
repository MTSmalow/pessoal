Algoritmo "semnome"

Var
 numero, aposta: inteiro


Inicio
numero <- randi (3)+1
 escreval("digite 1 para pedra e digite 2 para papel e digite 3 para tesoura ")
 leia(aposta)
 se numero = aposta entao
 escreval("voce empatou")
 senao
      se (numero = 2) e (aposta = 1)entao
 escreval("voce perdeu")
 senao
      se (numero = 3) e (aposta = 2) entao
 escreva("voce perdeu")
               senao
               se (numero = 1) e (aposta = 3)entao
               escreva("voce perdeu")
               senao
               escreva("voce ganhou")
               fimse
 fimse
 fimse
 fimse
 escreval("o adversario escolheu :" , numero )

Fimalgoritmo