print("Digite 20 números:")
vetor = []
for i in range(20):
    num = int(input(f"Número {i+1}: "))
    vetor.append(num)

print(f"O vetor original é: {vetor}")

impares = []
pares = []

for i in range (len(vetor)):
    if vetor[i] % 2 == 0:
        pares.append(vetor[i])
    else:
        impares.append(vetor[i])

print(f"Os impares digitados são: {impares}")
print(f"Os pares digitados são: {pares}")