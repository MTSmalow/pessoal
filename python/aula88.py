v = []
v1 = []
v2 = []
m = vz = n = 0
print("digite os numeros que serao comparados")
print('caso seja digitado o valor -1 o programa sera encerrado')
while True:
    m = (int(input('digite um valor para a posiçao : '))) 
    
    if m == -1:
        break
    else:
        v.append(m)
        n +=1
    for cont in range(1):
        if v[vz] % 2 == 0:
            v2.append(v[vz])
            vz += 1

        else:
            v1.append(v[vz])
            vz += 1
            
print(f'os valores digitados sao {v}')
print(f'os numero pares sao {v2}')
print(f'os numeros impares sao {v1}')
