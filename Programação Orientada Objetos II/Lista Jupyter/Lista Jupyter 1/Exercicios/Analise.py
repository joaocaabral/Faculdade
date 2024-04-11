class Analise:
    def permutacao(x, y):
        if x < y:
            return 0
        elif y == 0:
            return 1
        else:
            return x * Analise.permutacao(x-1, y-1)

    def arranjo(x, y):
        if x < y:
            return 0
        else:
            return Analise.permutacao(x, y)

    def combinacao(x, y):
        if x < y:
            return 0
        elif y == 0:
            return 1
        else:
            return Analise.combinacao(x-1, y-1) + Analise.combinacao(x-1, y)
        
x, y = list(map(int, input('Digite os valores a serem calculados: ').split()))

Rpermutacao = Analise.permutacao(x, y)
print(f"A permutação de {x, y} é {Rpermutacao}")

Rarranjo = Analise.arranjo(x, y)
print(f"A arranjo de {x, y} é {Rarranjo}")

Rcombinacao= Analise.combinacao(x, y)
print(f"A combinação de {x, y} é {Rcombinacao}")
