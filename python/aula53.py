import random

j = str(input("Vamos jogar jokenpô, digite qual você vai querer jogar: pedra, papel ou tesoura. "))
pc = ["pedra", "papel", "tesoura"]
es = random.choice(pc)

print(f"O computador escolheu: {es}")

if j == es:
    print("Empate")
elif (j == "pedra" and es == "tesoura") or (j == "papel" and es == "pedra") or (j == "tesoura" and es == "papel"):
    print("Você ganhou")
else:
    print("Você perdeu")