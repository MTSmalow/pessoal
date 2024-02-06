lista = [0,5]
lista.insert(0,1) # adiciona o 1 a lista
del lista[1] #apaga a lista
lista.pop() #apaga o ultimo elemento da lista
lista.remove(5) #remove o conteudo 5 da lista
lista.append(7) # adiciona o valor 7

if 5 in lista: # checa se tem o valor 5 na lista
    lista.remove(5) # remove o 5 da lista

valores = list(range(4,11)) #cria uma lista chamada valores que armazana os numeros de 4 a 10
valores.sort() #    oraganiza os valores dento da lista
valores.sort(reverse=True) # organiza os valores na ordem reversa

for  v in valores: 
    print(f'{v}-') # exibe os valores da lista com um '-' entre eles

for cont in range(0,5):
    valores.append(int(input('digite um valor'))) # adiciona o valor digitado pelo usuario na lista
print(max(v, key=int)) # mostra o maior valor da lista
print(min(v, key=int)) # mostra o menor valor da lista