Algoritmo "semnome"

Var
 numero, aposta: inteiro


Inicio
numero <- randi (2)+1
 escreval("digite 1 para apostar em cara e digite 2 para apostar em coroa ")
 leia(aposta)
 se numero = aposta entao
 escreval("voce acertou")
 senao
 escreval("voce errou")
 fimse
 escreval("a resposta certa e :" , numero)

Fimalgoritmo