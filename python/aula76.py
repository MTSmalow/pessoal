tg = 0
pc = 0
pb = 1000000
s = ''
while True:
    n = str(input("digite o nome do produto: "))
    p = int(input("digite o preço do produto: "))
    tg += p
    if p > 1000:
        pc += 1
    elif pb > p:
        pb = p
        npb = n
    while r not in 'SN':
        r = str(input("deseja continuar a adicionar produtos?[S/N]")).strip().upper()[0]
    if r == "N":
        break
print(f"o total gasto é R${tg}\n{pc} sao produtos que custao mais de R$1000\n{npb} e o produto mais barato")