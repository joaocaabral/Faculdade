n = int(input())

for _ in range(n):
    linha = input()
    esq = 0
    dir = 0

    for char in linha:
        if char == '<':
            esq += 1
        elif char == '>' and esq > 0:
            dir += 1
            esq -= 1

    print(dir)