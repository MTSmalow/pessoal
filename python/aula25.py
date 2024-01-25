import random
a1 = input("digite o nome do premeiro aluno: ")
a2 = input("digite o nome do segundo aluno: ")
a3 = input("digite o nome do terceiro aluno: ")
a4 = input("digite o nome do quarto aluno: ")
lista = [a1, a2, a3 ,a4]
es = random.choice(lista)
print("o aluno escolido foi o {}".format(es))