v = [0]
m = 0
vl = 1
vz = 0

print("Digite os números que serão comparados.")
print('Caso seja digitado o valor -1, o programa será encerrado.')

while True:
    m = int(input('Digite um valor para a posição: '))

    if m == -1:
        break
    else:
        while True:
            if vz == len(v) or v[vz] >= m:
                v.insert(vz, m)
                print(f'Adicionado à posição {vz} da lista...')
                vz = 0
                break
            else:
                vz += 1

print(f'Os valores digitados em ordem crescente são: {v}')
