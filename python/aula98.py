c = 1
r = 0
at = int(input('digite o termo inicial da PA: '))
r1 = str(input('voce sabe qual e a razao da PA?[S/N] '))
if r1 in 'N n nao ':
    at2 = int(input('digite o segundo termo  da PA: '))
    r = at - at2
elif r1 in 'S s sim':
    r = int(input('digite a razao da PA: '))
nt = int(input('digite a posicao do termo que quer descobrir da PA: '))
r2 = str(input('voce quer ver todos os numeros ate o termo desejado?[S/N]'))
if r2 in 'S s sim':
    while c != nt:
        if c == 1:
            print(f'{c}°termo:{at}')
            c += 1
        else:
            print(f'{c}°termo:{at+r}')
            c+=1
elif r2 in 'N n nao':
    while c != nt:
        at = at + r
        c += 1
    print(f'{c}°termo:{at}')