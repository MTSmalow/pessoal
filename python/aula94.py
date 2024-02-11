import random
l = list()
jn = 0
n = int(input('quantos jogos quer fazer? '))
while jn < n:   
    l = [random.randint(0,60),
    random.randint(0,60),
    random.randint(0,60),
    random.randint(0,60),
    random.randint(0,60)]
    print(f'{jn+1}° jogo: {l}')
    l.clear()
    jn += 1
