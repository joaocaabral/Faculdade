medias = []
for i in range(3):
    print("Digite as 4 notas do aluno:")
    vetor = []
    for i in range(4):
        num = int(input(f"Nota {i+1}: "))
        vetor.append(num)
    vetor_soma = sum(vetor)
    media = vetor_soma / len(vetor)
    medias.append(media)

aprovados = []
for i in range (len(medias)):
    if medias[i]>=7:
        aprovados.append(medias[i])

print(f"Foram aprovados {len(aprovados)} aluno(s)")
