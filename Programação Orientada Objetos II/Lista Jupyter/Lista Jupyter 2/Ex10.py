vetor1 = []
vetor2 = []
vetor3 = []

print("Digite 10 números para o vetor 1:")
for i in range(10):
    num = int(input(f"Número {i+1}: "))
    vetor1.append(num)

print("Digite 10 números para o vetor 2:")
for i in range(5):
    num = int(input(f"Número {i+1}: "))
    vetor2.append(num)

for i in range(len(vetor1)):
    vetor3.extend([vetor1[i], vetor2[i]])

print(f"O vetor resultado da intercalação dos dois é: {vetor3}")