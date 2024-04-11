print("Digite 10 caracteres para um vetor:")
vetor = []
for i in range(10):
    car = input(f"Caractere {i+1}: ")
    vetor.append(car)

vogais = ['a', 'e', 'i', 'o', 'u']
consoantes = []

for i in range (len(vetor)):
    if vetor[i].lower() not in vogais:
        consoantes.append(vetor[i])

print(f"As consoantes escritas são: {consoantes}")