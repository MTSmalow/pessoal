n = 0
qn = 0
sn = 0
me = 10000
ma = 0
while n != 1:
    n1 = int(input("digite um numero: "))
    qn = qn + 1
    sn = sn + n1

    if me > n1:
        me = n1
    elif ma < n1:
        ma = n1

    r = str(input("quer continuar digitando? "))

    if r in "Nao nao n N não NAO NÂO":
        n = 1
        print("a medeia de todos os valores é {}\no maior numero digitado é {}\no menor numero digitado é {}".format(sn/qn,ma,me))

