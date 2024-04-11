print("Digite 10 valores para um vetor:")
vetor = []
for i in range(10):
    num = float(input(f"Número {i+1}: "))
    vetor.append(num)
vetor.reverse()
print(f"O vetor é: {vetor}")