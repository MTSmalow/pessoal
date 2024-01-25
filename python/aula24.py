import math
num = float(input("digite um amgulo: "))
r = math.radians(num)
c = math.cos(num)
s = math.sin(num)
t = math.tan(num)
print("o conseno do angulo {}° e igual a {}".format(num,c))
print("o seno do angulo {}° e igual a {}".format(num,s))
print("a tangente do angulo {}° e igual a {}".format(num,t))