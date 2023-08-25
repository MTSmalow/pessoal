Algoritmo "semnome"

Var
 numero, aposta: inteiro


Inicio
numero <- randi (3)+1
 escreval("digite 1 para pedra e digite 2 para papel e digite 3 para tesoura ")
 leia(aposta)
 se numero = aposta entao
 escreval("voce acertou")
 senao
 escreval("voce errou")
 fimse
 escreval("a resposta certa e :" , numero )

Fimalgoritmo