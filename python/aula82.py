t = (int(input("digite um numero: ")),
int(input("digite um numero: ")),
int(input("digite um numero: ")),
int(input("digite um numero: ")),
int(input("digite um numero: ")))

print(f"voce digitou os valores {t}")

if t.count(9) == 0:
    print("o numero 9 nao foi digitado")
else:  
    print(f'apareceran {t.count(9)} vezes o numero 9')

if t.index(3) == (-1):
    print("o numero  nao foi digitado")
else:
    print(f'a posicao do primeiro 3 digitado é {t.index(3)+1}')
print('os valores pares sao ', end='')
for n in t:
        if n % 2 == 0:
            print(n, end=' ')