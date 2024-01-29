v = int(input("por favor digite o valor do produto: "))
fp = str(input("qual sera a forma de pagamento ,no dinheiro ou no cartão? "))

if fp in "cartao cartão":
    vnc = int(input("em quantas vezes gostaria de fazer? "))

    if vnc == 1:
        d = (5/100)*v
        p = v-d
        print("voce devera pagar pelo produto R${:.2f}".format(p))
    elif vnc == 2:
        p = v/2
        print("voce devera pagar 2x de R${:.2f}".format(p))
    elif vnc >= 3:
        j = (20/100)*v
        p = v + j
        print("voce devera pagar {}x de R${:.2f}".format(vnc,(p/vnc)))

elif fp in "dinheiro Dinheiro a vista":
    d = (10/100)*v
    p = v-d
    print("voce devera pagar pelo produto R${:.2f}".format(p))

else:
    print("forma de pagamento invalida")