encontrar_maior = lambda a, b, c: max(a, b, c)

a, b, c = map(float, input("Digite três valores numéricos (a, b, c): ").split())

maior_valor = encontrar_maior(a, b, c)
print("O maior valor entre", a, ",", b, "e", c, "é:", maior_valor)
