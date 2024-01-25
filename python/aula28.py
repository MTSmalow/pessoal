frase = "Lorem ipsum dolor sit amet consectetur adipisicing elit"
print(frase[9]) # mostra apenas a letra que possui o indice 9
print(frase[8:10]) # mostra apenas as letras dos indices 8 ao 9, ela nao pega o 10 por ser o ultimo indice 
print(frase[9:21:2]) # msotra as letras do indice nove ao vinte um pulando de dois em dois
print(frase[:5]) # mostra as letras do indice 0 ao 4, nao pegando o ultimo(5)
print(frase[15:]) # mostra do indice 15 ate o final da string
print(frase[9::3]) # mostra do indice 9 ate o final pulando de tres em tres

len(frase) # mostra o cumprimentro da frase
frase.count('o') # conta quantas vezes aparece a letra 'o' minusculo na string
frase.count('o',0,13) # conta qunatos 'o' minusculos tem do indice 0 ao 12
frase.find('el') # indica onde começa o 'el' na string
'lorem' in frase # retorna um valor true ou false se a palavra estiver na string

frase.replace('lorem','loop') # troca a palavra da string por outra
frase.upper() # coloca a frase em maiusculo 
frase.lower() # coloca a frase em minusculo
frase.capitalize() # coloca todos os caracteres para minusculos e deixa apenas o primeiro maiusculo
frase.title() #faz que a primeira letra de cada palavra fique em maiusculo
frase.strip() # remove os espacos do comeco e do fim da string
frase.rstrip() # remove somente os espaços do final da string
frase.lstrip() # remove somente os espaços do comeco da string

frase.split() # divide as palavars pelos espacos e os colocam em listas

'-'.join(frase) # junta as palavras novamente com a separação de '-'