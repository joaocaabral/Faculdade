import random

class CampoMinado:
    def __init__(self, tam, num_minas):
        self.tam = tam
        self.num_minas = num_minas
        self.grid = [[' ' for _ in range(tam)] for _ in range(tam)]
        self.posicao_minas = []
        self.gerar_minas()

    def gerar_minas(self):
        self.posicao_minas = random.sample(range(self.tam ** 2), self.num_minas)

    def jogar(self):
        print("Bem vindo ao Rio d... Campo Minado :D")
        print(f"Tem umas {self.num_minas} minas no grid {self.tam} por {self.tam}")
        print("Coloque as coordenadas do seu chute assim: 'linha,coluna'")

        while True:
            self.print_grid()
            guess = input("Vamo aspira:")
            lin, col = map(int, guess.split(','))
            if self.checar_mina(lin, col):
                print("Deu merda marreco!")
                self.print_grid(minas=True)
                break
            self.reveal_cell(lin, col)
            if self.vitoria():
                print("Boa zero meia!")
                self.print_grid(minas=True)
                break

    def checar_mina(self, lin, col):
        position = lin * self.tam + col
        return position in self.posicao_minas

    def reveal_cell(self, lin, col):
        if self.grid[lin][col] == ' ':
            if self.checar_mina(lin, col):
                self.grid[lin][col] = 'X'
            else:
                num_minas = self.minas_proximas(lin, col)
                self.grid[lin][col] = str(num_minas)

    def minas_proximas(self, lin, col):
        count = 0
        for i in range(max(0, lin-1), min(self.tam, lin+2)):
            for j in range(max(0, col-1), min(self.tam, col+2)):
                if self.checar_mina(i, j):
                    count += 1
        return count

    def vitoria(self):
        for lin in range(self.tam):
            for col in range(self.tam):
                if self.grid[lin][col] == ' ' and not self.checar_mina(lin, col):
                    return False
        return True

    def print_grid(self, minas=False):
        print('   ' + ' '.join(str(i) for i in range(self.tam)))
        print('  +' + '---+' * self.tam)
        for lin in range(self.tam):
            print(f'{lin} |' + ' '.join(self.grid[lin][col] if minas or not self.checar_mina(lin, col) else ' ' for col in range(self.tam)) + ' |')
        print('  +' + '---+' * self.tam)

game = CampoMinado(tam=10, num_minas=10)
game.jogar()
