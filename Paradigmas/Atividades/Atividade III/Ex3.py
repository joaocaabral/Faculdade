import math

resolver_equacao_segundo_grau = lambda a, b, c: (
    (   (-b + math.sqrt(b ** 2 - 4 * a * c)) / (2 * a),
        (-b - math.sqrt(b ** 2 - 4 * a * c)) / (2 * a)
    ) if b ** 2 - 4 * a * c >= 0 else "Raízes complexas"
)

a, b, c = map(float, input("Digite os coeficientes a, b e c respectivamente: ").split())

resultado = resolver_equacao_segundo_grau(a, b, c)
print("As raízes da equação são:", resultado)
