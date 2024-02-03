import random
pcn = random.randint(0,100)
t = 0
r = 1
p = 0
print("vamos jogar um jogo de adivinhação, voce tera 5 tentativas para acertar")
print('se acertar de primeira ganha 50p se acertar na ultima ganha 10 e se nao acertar 0')
print('o jogo tera 5 rodadas todas com numeros diferentes')
while True:
    if r <= 5:
        print(f'rodada:{r}/5')
        n1 = int(input('digite um numero inteiro de 0 a 10: '))
        if n1 == pcn:
            print("voce acertou")
            r += 1
            if t == 0:
                p += 100
            elif t == 1:
                p += 80
            elif t == 2:
                p += 60
            elif t == 3:
                p += 40
            elif t == 4:
                p += 20
            elif t == 5:
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

#exercicio:
# Desenvolva um jogo de acerte o número, onde o computador escolhe um número inteiro aleatório de 0 a 10, e o usuário tem 5 tentativas
# para adivinhar o número
# OBS.: O design da tela pode ser implementado livremente
# (PLUS): Implemente um sistema de pontuação com o seguinte comportamento: se o usuário adivinhar o número na primeira tentativa,
# receberá a pontuação máxima (ex. 100 pontos); se o usuário adivinhar o número na última tentativa,
# receberá a pontuação mínima (ex. 10 pontos); se o usuário não acertar o número, não receberá nenhum ponto.
# (PLUS): Implemente um controle de erros. Caso o jogador digite um número fora da faixa permitida ou caracteres não numéricos,
# o sistema deve notificar o jogador e solicitar o input correto.
# (PLUS): Implemente a opção de o usuário iniciar uma nova partida. Ao finalizar uma rodada, após o resultado final, o jogo deve perguntar
# se o jogador quer iniciar uma nova partida e, em caso negativo, encerrar a aplicação.