d = list()
r = ''
ma = me = pc = 0
mal = list()
mel = list()

while True:
    d.append(str(input('Nome: ')))
    d.append(float(input('Peso: ')))
    pc += 1
    
    if ma == 0 or d[1] > ma:
        mal.clear()
        mal.append(d[0])
        ma = d[1]
    elif d[1] == ma:
        mal.append(d[0])
    
    if me == 0 or d[1] < me:
        mel.clear()
        mel.append(d[0])
        me = d[1]
    elif d[1] == me:
        mel.append(d[0])
    
    d.clear()
    r = input(str('Quer continuar? [Y/N]'))
    
    if r == 'N':
        break
    elif r != 'Y' and r != 'N':
        print('Valor invalido')

print(f'Foram cadastradas {pc} pessoas')
print(f'As pessoas mais leves com {me} kg sao {mel}')
print(f'As pessoas mais pesadas com {ma} kg sao {mal}')
