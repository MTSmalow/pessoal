v = [0]
vl = 1
vz = n = m = 0
print("digite os numeros que serao comparados")
print('caso seja digitado o valor -1 o programa sera encerrado')
while True:
    m = (int(input('digite um valor para a posiçao : '))) 
    if m == -1:
        break
    else:
        while True:
            if v[vz] < m:
                v.insert(vz,m)
                print(f'adicionado a posicao {vz} da lista..')
                n += 1
                vz = 0
                break
            else:
                vz += 1
print(f'os valores digitados sao {v}')
print(f'foram digitado {n} numeros')
if 5 in v:
    print('o numero 5 esta na lista')
else:
    print('o numero 5 nao foi digitado')