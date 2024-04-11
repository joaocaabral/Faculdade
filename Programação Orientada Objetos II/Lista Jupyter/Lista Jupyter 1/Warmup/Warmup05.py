class Televisao():
    #Warmup01
    def __init__(self, brand: str, inches: int):
        self.on = False
        self.chanel = 2
        self.brand = brand
        self.inches = inches

        #Warmup04
        self.max_chanel = 14
        self.min_chanel = 2

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

    
tv1 = Televisao("LG", 42)
tv1.up_chanel()
print("O canal é", tv1.chanel)
tv1.down_chanel()
print("O canal é", tv1.chanel)
