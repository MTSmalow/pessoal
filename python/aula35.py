tempo = int(input("quantos anos tem seu carro? "))
if tempo <= 3:
    print("carro novo")
else:
    print("carro velho")

    # jeito simplificado
    print('carro novo' if tempo<=3 else 'carro velho')