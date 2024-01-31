n = 1
p = i = 0
while n != 0:
    n = int(input("digite uum valor"))
    if n != 0:
        if n % 2 ==0:
            p += 1
        else:
            i += 1
print("voce digitou {} numeros pares e {} numeros impares".format(p,i))