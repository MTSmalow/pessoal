 Algoritmo "cresente"

Var
   num1, num2, num3, temp: Real

Inicio
   Escreva("Digite o primeiro n�mero: ")
   Leia(num1)

   Escreva("Digite o segundo n�mero: ")
   Leia(num2)

   Escreva("Digite o terceiro n�mero: ")
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


   Escreva("Os n�meros em ordem crescente s�o: ", num1, ", ", num2, " e ", num3)
    fimalgoritmo