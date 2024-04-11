from abstractControladorChamados import AbstractControladorChamados
from tipoChamado import TipoChamado
from chamado import Chamado
from datetime import date as Date
from cliente import Cliente
from tecnico import Tecnico
from collections import defaultdict


class ControladorChamados(AbstractControladorChamados):

    def __init__(self):
        self.__chamados = []
        self.__tipos_chamados = []

    @property	
    def tipoChamados(self):
	    return self.__tipos_chamados

    def incluiChamado(self, data: Date, cliente: Cliente, tecnico: Tecnico, titulo: str, descricao: str, prioridade: int, tipo: TipoChamado) -> Chamado:
        if isinstance(tipo, TipoChamado) and isinstance(data, Date) and isinstance(cliente, Cliente) and isinstance(tecnico, Tecnico):
            chamado = Chamado(data, cliente, tecnico, titulo, descricao, prioridade, tipo)
            incluir = True
            for x in self.__chamados:
                if data == x.data and cliente == x.cliente and tecnico == x.tecnico and tipo == x.tipo:
                    incluir = False
                    break
            if incluir:
                self.__chamados.append(chamado)
                return chamado

    def incluiTipoChamado(self, codigo: int, nome: str, descricao: str) -> TipoChamado:
        tipo = TipoChamado(codigo, descricao, nome)
        incluir = True
        for x in self.__tipos_chamados:
            if codigo == x.codigo:
                incluir = False
                break
        if incluir:
            self.__tipos_chamados.append(tipo)
            return tipo

    def totalChamadosPorTipo(self, tipo: TipoChamado) -> int:
        count = 0
        for chamado in self.__chamados:
            if chamado.tipo.codigo == tipo.codigo:
                count += 1
        return count
