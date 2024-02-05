ws = o = un = l = net = mac = v = vt = m =0
mv = ''
print('por favor digite um dos numero para escolher o melhor Sistema Operacional para uso em servidores')
print('1- Windows Server, 2- Unix, 3- Linux, 4- Netware, 5- Mac OS, 6- Outro, 0 - para parar o programa')
while True:
    v = int(input("digite seu voto: "))
    if v == 1:
        ws += 1
        vt += 1
        if ws > m:
            mv = 'Windows Server'
            m= ws

    elif v==2:
        un += 1
        vt += 1
        if un > m:
            mv = 'Unix'
            m = un

    elif v == 3:
        l += 1
        vt += 1
        if l > m:
            mv = 'Linux'
            m = l

    elif v == 4:
        net += 1
        vt += 1
        if net > m:
            mv = 'Netware'
            m = net

    elif v == 5:
        mac +=1
        vt += 1
        if mac > m:
            mv = 'Mac OS'
            m = mac

    elif v == 6:
        o += 1
        vt += 1
        if o > m:
            mv = 'Outro'
            m = o

    elif v== 0:
        break
    else:
        print('erro na digitação,por favor digite novamente um dos numeros de 0 a 6 ', end ='')

print(f'Windows Server {ws} {((ws/vt)*100):.1f}% Unix {un} {((un/vt)*100):.1f}% Linux {l} {((l/vt)*100):.1f}% ')
print(f'Netware {net} {((net/vt)*100):.1f} Mac OS {mac} {((mac/vt)*100):.1f}% Outro {o} {((o/vt)*100):.1f}%')
print(f'total: {vt}')
print(f'O Sistema Operacional mais votado foi o {mv} , com {m} votos, correspondendo a {((m/vt)*100):.1f}% dos votos.')

# exercicio:
#Uma empresa de pesquisas precisa tabular os resultados da seguinte enquete feita a um grande quantidade de organizações: 
#"Qual o melhor Sistema Operacional para uso em servidores?"

#As possíveis respostas são:

#1- Windows Server 2- Unix 3- Linux 4- Netware 5- Mac OS 6- Outro

#Você foi contratado para desenvolver um programa que leia o resultado da enquete e informe ao final o resultado da mesma.
#O programa deverá ler os valores até ser informado o valor 0, que encerra a entrada dos dados. 
#Não deverão ser aceitos valores além dos válidos para o programa (0 a 6).
#Após os dados terem sido completamente informados, o programa deverá calcular a percentual de cada um dos concorrentes e informar o 
#vencedor da enquete. O formato da saída foi dado pela empresa, e é o seguinte:

#Sistema Operacional Votos %
#Total
#o Sistema Operacional mais votado foi o , com  votos, correspondendo a % dos votos.