notas_alunos = {}

while True:
    nome = input("Digite o nome do aluno (ou aperte enter para sair): ")
    if nome == "":
        break
    
    nota1 = float(input("Digite a nota 1: "))
    nota2 = float(input("Digite a nota 2: "))
    
    notas_alunos[nome] = (nota1, nota2)

def calcular_media(nome):
    notas = notas_alunos.get(nome)
    if notas:
        media = sum(notas) / len(notas)
        return media
    else:
        return None

aluno = input("De qual o aluno deseja calcular a média? ")
media = calcular_media(aluno)

if media is not None:
    print(f"A média do aluno {aluno} é {media:.2f}.")
else:
    print(f"Aluno {aluno} não encontrado.")