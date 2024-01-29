f = str(input("digite uma palavra ou frase: "))
fi = f[::-1]
if f == fi:
    print("a palavra e um palindromo")
else:
    print("a palavara nao e um palindromo")