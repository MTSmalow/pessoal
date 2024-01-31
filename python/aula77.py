vst = vs = int(input("digite o valor(inteiro) que queira sacar: R$"))
c50 = 0
c20 = 0
c10 = 0
c1 = 0
while vs >= 50:
    vs = vs - 50
    c50 += 1
while vs >= 20:
    vs = vs - 20
    c20 += 1
while vs >=  10:
    vs = vs - 10
    c10 += 1
while vs >=  1:
    vs = vs - 1
    c1 += 1
print(f'para sacar o valor de R${vst},voce recebera:')

if c50 != 0:
   print(f'{c50} notas de R$50') 

if c20 != 0:
   print(f'{c20} notas de R$20') 

if c10 != 0:
   print(f'{c10} notas de R$10') 

if c1 != 0:
   print(f'{c1} notas de R$1') 