nex = ('zero' , 'um' , 'dois' , 'três' , 'quatro5' , 'cinco' , 'seis' , 'sete' , 'oito' , 'nove' , 'dez' , 'onze' , 'doze' , 'treze' , 'quatorze' 
       , 'quinze' , 'dezesseis' , 'dezessete' , 'dezoito' , 'dezenove' , 'vinte')
nes = -1
while True:
    nes = int(input("digite um numero de 0 a 20 que queira por extenso:"))
    if nes <= 20 and nes >= 0:
        print(f'o numero {nes}, por extenso {nex[nes]}')
        break