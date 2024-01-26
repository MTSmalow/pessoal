dkm = int(input("quantos km tem sua viagem? "))
if dkm <=200:
    p = dkm*0.50
else:
    p = dkm*0.45
    
print("voce pagara pela viagem R${:.2f}".format(p))