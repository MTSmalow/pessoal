n = 0 
while n != 5:
    n1 = float(input("digite o primeiro numero: "))
    n2 = float(input("digite o segundo numero: "))
    n = int(input("selecione um:\n [1]somar \n[2]multipicar \n[3]maior \n[4]novos numeros \n[5]sair do programa \n"))

    if n == 1:
        print("o valor da soma é {}".format(n1+n2))

    elif n == 2:
        print("o valor da multiplicação dos numeros é {}".format(n1*n2))

    elif n == 3:

        if n1 > n2:
            m = n1
        else:
            m = n2
        
        print("o maior numero é o {}".format(m))