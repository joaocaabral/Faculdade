from imposto import *


'''
O calculo da Aliquota do IRPJ (percentual do imposto) leva em conta
o "desconto".
O valor de "desconto" deve ser subtraido da aliquota informada.
Por exemplo, se a aliquota informada no construtor for 10.0
e o "desconto" for 1, entao a aliquota calculada sera de 9.0
'''


class IRPJ(Imposto):
    def __init__(self, aliquota, incidencia_imposto, desconto):
        super().__init__(aliquota, incidencia_imposto)
        self.__desconto = desconto

    def calcula_aliquota(self) -> float:
        return (self.aliquota - self.__desconto)
