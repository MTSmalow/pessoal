v = []
m = 0
print("digite os numeros que serao comparados")
print('caso seja digitado o valor -1 o programa sera encerrado')
while True:
    m = (int(input('digite um valor para a posiçao : '))) 
    if m == -1:
        break
    elif m not in v:
        v.append(m)
v.sort()
print(f'os valores digitados sao {v}')
