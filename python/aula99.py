c = pat = int(input('digite a posicao do valor da PA: '))
r = at = int(input('digite o valor desse termo da PA: '))
pat2 = int(input('digite a posicao do sgundo valor da PA: '))
at2 = int(input('digite o segundo valor desse termo da PA: '))
pat3 = int(input('digite qual a posicao do termo que quer descobrir'))

if pat != pat2 and at != at2:
    if pat > pat2:
        n = pat - pat2
    elif pat < pat2:
        n = pat2 - pat

    if at > at2:
        n2 = at - at2
    elif at < at2:
        n2 = at2 - at
    
    n3 = n2/n
    if c > pat3:
        while c != pat3:
            r = r - n3
            c -= 1
    elif c < pat3:
        while c != pat3:
            r = r + n3
            c += 1
    print(f'o termo da posicao {pat3} e igual a {r}')
else:
    print('um dos valores e invalido')