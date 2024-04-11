"""Universidade Federal de Santa Catarina.
   CTC - Centro Tecnologico - http://ctc.ufsc.br
   INE - Departamento de Informatica e Estatistica - http://inf.ufsc.br
"""
def entrada(self):
        lista = [int(z) for z in input().split()]
        return lista

def ordena(self):
    nova_lista = []
    for num in self.entrada:
        value = list[num]
        i = num-1
        while i>=0:
            if value < list[i]:
                list[i+1] = list[i]
                list[i] = value
                i -= 1
            else:
                break
    return nova_lista

def toString(self):
    ordem = self.ordena()
    stringLista = ""

    for i in range(len(ordem)):
        if i == len(ordem)-1: stringLista = stringLista + str(ordem[i])
        else: stringLista = stringLista + str(ordem[i]) + "," 
        
    return stringLista