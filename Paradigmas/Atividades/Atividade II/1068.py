while True:
    try:
        linha = input()
    except EOFError:
        break

    esq = 0
    dir = 0

    for caractere in linha:
        if caractere == '(':
            esq += 1
        elif caractere == ')':
            dir += 1
            if esq > 0:
                esq -= 1
                dir -= 1

    if esq == 0 and dir == 0:
        print("correct")
    else:
        print("incorrect")