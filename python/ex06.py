print(" o programa calculara o abono do salrio de 20% referente ao mes de dezenbro")
print("para parar a execução do programa digite o valor 0")
s = []
abs = 0
f = 0
abt = 0
fb = 0
mab = 0
print('salarios:')
while True:
    ps = float(input())
    if ps == 0:
        break
    elif ps < 0:
        print("erro digite numeros positivos")
    else: 
        abs = (20/100)*ps
        if abs <= 100:
            abs = 100 
            fb += 1
        s.append('R$')
        s.append(ps)
        s.append(' - ')
        s.append('R$')
        s.append(abs)
        abt += abs
       
        f += 1
        if abs > mab:
            mab = abs
print(f'salario - abono: {s}')
print(f'valor gasto com pagamento do abono: R${abt}')
print(f"numero total de funcionarios processados: {f}")
print(f'numero de funcionarios ue receberam o valor minimo: {fb}')
print(f'maior valor pago como abono: R${mab}')

# exercicio:
# As Organizações Tabajara resolveram dar um abono aos seus colaboradores em reconhecimento ao bom resultado alcançado durante o ano que 
# passou. Para isto contratou você para desenvolver a aplicação que servirá como uma projeção de quanto será gasto com o pagamento deste 
# abono. Após reuniões envolvendo a diretoria executiva, a diretoria financeira e os representantes do sindicato laboral,
# chegou-se a seguinte forma de cálculo:

# Cada funcionário receberá o equivalente a 20% do seu salário bruto de dezembro;
# O piso do abono será de 100 reais, isto é, aqueles funcionários cujo salário for muito baixo recebem este valor mínimo;
# Neste momento, não se deve ter nenhuma preocupação com colaboradores com
# tempo menor de casa, descontos, impostos ou outras particularidades.
# Seu programa deverá permitir a digitação do salário de um número indefinido (desconhecido) de salários. 
# Um valor de salário igual a 0 (zero) encerra a digitação.

# Após a entrada de todos os dados o programa deverá calcular o valor do abono concedido a cada colaborador,
# de acordo com a regra definida acima. Ao final, o programa deverá apresentar: O salário de cada funcionário,
# juntamente com o valor do abono; O número total de funcionários processados; O valor total a ser gasto com o pagamento do abono;
# O número de funcionários que receberão o valor mínimo de 100 reais; O maior valor pago como abono;