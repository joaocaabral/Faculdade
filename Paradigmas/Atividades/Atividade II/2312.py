class Medalhas:
    def __init__(self, pais, ouro, prata, bronze):
        self.pais = pais
        self.ouro = ouro
        self.prata = prata
        self.bronze = bronze

def preenche_quadro(vet, tam):
    for i in range(tam):
        pais, ouro, prata, bronze = input().split()
        vet.append(Medalhas(pais, int(ouro), int(prata), int(bronze)))

def ordena(vet):
    vet.sort(key=lambda x: x.ouro, reverse=True)

def ordena_alpha(vet):
    vet.sort(key=lambda x: x.pais)

def ordena_bronze(vet):
    vet.sort(key=lambda x: x.bronze, reverse=True)

def ordena_prata(vet):
    vet.sort(key=lambda x: x.prata, reverse=True)

def struct_press(vet):
    for pais in vet:
        print(f"{pais.pais} {pais.ouro} {pais.prata} {pais.bronze}")

def main():
    casos = int(input())

    # Lista de objetos Medalhas
    pais_medalhas = []

    preenche_quadro(pais_medalhas, casos)

    ordena_alpha(pais_medalhas)
    ordena_bronze(pais_medalhas)
    ordena_prata(pais_medalhas)
    ordena(pais_medalhas)

    struct_press(pais_medalhas)

if __name__ == "__main__":
    main()
