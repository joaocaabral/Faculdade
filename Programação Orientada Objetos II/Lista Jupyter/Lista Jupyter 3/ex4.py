dicionario = {}

for i in range(6):
    nome = input("Digite o nome do corredor:")

    tempos = [float(x) for x in input("Digite os tempos da 10 voltas separados por um espaço em branco:").split()]
    dicionario[nome] = tempos

rapido_piloto = ""
rapido_volta = -1
rapido_index = 0
media_tempos = {}
for key in list(dicionario.keys()): 
    soma = 0
    for volta in dicionario[key]:
        if rapido_volta == -1:
            rapido_volta = volta
            rapido_piloto = key
            rapido_index = dicionario[key].index(volta) + 1
        elif volta < rapido_volta:
            rapido_volta = volta
            rapido_piloto = key
            rapido_index = dicionario[key].index(volta) + 1
        soma += volta
    media_tempos[key] = soma/len(dicionario[key])

count = 1
print("Classificação final:")
while media_tempos != {}:
    menor = min(media_tempos, key=media_tempos.get)
    print(f"{count} - {menor}")
    del media_tempos[menor]
    count += 1

print()
print(f"A volta mais rapida da prova foi a {rapido_index}° pelo piloto {rapido_piloto}, que durou {rapido_volta} segundos")