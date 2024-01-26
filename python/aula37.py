km = int(input("a quantos km voce estava? "))
if km > 80:
    kma = km-80
    m = kma*7
    print("voce tera que pagar uma multa de R${:.1f}".format(m))
else:
    print("voce esta dentro do limite de velocidade")