from random import shuffle
a1 = str(input("digite o nome do aluno: "))
a2 = str(input("digite o nome do aluno: "))
a3 = str(input("digite o nome do aluno: "))
a4 = str(input("digite o nome do aluno: "))
lista = [a1,a2,a3,a4]
shuffle(lista) # embaralha oa elementos da lista
print("a orde de apresentação sera ")
print(lista)