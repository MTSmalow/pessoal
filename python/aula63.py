ma = 0
me = 10000000
for c in range(0,5):
    p = float(input("digite o peso de uma pessoa: "))
    if p > ma:
        ma = p
    elif p < me:
        me = p
print("o maior pesso é {:.1f}Kg \no menor peso é {:.1f}Kg".format(ma,me))