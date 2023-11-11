Algoritmo "semnome"

Var
 um, dois, aposta : inteiro
Inicio
um <- randi (2)+1
dois <- randi (2)+1
 escreval("digite 1 para impar e digite 2 para par ")
 leia(aposta)
 se ( um <> aposta ) e ( dois <> aposta) entao
 escreval("voce ganhou")
 senao
 escreval("voce perdeu")
 se (um = aposta )e ( dois = um ) entao
 escreval("empatou")
 fimse
 fimse
 escreval("o com1 escolheu :" , um)
 escreval("o com2 escolheu :" , dois)

Fimalgoritmo