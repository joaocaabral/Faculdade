class Autor:
    def __init__(self, codigo: int, nome: str):
        self._codigo = codigo
        self._nome = nome
    
    @property
    def codigo(self):
        return self._codigo
    
    @codigo.setter
    def codigo(self, codigo: int):
        self._codigo = codigo
    
    @property
    def nome(self):
        return self._nome

    @nome.setter
    def nome(self, nome: str):
        self._nome = nome
