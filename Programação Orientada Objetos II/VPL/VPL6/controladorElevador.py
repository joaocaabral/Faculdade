from abstractControladorElevador import AbstractControladorElevador
from comandoInvalidoException import ComandoInvalidoException
from elevador import Elevador

class ControladorElevador(AbstractControladorElevador):
    def __init__(self):
        pass

    def subir(self):
        return self.__elevador.subir()
    
    def descer(self):
        return self.__elevador.descer()
    
    def entraPessoa(self):
        return self.__elevador.entraPessoa()
    
    def saiPessoa(self):
        return self.__elevador.saiPessoa()
        
    @property
    def elevador(self):
        return self.__elevador
    
    def inicializarElevador(self, andarAtual: int, totalAndaresPredio: int, capacidade: int, totalPessoas: int):
        atributoInvalido =(
                        type(andarAtual) != int or
                        type(totalAndaresPredio) != int or 
                        type(capacidade) != int or 
                        type(totalPessoas) != int
                        )
        
        if atributoInvalido:
            raise ComandoInvalidoException()
        
        valorNegativo =(
                    min(andarAtual, totalAndaresPredio, capacidade, totalPessoas) < 0
                    )           
    
        andarAtualMaior =(
                        andarAtual >= totalAndaresPredio
                        )
    
        totalPessoasMaior =(
                        totalPessoas > capacidade
                        )
        
        if valorNegativo or andarAtualMaior or totalPessoasMaior:
            raise ComandoInvalidoException()
        else:
            self.__elevador = Elevador(andarAtual, totalAndaresPredio, capacidade, totalPessoas)
            
            
            