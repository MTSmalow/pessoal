n = 1
s = ""
while n != 0:
    s = str(input("digite qual o seu sexo(masculino[M] e feminino[F]): "))
    if n == "M" or n == "F":
        n = 0
print(" o seu sexo é {}".format(s))