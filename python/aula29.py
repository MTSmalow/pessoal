n = str(input("digite seu nome completo: "))
print(n.upper())
print(n.lower())
es = n.count(' ')
i = len(n)
c = i - es
print('o total de caracteres sem espaco e {}'.format(c))
pn = n.split()
print(len(pn[0]))