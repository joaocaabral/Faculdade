from typing import List

# Definindo o tipo Valor
Valor = int

# Definindo o tipo abstrato No
class No:
    def valor(self) -> Valor:
        raise NotImplementedError

    def esquerda(self) -> 'No':
        raise NotImplementedError

    def direita(self) -> 'No':
        raise NotImplementedError

    def inserir(self, v: Valor) -> 'No':
        raise NotImplementedError

    def altura(self) -> int:
        raise NotImplementedError

    def pesquisar(self, v: Valor) -> bool:
        raise NotImplementedError

    def infixa(self) -> List[Valor]:
        raise NotImplementedError

    def prefixa(self) -> List[Valor]:
        raise NotImplementedError

    def posfixa(self) -> List[Valor]:
        raise NotImplementedError

# Definindo a função max
def max(a: int, b: int) -> int:
    return a if a >= b else b

# Definindo o tipo Arvore, uma subclasse de No
class Arvore(No):
    def __init__(self, valor: Valor, esquerda: No, direita: No):
        self.valor = valor
        self.esquerda = esquerda
        self.direita = direita

    def altura(self) -> int:
        return max(self.esquerda.altura(), self.direita.altura()) + 1

    def inserir(self, v: Valor) -> 'Arvore':
        if v < self.valor:
            return Arvore(self.valor, self.esquerda.inserir(v), self.direita)
        else:
            return Arvore(self.valor, self.esquerda, self.direita.inserir(v))

    def pesquisar(self, v: Valor) -> bool:
        return v == self.valor or (v < self.valor and self.esquerda.pesquisar(v)) or (v > self.valor and self.direita.pesquisar(v))

    def infixa(self) -> List[Valor]:
        return self.esquerda.infixa() + [self.valor] + self.direita.infixa()

    def prefixa(self) -> List[Valor]:
        return [self.valor] + self.esquerda.prefixa() + self.direita.prefixa()

    def posfixa(self) -> List[Valor]:
        return self.esquerda.posfixa() + self.direita.posfixa() + [self.valor]

# Definindo o tipo Folha, uma subclasse de No
class Folha(No):
    def __init__(self, valor: Valor = None):
        self.valor = valor
        self.esquerda = self
        self.direita = self

    def altura(self) -> int:
        return -1

    def inserir(self, v: Valor) -> 'Arvore':
        return Arvore(v, Folha(), Folha())

    def pesquisar(self, v: Valor) -> bool:
        return False

    def infixa(self) -> List[Valor]:
        return []

    def prefixa(self) -> List[Valor]:
        return []

    def posfixa(self) -> List[Valor]:
        return []

# Definindo o tipo TipoFila
TipoFila = No

# Definindo a classe Fila
class Fila:
    def __init__(self):
        self.entrada = []
        self.saida = []

    def inserir(self, valor: TipoFila) -> 'Fila':
        if not self.saida:
            self.saida = self.entrada[::-1]
            self.entrada = []
        self.entrada.append(valor)
        return self

    def cabeça(self) -> TipoFila:
        return self.saida[0]

    def vazia(self) -> bool:
        return not self.entrada and not self.saida

    def remover(self) -> 'Fila':
        if not self.saida:
            self.saida = self.entrada[::-1][1:]
            self.entrada = []
        else:
            self.saida = self.saida[1:]
        return self

# Criando uma fila vazia
fila_vazia = Fila()

folha = Folha()
c = int(input())
for i in range(1, c + 1):
    input()  # Descartando a entrada de texto
    num = list(map(int, input().split()))
    arvore = folha
    for b in num:
        arvore = arvore.inserir(b)
    fila = fila_vazia.inserir(arvore)
    lista = []
    while not fila.vazia():
        a = fila.cabeça()
        lista.insert(0, a.valor)
        fila = fila.remover()
        if a.esquerda != folha:
            fila = fila.inserir(a.esquerda)
        if a.direita != folha:
            fila = fila.inserir(a.direita)
    print(f"Case {i}: {' '.join(map(str, lista))}\n")
