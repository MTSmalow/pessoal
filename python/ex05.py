import random
pcn = random.randint(0,100)
t = 0
r = 1
p = 0
print("vamos jogar um jogo de adivinhação, voce tera 5 tentativas para acertar")
print('se acertar de primeira ganha 50p se acertar na ultima ganha 10 e se nao acertar 0')
print('o jogo tera 5 rodadas todas com numeros diferentes')
while True:
    if r < 5:
        print(f'rodada:{r}/5')
        n1 = int(input('digite um numero inteiro de 0 a 10: '))
        if n1 == pcn:
            print("voce acertou")
            r += 1
            if t == 0:
                p += 50
            elif t == 1:
                p += 40
            elif t == 2:
                p += 30
            elif t == 3:
                p += 20
            elif t == 4:
                p += 10

            print(f'vamos para a {r}º rodada')
            pcn = random.randint(0,1000)
            t = 0

        elif n1 > 10 or n1 < 0:
            print("erro sao permitido apenas numeros entre 0 e 100")

        elif n1 != pcn:
            print("voce errou")
            t += 1
            if t == 5:
                print("voce perdeu,vamos para a proxima rodada")
                pcn = random.randint(0,1000)
                r += 1
            elif t < 5:
                print(f"voce so tem mais {5-t} tentativas")
    else:
        print("fim de jogo")
        print(f"sua pontuação foi {p}p")
        rep = str(input("gostaria de jogar novamente?[Y/N]"))
        if rep == "Y":
            t = 0
            r = 1
            p = 0
        elif rep == "N":
            print("obrigado por jogar")
            break
