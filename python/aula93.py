l = list()
c = co = 1
vtp = vtc = mas = 0

for nc in range(0, 9):
    valor = int(input(f'digite o {c}° valor: '))
    l.append(valor)
    c += 1

for v in l:
    if co % 3 == 0:
        print(f'[ {v} ]')
    else:
        print(f'[ {v} ]', end=' ')

    if v % 2 == 0:
        vtp += v

    if co in [3, 6, 9]:
        vtc += v

    if co in [4,5,6] and v > mas:
        mas = v
    co += 1
print(f'a soma de todos os valores pares é {vtp}')
print(f'a soma dos valores da terceira coluna é {vtc}')
print(f'o maior valor da segunda linha é {mas}')
