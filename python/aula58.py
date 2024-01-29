s = 0
for c in range(0,6):
    n = int(input("digite um numero: "))
    if (n%2) == 0:
        s = s + n
print("a soma dos valore pares é {}".format(s))