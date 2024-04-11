from abc import ABC, abstractmethod


class Imposto(ABC):
    def __init__(self, aliquota, incidencia_imposto):
        self.__aliquota = aliquota
        self.__incidencia_imposto = incidencia_imposto

    '''
    Operacao abstrata que ira calcular a aliquota
    Cada classe que ira estender Imposto devera implementar o calculo de acordo
    com a sua regra
    '''

    @abstractmethod
    def calcula_aliquota(self) -> float:
        pass

    @property
    def aliquota(self):
        return self.__aliquota

    @property
    def incidencia_imposto(self):
        return self.__incidencia_imposto
