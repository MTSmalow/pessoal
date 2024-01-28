from datetime import date
ano = date.today().year
an = int(input("qual e seu ano de nacimento? "))
alis = ano - an
if alis < 18:
    print("voce ainda vai se alistar ao serviço militar")
    print("voce deve se alistar em {} anos".format((18-alis)))
elif alis > 18:
    print("voce ja passou do tempo de se alistar")
    print("a passou {} anos do seu tempo de alistamento".format((alis-18)))
elif alis == 18:
    print("esta no tempo de voce se alistar ao serviço militar")