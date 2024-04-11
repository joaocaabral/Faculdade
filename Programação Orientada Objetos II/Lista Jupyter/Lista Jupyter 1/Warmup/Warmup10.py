from fractions import Fraction

class Fracao:
    def __init__(self, numerator: int, denominator: int):
        self.__numerator = numerator
        self.__denominator = denominator

    @property
    def numerator(self):
        return self.__numerator

    @numerator.setter
    def numerator(self, new: int):
        self.__numerator = new

    @property
    def denominator(self):
        return self.__denominator

    @denominator.setter
    def denominator(self, new: int):
        self.__denominator = new

    
    #a)
    def sum(self, other):
        sumn, sumd = (self.__numerator   * other.denominator +
                        self.__denominator * other.numerator,
                        self.__denominator * other.denominator)
        return "%d/%d" %(sumn, sumd)

    def subtraction(self, other):
        subn, subd =  (self.__numerator   * other.denominator -
                       self.__denominator * other.numerator,
                       self.__denominator * other.denominator)
        return "%d/%d" %(subn, subd)

    def multiplication(self, other):
        multn, multd =  (self.__numerator * other.numerator, 
                        self.__denominator * other.denominator)
        return "%d/%d" %(multn, multd)

    def division(self, other):
        divn, divd =  (self.__numerator * other.denominator, 
                        self.__denominator * other.numerator)
        return "%d/%d" %(divn, divd)
    
    #b)
    def __str__(self):
        return "%d/%d" %(self.__numerator, self.__denominator)

    #c)
    def reverse(self):
        self.__numerator, self.__denominator = self.__denominator, self.__numerator

    #d)
    def real_value(self):
        return self.__numerator / self.__denominator

    #e)
    @staticmethod
    def create_fraction(value):
        value = str(value)
        return Fraction(value)


f1 = Fracao(2, 7)
f2 = Fracao(5, 2)

#a)
print(f"Soma: {f1} + {f2} = {f1.sum(f2)}")
print(f"Substração: {f1} - {f2} = {f1.subtraction(f2)}")
print(f"Multiplicação: {f1} * {f2} = {f1.multiplication(f2)}")
print(f"Divisão: {f1} / {f2} = {f1.division(f2)}")
print()

#b)
print(f"A fração é {f1}")
print(f"A fração é {f2}")
print()

#c)
f1.reverse()
print(f"A fração é {f1}")
f2.reverse()
print(f"A fração é {f2}")
print()

#d)
print(f"O valor real de {f1} é {f1.real_value()}")
print(f"O valor real de {f2} é {f2.real_value()}")
print()

#e)
n = 1.82
print(f"O valor {n} como fração é {Fracao.create_fraction(n)}")