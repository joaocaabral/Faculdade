import math
class Cordenate:
    def __init__(self, x: int, y: int):
        self.__x = x
        self.__y = y

    @property
    def x(self):
        return self.__x
    
    @property
    def y(self):
        return self.__y

    @x.setter
    def x(self, new_x: int):
        self.__x = new_x

    @y.setter
    def y(self, new_y: int):
        self.__y = new_y

    def show_cordenates(self):
        print("As coordenadas desse ponto são ({},{})".format(self.__x, self.__y))

    def distance(self, coord):
        distance = math.sqrt(((coord.x - self.__x)**2) + ((coord.y - self.__y)**2))
        return distance
    
    def compare(self, coord):
        distance01 = math.sqrt(((self.__x)**2) + ((self.__y)**2))
        distance02 = math.sqrt(((coord.x)**2) + ((coord.y)**2))

        if distance01 < distance02:
            print(f"A coordenada ({self.__x},{self.__y}) está mais próxima da origem")
        else:
            print(f"A coordenada ({coord.x},{coord.y}) está mais próxima da origem")

    def polar(self):
        radius = math.sqrt(self.__x**2 + self.__y**2 )
        theta = math.atan(self.__y/self.__x)
        theta = 180 * theta/math.pi
        
        print(f"A coordenada polar de ({self.__x},{self.__y}) é (%0.2f,%0.2f)" % (radius, theta))

c1 = Cordenate(-5, 15)
c2 = Cordenate(12, -8)

c1.show_cordenates()
c2.show_cordenates()
print(f"A distancia entre as duas cordenadas é {c1.distance(c2)}")
c1.compare(c2)
c1.polar()
c2.polar()
