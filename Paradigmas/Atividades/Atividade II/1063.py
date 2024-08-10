while True:
    n = int(input())
    if n == 0:
        break

    entrada = input().strip().split()
    saida = input().strip().split()

    pilha = []
    i = j = 0

    resultado = ""
    while True:
        if pilha and j < n and pilha[-1] == saida[j]:
            pilha.pop()
            resultado += "R"
            j += 1
        elif i < n:
            pilha.append(entrada[i])
            resultado += "I"
            i += 1
        else:
            break

    if not pilha:
        print(resultado)
    else:
        print(resultado, "Impossible")