n = 0
qn = 0
sn = 0
while True:
    n = int(input("digite um numero: "))
    if n != 999:
        qn = qn + 1
        sn = sn + n
    elif n == 999:
        break
print("foram {} numeros digitados\na soma de todos os numeros é {}".format(qn,sn))