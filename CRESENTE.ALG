 Algoritmo "cresente"

Var
   num1, num2, num3, temp: Real

Inicio
   Escreva("Digite o primeiro número: ")
   Leia(num1)

   Escreva("Digite o segundo número: ")
   Leia(num2)

   Escreva("Digite o terceiro número: ")
   Leia(num3)
   se num1 > num2 entao
      temp <- num1
      num1 <- num2
      num2 <- temp
   fimse

   se num2 > num3 entao
      temp <- num2
      num2 <- num3
      num3 <- temp
   fimse

   se num1 > num2 entao
      temp <- num1
      num1 <- num2
      num2 <- temp
   fimse


   Escreva("Os números em ordem crescente são: ", num1, ", ", num2, " e ", num3)
    fimalgoritmo