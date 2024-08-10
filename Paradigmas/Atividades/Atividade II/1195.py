from typing import List

# Definindo o tipo Valor
Valor = int

# Função para construir a árvore a partir da lista de números
def construir_arvore(numeros: List[Valor]) -> List[List[Valor]]:
    def prefixa(i):
        if i >= len(numeros):
            return []
        return [numeros[i]] + prefixa(2 * i + 1) + prefixa(2 * i + 2)

    def infixa(i):
        if i >= len(numeros):
            return []
        return infixa(2 * i + 1) + [numeros[i]] + infixa(2 * i + 2)

    def posfixa(i):
        if i >= len(numeros):
            return []
        return posfixa(2 * i + 1) + posfixa(2 * i + 2) + [numeros[i]]

    pre_ordem = prefixa(0)
    em_ordem = infixa(0)
    pos_ordem = posfixa(0)

    return [pre_ordem, em_ordem, pos_ordem]

# Lendo o número de casos
c = int(input())
for i in range(1, c + 1):
    input()  # Descartando a entrada de texto
    numeros = list(map(int, input().split()))
    resultados = construir_arvore(numeros)
    print(f"Case {i}:")
    print(f"Pre.: {' '.join(map(str, resultados[0]))}")
    print(f"In..: {' '.join(map(str, resultados[1]))}")
    print(f"Post: {' '.join(map(str, resultados[2]))}")
    print()