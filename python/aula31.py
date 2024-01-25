nc = str(input("digite o nome de uma cidade"))
rs = nc.lower().find("santo")
if rs == 0:
    print("o nome começa com santo")
else:
    print("o nome nao começa com santo")