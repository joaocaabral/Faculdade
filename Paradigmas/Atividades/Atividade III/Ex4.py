import math

calcular_distancia_3d = lambda x1, y1, z1, x2, y2, z2: math.sqrt((x2 - x1) ** 2 + (y2 - y1) ** 2 + (z2 - z1) ** 2)

x1, y1, z1 = map(float, input("Digite as coordenadas do ponto 1 (x1 y1 z1): ").split())
x2, y2, z2 = map(float, input("Digite as coordenadas do ponto 2 (x2 y2 z2): ").split())

distancia = calcular_distancia_3d(x1, y1, z1, x2, y2, z2)
print("A distância entre os dois pontos é:", distancia)
