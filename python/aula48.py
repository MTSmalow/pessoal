n1 = float(input("digite a nota do aluno: "))
n2= float(input("digite a segunda nota do aluno: "))
n3 = float(input("digite a terceira nota do aluno: "))
m = (n1+n2+n3)/3
if m < 5:
    print("o aluno esta reprovado")
elif m >= 5 and m <= 6.9:
    print("o aluno esta de recuperaçao")
elif m >= 7:
    print("o aluno esta aprovado")