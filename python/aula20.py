dia = float(input("quantos dia voce ficou com o carro: "))
km = float(input("quantos km voce percorreu com o carro"))
pdia = dia*60
pkm = km*0,15
pt = pkm + pdia
print("o total a pagar é R${:.2f}".format(pt))