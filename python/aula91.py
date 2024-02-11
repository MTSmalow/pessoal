nd = 0
l = list()
lp = list()
li = list()
l.append(lp)
l.append(li)
while True:
    n = int(input('digite um valor: '))
    if n % 2 == 0:
        lp.append(n)
    else:
        li.append(n)
    r = str(input('gostaria de continuas?[Y/N]'))
    if r == 'N':
        break
lp.sort()
li.sort()
l.sort()
print(f'os numeros digitados foram {l}')
print(f'os numeros pares sao {lp}')
print(f'os numeros impares sao {li}')