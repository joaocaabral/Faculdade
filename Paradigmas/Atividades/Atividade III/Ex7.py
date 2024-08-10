# filter(funcao_de_filtro, sequencia)
# funcao_de_filtro é a funcao que é aplicada a cada elemento da sequencia
# Usando filter com cálculo lambda para filtrar apenas os números pares de uma lista

numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
pares = filter(lambda x: x % 2 == 0, numeros)

pares_lista = list(pares)

print(pares_lista)  # Saída: [2, 4, 6, 8, 10]
