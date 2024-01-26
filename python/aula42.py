s = float(input("qual e seu salario"))
if s > 1250.00:
 a = s/10
 sn = a + s
else:
 a = (15/100) * s
 sn = a + s

print("seu novo salario é R${}".format(sn))