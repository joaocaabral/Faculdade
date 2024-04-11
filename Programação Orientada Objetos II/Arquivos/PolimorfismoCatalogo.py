from abc import ABC, abstractmethod

class Transporte(ABC):
    def __init__(self, nome: str, altura: float, comprimento: float, carga: float, velocidade: float):

        self.__nome = nome
        self.__altura = altura
        self.__comprimento = comprimento
        self.__carga = carga
        self.__velocidade = velocidade
    

    @property
    def nome(self):
        return self.__nome
    
    @property
    def altura(self):
        return self.__altura
    
    @property
    def comprimento(self):
        return self.__comprimento
    
    @property
    def carga(self):
        return self.__carga
    
    @property
    def velocidade(self):
        return self.__velocidade
    
    


class TransporteAereo(Transporte):
    def __init__(self, nome: str, altura: float, comprimento: float, carga: float, velocidade: float, autonomia: float, envergadura: float):
        super().__init__(nome, altura, comprimento, carga, velocidade)
        self.__autonomia = autonomia
        self.__envergadura = envergadura

    @property
    def autonomia(self):
        return self.__autonomia
    
    @property
    def envergadura(self):
        return self.__envergadura


class TransporteTerrestre(Transporte):
    def __init__(self, nome: str, altura: float, comprimento: float, carga: float, velocidade: float, motor: str, rodas: str):
        super().__init__(nome, altura, comprimento, carga, velocidade)
        self.__motor = motor
        self.__rodas = rodas

    @property
    def motor(self):
        return self.__motor
    
    @property
    def rodas(self):
        return self.__rodas
    


class TransporteAquatico(Transporte):
    def __init__(self, nome: str, altura: float, comprimento: float, carga: float, velocidade: float, boca: float, calado: float):
        super().__init__(nome, altura, comprimento, carga, velocidade)
        self.__boca = boca
        self.__calado = calado

    @property
    def boca(self):
        return self.__boca
    
    @property
    def calado(self):
        return self.__calado
    

class Catalogo:
    
    def __init__(self):
        self.__veiculos = []
        
    def insercao(self, veiculo):
        if isinstance(veiculo, Transporte):
            self.__veiculos.append(veiculo)
        
    def apresentar(self):
        for veiculo in self.__veiculos:
            print(f"Nome: {veiculo.nome}. Altura: {veiculo.altura} m. Comprimento: {veiculo.comprimento} m. Carga: {veiculo.carga} Toneladas. Velocidade: {veiculo.velocidade} km/h")
            
            if isinstance(veiculo, TransporteAereo):
                print(f"Autonomia: {veiculo.autonomia} km")
                print(f"Envergadura: {veiculo.envergadura} m")
            
            elif isinstance(veiculo, TransporteTerrestre):
                print(f"Motor: {veiculo.motor}")
                print(f"Rodas: {veiculo.rodas}")
            
            elif isinstance(veiculo, TransporteAquatico):
                print(f"Boca: {veiculo.boca} m")
                print(f"Calado: {veiculo.calado} m")

            print()

catalogo = Catalogo()

aviao = TransporteAereo("Avião", 18.8, 68.5, 292, 1400, 19000, 45)
carro = TransporteTerrestre("Carro", 1.85, 1.20, 5.50, 390, 6.6, "Michelin")
submarino = TransporteAquatico("Submarino", 18.5, 86.5, 56000, 180, 4, 9)

catalogo.insercao(aviao)
catalogo.insercao(carro)
catalogo.insercao(submarino)

catalogo.apresentar()