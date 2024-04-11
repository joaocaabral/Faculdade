from Mamifero import Mamifero
class Cachorro(Mamifero):
    def __init__(self, tamanho_passo: 3, volume_som: 3):
        self.tamanho_passo = tamanho_passo
        self.volume_som = volume_som

    def latir(self):
        return  f"MAMIFERO: PRODUZ SOM: {self.volume_som} SOM: AU"
    
    def produzir_som(self):
        pass
