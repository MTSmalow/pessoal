l = ('hamurger', 'suco', 'pizza', 'pudim')
for comida in l:
    print(f'eu vou comer {comida}')

for pos, comida2 in enumerate(l):
    print(f'eu vou comer {comida2} na posicao {pos}')

for cont in range(0, len(l)):
    print(f'eu vou comer {comida} na posicao {cont}')

print(sorted(l)) # exibe os elementos da tupla organizados
print(l + l) # cocatena l +l juntando os elementos das tuplas um uma so
print(l.caunt('suco')) # mostra quantas vezes apareceu 'suco'
print(l.index('pizza')) # mostra em qual posição esta o elemento

pessoa = ('Eduardo',16,'M',91) # pode ter dados de tipos diferentes
print(pessoa)
# del(pessoa) apaga a tupla da memoria 