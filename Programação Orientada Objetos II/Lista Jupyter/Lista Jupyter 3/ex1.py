import string

dicionario = {}

def frequencia(arquivo):
    texto = open(arquivo, "r")
    for linha in texto:
        linha = linha.strip()
        linha - linha.lower()
        linha = linha.translate(linha.maketrans("", "", string.punctuation))
        palavras = linha.split(" ")

        for palavra in palavras:
            if palavra in dicionario:
                dicionario[palavra] += 1
            else:
                dicionario[palavra] = 1

frequencia("arquivo.txt")
for key in list(dicionario.keys):
    print(key, ":", dicionario[key])