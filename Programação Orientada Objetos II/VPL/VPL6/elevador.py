from abstractElevador import AbstractElevador
from elevadorCheioException import ElevadorCheioException
from elevadorJahNoTerreoException import ElevadorJahNoTerreoException
from elevadorJahNoUltimoAndarException import ElevadorJahNoUltimoAndarException
from elevadorJahVazioException import ElevadorJahVazioException


class Elevador(AbstractElevador):
    def __init__(self, andarAtual, totalAndaresPredio, capacidade, totalPessoas):
        self.__andarAtual = andarAtual
        self.__totalAndaresPredio = totalAndaresPredio
        self.__capacidade = capacidade
        self.__totalPessoas = totalPessoas


    def descer(self):
        if self.__andarAtual == 0:
            raise ElevadorJahNoTerreoException()
        else:
            self.__andarAtual -= 1
            return('Elevador desceu')

    def entraPessoa(self):
        if self.__totalPessoas == self.__capacidade:
            raise ElevadorCheioException()
        else:
            self.__totalPessoas += 1
            return('Pessoa entrou')

    def saiPessoa(self):
        if self.__totalPessoas == 0:
            raise ElevadorJahVazioException()
        else:
            self.__totalPessoas -= 1
            return('Pessoa saiu')

    def subir(self):
        if self.__andarAtual == self.__totalAndaresPredio - 1:
            raise ElevadorJahNoUltimoAndarException()
        else: 
            self.__andarAtual += 1
           
    
    @property
    def capacidade(self):
        return self.__capacidade
    
    @property
    def totalPessoas(self):
        return self.__totalPessoas
    
    @property
    def totalAndaresPredio(self):
        return self.__totalAndaresPredio
    
    @property
    def andarAtual(self):
        return self.__andarAtual
    
    @totalAndaresPredio.setter
    def totalAndaresPredio(self, totalAndaresPredio):
        self.__totalAndaresPredio = totalAndaresPredio
        