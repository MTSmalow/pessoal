n1 = int(input("digite o tamanho da primeira reta: "))
n2 = int(input("digite o tamanho do segunda reta: "))
n3 = int(input("digite o tamanho do terceira reta: "))
if (n1+n2)>n3 or (n2+n3)>n1 or (n1+n3)>n2:
    print("elas podem formar um triangulo")
else:
    print("elas nao podem formar um triangulo")