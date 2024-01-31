n = 0
qn = 0
sn = 0
while n != 999:
    n = int(input("digite um numero: "))
    if n != 999:
        qn = qn + 1
        sn = sn + n
print("foram {} numeros digitados\na soma de todos os numeros é {}".format(qn,sn))