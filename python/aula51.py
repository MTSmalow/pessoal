p = float(input("digite seu peso em quilos: "))
a = float(input("digite sua altura: "))
imc = p/(a*2)
if imc < 18.5:
    print("voce esta abaixo do peso")
elif imc > 18.5 and imc < 25:
    print("voce esta no peso ideal")
elif imc >25 and imc < 30:
    print("voce esta sobrepeso")
elif imc >30 and imc < 40:
    print("voce esta obeso")
elif imc > 40:
    print("voce tem oesidade morbida")