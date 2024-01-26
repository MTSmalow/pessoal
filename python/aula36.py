import random
lista = [0, 1, 2, 3 , 4, 5]
es = random.choice(lista)
un = int(input("digite um numero de 0 a 5"))
if un == es:
    print("voce ganhou")
else:
    print("voce perdeu")