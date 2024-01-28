n1 = int(input("digite o primeiiro valor inteiro: "))
n2 = int(input("digiite o segundo valor inteiro: "))
if n1 > n2:
    print("o primeiro valor e maior")
elif n2 > n1:
    print("o segundo valor e maior")
elif n1 == n2:
    print("nao existe valor maior, os dois sao iguais")
else:
    print("valores invalidos ")