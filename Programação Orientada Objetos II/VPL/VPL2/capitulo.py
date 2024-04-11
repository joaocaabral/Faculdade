class Capitulo:
    def __init__(self, numero: int, titulo: str):
        self._numero = numero
        self._titulo = titulo

    # Getter e Setter de numero
    @property
    def numero(self):
        return self._numero
    
    @numero.setter
    def numero(self, numero: int):
        self._numero = numero
    
    # Getter e Setter de titulo
    @property
    def titulo(self):
        return self._titulo
    
    @titulo.setter
    def titulo(self, titulo: str):
        self._titulo = titulo
