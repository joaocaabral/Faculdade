def picos(pontos, soma):
    if len(pontos) > 3:
        r1, r2 = pontos[1] - pontos[0], pontos[2] - pontos[1]
        if (r1 > 0 and r2 < 0) or (r1 < 0 and r2 > 0):
            return picos(pontos[1:], soma + 1)
        else:
            return picos(pontos[1:], soma)
    else:
        return soma

while True:
    h = list(map(int, input().split()))
    n = h[0]  # Primeiro elemento indica o tamanho da lista de pontos
    if n == 0:  # Verifica se o tamanho é 0, se sim, sai do loop
        break
    if len(h) >= n + 1:  # Verifica se a entrada tem o tamanho correto
        a = h[-2:] + h[1:]  # Ignora o primeiro elemento (tamanho) e pega os dois últimos
        p = picos(a, 0)
        print(p)
    else:
        print(0)  # Se a entrada não tem o tamanho correto, imprime 0