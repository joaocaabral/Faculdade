class Square():
    def __init__(self, side: float):
        self.side = side
    
    def area(self):
        return self.side ** 2
    
    def perimeter(self):
        return (self.side * 4)
    
class Circle():
    def __init__(self, radius: float):
        self.radius = radius
    
    def radius(self):
        return self.radius
    
    def area(self):
        return (self.radius**2) * 3.14
    
    def perimeter(self):
        return self.radius * 2 * 3.14
    
class Rectangle():
    def __init__(self, small_side:float, big_side: float):
        self.small_side = small_side
        self.big_side = big_side

    def small_side(self):
        return self.small_side
    
    def big_side(self):
        return self.big_side
    
    def area(self):
        return self.big_side * self.small_side
    
    def perimeter(self):
        return (self.big_side * 2) + (self.small_side * 2)

s = Square(5)
c = Circle(45)
r = Rectangle(4.45, 8.26)

print("A área do quadrado é", s.area(), "m². E o seu perimetro é", s.perimeter(), "m")
print("A área do circulo é", c.area(), "m². E o seu perimetro é", c.perimeter(), "m")
print("A área do retangulo é", r.area(), "m². E o seu perimetro é", r.perimeter(), "m")