class Televisao():
    #Warmup01
    def __init__(self, brand: str, inches: int):
        self.on = False
        self.chanel = 2
        self.brand = brand
        self.inches = inches
    
    #Warmup02
    def on(self):
        return self.on
    def chanel(self):
        return self.chanel
    def brand(self):
        return self.brand
    def inches(self):
        return self.inches
    
tv1 = Televisao("LG", 42)
tv2 = Televisao("Philips", 48)
print("Essa televisão possui ", tv1.inches, "polegadas. Sua marca é a ", tv1.brand)
print("Essa televisão possui ", tv2.inches, "polegadas. Sua marca é a ", tv2.brand)      