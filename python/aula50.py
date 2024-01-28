n1 = float(input("digite a primeira medida do triangulo: "))
n2= float(input("digite a segunda medida: "))
n3 = float(input("digite a terceira medida: "))
if n1 == n2 == n3:
    print("o triangulo sera equilatero, todos os lados iguais")
elif n1 == n2 or n1 == n3 or n3 == n2:
    print("o trianfulo sera isoscele, dois dos lados sao iguais")
elif n1 != n2 != n3:
    print("o triangulo sera escaleno, todos os lados sao diferentes")