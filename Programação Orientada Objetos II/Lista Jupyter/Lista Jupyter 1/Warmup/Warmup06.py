class Televisao():
    #Warmup01
    def __init__(self, brand: str, inches: int, max_chanel: int, min_chanel: int):
        self.on = False
        self.chanel = 2
        self.brand = brand
        self.inches = inches
        #warmup06
        self.max_chanel = max_chanel
        self.min_chanel = min_chanel

    #Warmup02
    def on(self):
        return self.on
    def chanel(self):
        return self.chanel
    def brand(self):
        return self.brand
    def inches(self):
        return self.inches
    
    #Warmup03 e 04
    def max_chanel(self):
        self.max_chanel
    def min_chanel(self):
        self.min_chanel

    def up_chanel(self):
        if self.chanel == self.max_chanel:
            self.chanel = self.min_chanel
        else:
            self.chanel +=1

    def down_chanel(self):
        if self.chanel == self.min_chanel:
            self.chanel = self.max_chanel
        else:
            self.chanel -=1

    
tv1 = Televisao("LG", 42, 45, 2)
tv2 = Televisao("Philips", 48, 90, 2)
print("O canal máximo da tv", tv1.brand, "de", tv1.inches, "polegadas é", tv1.max_chanel, "já o minimo é", tv1.min_chanel)
print("O canal máximo da tv", tv2.brand, "de", tv2.inches, "polegadas é", tv2.max_chanel, "já o minimo é", tv2.min_chanel)
