vc = float(input("qual o valor de casa? "))
s = float(input("qual e seu salrio? "))
ap = float(input("em quantos ano voce vai pagar o emprestimo? "))
m = ap*12
prs = (30/100) * s
pm = vc/m
if pm > prs:
    print("voce nao pode realizar este emprestimo")
elif pm < prs:
    print("o emprestimo pode ser realizado")
    print("voce pagara R${:.2f} por mes durante {} anos para quitar este emprestimo".format(pm,ap))