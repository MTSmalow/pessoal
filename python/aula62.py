from datetime import date
data = date.today().year
mi = 0
ainmi = 0
for c in range(0,7):
    anp = int(input("digite o ano de nacimento: "))
    i = anp - data
    if i >= 18:
        mi = mi + 1
    elif i < 18:
        ainmi = ainmi + 1
print("{} pessoas ainda nao atingiram a maior idade \n{} pessoas ja atingiram a maioridade".format(ainmi,mi))