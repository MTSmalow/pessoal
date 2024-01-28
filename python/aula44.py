nome = str(input("qual seu nome? "))
if nome == "gustavo":
    print("que nome bonito")
elif nome == 'pedro' or nome == 'maria' or nome == 'paulo':
    print("seu nome e em popular no Brasil.")
elif nome in 'ana claudiia jessica juliana':
    print('belo nome feminino')
print("tenha um bom dia, {}!".format(nome))