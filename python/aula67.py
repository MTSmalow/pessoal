import random
cj = 0
t = 0
lista = [0, 1, 2, 3 , 4, 5,6,7,8,9,10]
es = random.choice(lista)
while cj != 1:
    un = int(input("digite um numero de 0 a 10: "))
    t =  t + 1 
    if un == es:
        print("voce ganhou")
        print("voce precisou de {} tentativas para acertar".format(t))
        cj = 1
    else:
        print("voce errou tente de novo")
  