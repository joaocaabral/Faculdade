agenda = {}
def incluir_nome(nome: str, telefone: list):
    agenda[nome] = telefone

def incluir_telefone(nome: str, telefone: str):
    if nome not in agenda:
        pergunta = input("Essa nome não existe na agenda. Você gostaria de adiciona-lo ?")
        if pergunta.lower() == "sim":
            incluir_nome(nome, [telefone])
        else:
            agenda[nome].append(telefone)

def excluir_telefone(nome: str, telefone: str):
    if len(agenda[nome]) == 1:
        del agenda[nome]
    else:
        if telefone in agenda[nome]:
            agenda[nome].remove(telefone)
        else:
            print("O telefone não está cadastrado")

def excluir_nome(nome: str):
    if nome in agenda:
        del agenda[nome]
    else:
        print("O nome não está cadastrado")

def consultar_telefone(nome:str):
    if nome in agenda:
        print(f"Telefone de {nome}")
        for fone in agenda[nome]:
            print("-", fone)
    else:
        print("O nome não está cadastrado")
    
incluir_nome("Jorge Machado", ["942568595", "45893126456"])
consultar_telefone("Jorge Machado")
excluir_telefone("Jorge Machado", "942568595")
consultar_telefone("Jorge Machado")
excluir_nome("Jorge Machado")
consultar_telefone("Jorge Machado")
incluir_telefone("Juliana Oliveira", "1578935647841")
consultar_telefone("Juliana Oliveira")