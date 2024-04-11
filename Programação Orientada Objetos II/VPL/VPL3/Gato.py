from Mamifero import Mamifero

class Gato(Mamifero):

    def __init__(self, tamanho_passo: int = 2, volume_som: int = 2):
        super().__init__(tamanho_passo, volume_som)

    def miar(self):
        return f"MAMIFERO: PRODUZ SOM: {self.volume_som} SOM: MIAU"

    def produzirSom(self):
        pass