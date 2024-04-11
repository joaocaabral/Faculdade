alturas = []
idades = []

print("Digite a altura e idade de 5 pessoas:")
for i in range(5):   
    altura, idade = list(map(float, input(f'Pessoa {i+1}: ').split()))
    alturas.append(altura)
    idades.append(idade)
alturas.reverse()
idades.reverse()

print(f"As altura são essas: {alturas}")
print(f"As idades são essas: {idades}")