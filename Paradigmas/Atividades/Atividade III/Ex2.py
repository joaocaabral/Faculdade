verificar_aprovacao = lambda a, b, c: "Aprovado" if (a + b + c) / 3 >= 6 else "Reprovado"

a, b, c = map(float, input("Digite as três notas: ").split())

resultado = verificar_aprovacao(a, b, c)
print("O aluno está", resultado)
