from datetime import date
ano = date.today().year
an = int(input("qual e seu ano de nacimento? "))
i = ano - an
if i <= 9:
    print("voce esta na categoria mirin de natação")
elif i <= 14:
    print("voce esta na categoria infantil de natação")
elif i <= 19:
    print("voce esta na categoria junior de natação")
elif i <= 20:
    print("voce esta na categoria senior de natação")
elif i >20:
    print("voce esta na categoria master de natação")