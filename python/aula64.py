mai = 0
mdi = 0
mnv = 0
for c in range(0,4):
    n = str(input("digite um nome: "))
    i = int(input("digite a idade: "))
    s = str(input("digite o sexo(masculino ou feminino): "))
    mdi = mdi + i
    if s in "masculino Masculino" and mai < i:
        npv = n
    elif s in "feminino Feminino" and i < 20:
        mnv = mnv + 1
mig = mdi/4
print("a media de idade do grupo é {} anos\n o home mais velho é o {}\nno grupo {} mulhers tem menos de 20 anos".format(mig,npv,mnv))
