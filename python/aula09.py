nome = input("qual e seu nome? ")
print('prazer em te conhecer {:20}'.format(nome)) # coloca o nome dentro de 20 espaços
print('prazer em te conhecer {:>20}'.format(nome)) # coloca o nome dentro de 20 espaços alinhado a direita
print('prazer em te conhecer {:<20}'.format(nome)) # coloca o nome dentro de 20 espaços alinhado a esquerda
print('prazer em te conhecer {:^20}'.format(nome)) # coloca o nome dentro de 20 espaços alinhado ao meio
print('prazer em te conhecer {:=^20}'.format(nome)) # coloca o nome dentro de 20 espaços alinhado ao meio colocando "=" nos espaçoa vazios

n1 = int(input('um valor: '))
n2 = int(input('outro valor: '))
print('a soma vale {}'.format(n1+n2), end='')# end='' faz que a linha nao seja quebrada, \n faz que quebre a linha
print("o valor da divisao e {:.3f}".format(n1/n2))# permite que apos o ponto so possua 3 casas decimais
