v = []
p = 0
q = int(input('digite quantos numeros quer checar: '))
for cont in range(0,q):
    v.append(int(input(f'digite um valor para a posiçao {p}: '))) 
    p += 1
ma = max(v, key=int)
me = min(v, key=int)
print(f' voce digitou os valores {v}')
print(f" o maior valor foi {ma} o seu indice é {v.index(ma)}")
print(f" o menor valor foi {me} o seu indice é {v.index(me)}")