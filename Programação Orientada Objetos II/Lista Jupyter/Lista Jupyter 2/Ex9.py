print("Digite 10 números:")
vetor = []
for i in range(10):
    num = int(input(f"Número {i+1}: "))
    vetor.append(num)

vetor2 = []
for i in range(len(vetor)):
    vetor2.append(vetor[i]**2)

print(f'A soma dos quadrados dos elementos é: {sum(vetor2)}')