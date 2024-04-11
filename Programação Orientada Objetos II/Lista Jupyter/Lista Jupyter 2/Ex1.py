print("Digite 5 valores para um vetor:")
vetor = []
for i in range(5):
    num = float(input(f"Número {i+1}: "))
    vetor.append(num)
print(f"O vetor é: {vetor}")