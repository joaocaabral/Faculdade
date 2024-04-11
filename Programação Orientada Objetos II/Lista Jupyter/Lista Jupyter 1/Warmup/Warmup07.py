class City:
    def __init__(self, name: str, population: int):
        self.name = name
        self.population = population

    def name(self):
        return self.name
    
    def population(self):
        return self.population
    
    def population(self, num_p: int):
        self.population = num_p

class State:
    def __init__(self, name: str, acronym: str, city: list):
        self.name = name
        self.acronym = acronym
        self.city = city

    def name(self):
        return self.name
    
    def acronym(self):
        return self.acronym
    
    def city(self):
        return self.city
    
    def city(self, num_city: list):
        self.city = num_city

    def total_population(self):
        total = 0
        for city in self.city:
            total += city.population
        return total     
    
c1 = City("Florianópolis", 500000)
c2 = City("Laguna", 46000)
c3 = City("São Paulo", 12000000)
c4 = City("Guaratinguetá", 122000)
c5 = City("Rio de Janeiro", 6000000)
c6 = City("Duque de Caxias", 900000)

s1 = State("Santa Catarina", "SC", [c1, c2])
s2 = State("São Paulo", "SP", [c3, c4])
s3 = State("Rio de Janeiro", "RJ", [c5, c6])

print("A populacao do estado", s1.name, ", de sigla", s1.acronym, ", é igual à", s1.total_population())
print("A populacao do estado", s2.name, ", de sigla", s2.acronym, ", é igual à", s2.total_population())
print("A populacao do estado", s3.name, ", de sigla", s3.acronym, ", é igual à", s3.total_population())