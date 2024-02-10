l = []
p = 0
c = 0
l.append(str(input('Digite uma expressao matematica com parenteses: ')))
pl = len(l[0])  
while c < pl: 
    if l[0][c] == '(':
        p += 1
    elif l[0][c] == ')':
        p -= 1
        if p < 0:  
            break
    c += 1


if p == 0:
    print('A expressao é valida')
else:
    print('A expressao nao é valida')
