print("Digite 5 números:")
vetor = []
for i in range(5):
    num = int(input(f"Número {i+1}: "))
    vetor.append(num)
vetor_soma = sum(vetor)
vetor_mult = 1
for i in range(len(vetor)):
    vetor_mult *= vetor[i]

print(f"A soma dos números do vetor é: {vetor_soma}")
print(f"O produto dos números do vetor é: {vetor_mult}")
print(f"Os números do vetor são: {vetor}")