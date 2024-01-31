import random
l = [1,2,3,4,5,6,7,8,9,10]
t = 0
while True:
    es = random.choice(l)
    pi = str(input("vamos jogar par ou impar.qual voce escolhe[P/I]?"))
    j = int(input("digite um valor: "))
    rf = es + j
    if pi == "P" and rf % 2 == 0 or pi == "I" and rf % 2 != 0:
        print("voce venceu")
        break
    else:
        print("voce perdeu.tente de novo")
        t = t + 1
print(f'o computador venceu um total de {t} vezes')