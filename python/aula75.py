mi = 0
hc = 0
mni = 0
while True:
    i = int(input("digite a idade de uma pessoa: "))
    s = str(input("digite o genero da pessoa[M/F]: "))
    if i > 18:
        mi = mi + 1
    if s == "M":
        hc = hc + 1
    if s == "F" and i < 20:
        mni = mni +1
    r = str(input("voce gostaria de continuar?[S/N] "))
    if r == "N":
        break
print(f"o numero de pessoas com mais de 18 anos é {mi}\no numero de homens cadastrados é {hc}\nmulheres com menos de 20 anos sao {mni} das mulheres cadastradas")