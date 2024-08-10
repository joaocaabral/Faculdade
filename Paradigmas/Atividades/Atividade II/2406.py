class TipoNo:
    def __init__(self, caractere):
        self.caractere = caractere
        self.proximo = None

class TipoPilha:
    def __init__(self):
        self.topo = None

def pop(pilha):
    if pilha.topo:
        auxiliar = pilha.topo
        pilha.topo = auxiliar.proximo
        del auxiliar

def top(pilha):
    if pilha.topo:
        return pilha.topo.caractere

def stack():
    return TipoPilha()

def empty(pilha):
    return not pilha.topo

def push(pilha, caractere):
    auxiliar = TipoNo(caractere)
    auxiliar.proximo = pilha.topo
    pilha.topo = auxiliar

def main():
    n = int(input())
    caso = 0
    while n > 0:
        n -= 1
        caso += 1
        string = input()
        flag = True
        pilha = stack()
        for caractere in string:
            if caractere in "{[(":
                push(pilha, caractere)
            else:
                if empty(pilha):
                    flag = False
                    break
                if (caractere == '}' and top(pilha) == '{') or \
                   (caractere == ']' and top(pilha) == '[') or \
                   (caractere == ')' and top(pilha) == '('):
                    pop(pilha)
                else:
                    flag = False
                    break
        if not empty(pilha):
            flag = False
        print("S" if flag else "N")

if __name__ == "__main__":
    main()
