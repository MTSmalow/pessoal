n1 = int(input("digite o primeiro numero: "))
n2 = int(input("digite o segundo numero: "))
n3 = int(input("digite o terceiro numero: "))
if n1 > n2 and n1>n3:
    ma = n1
elif n2 > n1 and n2 > n3:
    ma=n2
else:
    ma = n3

if n1 < n2 and n1 < n3:
    me = n1
elif n2 < n1 and n2 < n3:
    me = n2
else:
    me = n3

print("o menor numero é o {} e o maior é {}".format(me,ma))