nome = input("Digite o nome do aluno: ")
print("Digite as 4 notas do aluno:")
vetor = []
for i in range(4):
    num = int(input(f"Nota {i+1}: "))
    vetor.append(num)
vetor_soma = sum(vetor)
media = vetor_soma / len(vetor)
print(f"A média do {nome} é {media}")