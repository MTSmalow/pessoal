l = list()
c = co = 1
for nc in range(0,9):
    l.append(input(f'digite o {c}° valor: '))
    c += 1
for v in l: 
    if co == 3 or co == 6:
        print(f'[ {v} ]')
        co += 1
    else:
        print(f'[ {v} ]' , end='')
        co += 1
    