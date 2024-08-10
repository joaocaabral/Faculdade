import heapq

class TipoPilha:
    def __init__(self):
        self.pilha = []
        self.removidos = set()

def pop(pilha):
    while pilha.pilha and pilha.pilha[0] in pilha.removidos:
        heapq.heappop(pilha.pilha)
    if pilha.pilha:
        heapq.heappop(pilha.pilha)
    else:
        print("EMPTY")

def cria_pilha():
    return TipoPilha()

def push(pilha, numero):
    heapq.heappush(pilha.pilha, numero)

def menor_da_pilha(pilha):
    while pilha.pilha[0] in pilha.removidos:
        heapq.heappop(pilha.pilha)
    if pilha.pilha:
        return pilha.pilha[0]
    else:
        return -1

def main():
    pilha = cria_pilha()
    num_operacoes = int(input())
    while num_operacoes > 0:
        num_operacoes -= 1
        operacao = input().split()
        if operacao[0] == "PUSH":
            numero = int(operacao[1])
            push(pilha, numero)
        elif operacao[0] == "POP":
            pop(pilha)
        else:
            menor = menor_da_pilha(pilha)
            if menor == -1:
                print("EMPTY")
            else:
                print(menor)

if __name__ == "__main__":
    main()