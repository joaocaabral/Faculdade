from collections import namedtuple
from itertools import product
from random import sample

Carta = namedtuple('Carta', ['face', 'naipe'])
faces = {'A', '2', '3', '4', '5', '6', '7', '8', '9', '10', 'J', 'Q', 'K'}
naipes = {'Ouros', 'Paus', 'Copas', 'Espadas'}
baralho = [Carta(face, naipe) for face, naipe in product(faces, naipes)]
mao = sample(baralho, 4)

print('Mão:', mao)