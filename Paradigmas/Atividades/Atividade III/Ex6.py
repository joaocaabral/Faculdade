
# map(funcao, sequencia)
# a funcao sera aplicada em casa elemento da sequencia
# Usando map com cálculo lambda para calcular o quadrado de cada número em uma lista

numeros = [1, 2, 3, 4, 5]
quadrados = map(lambda x: x ** 2, numeros)

quadrados_lista = list(quadrados)

print(quadrados_lista)  # Saída: [1, 4, 9, 16, 25]
