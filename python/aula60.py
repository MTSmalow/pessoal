p = int(input("primeiro termo: "))
r = int(input("razao da pa: "))
t = p
c = 1
while c <= 10:
    print("{} ->".format(t), end='')
    t += r
    c += 1
