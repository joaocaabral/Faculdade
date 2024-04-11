class Editora:
    def __init__(self, codigo: int, nome: str):
        self._codigo = codigo
        self._nome = nome

    # Getter e Setter para codigo
    @property
    def codigo(self):
        return self._codigo
    
    @codigo.setter
    def codigo(self, codigo: int):
        self._codigo = codigo
    
    # Getter e Setter para nome
    @property
    def nome(self):
        return self._nome

    @nome.setter
    def nome(self, nome: str):
        self._nome = nome
