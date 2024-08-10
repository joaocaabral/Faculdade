def leia_inteiro():
    return int(input())

n = leia_inteiro()
c = [0] * (n + 1)
for i in range(1, n + 1):
    c[i] = leia_inteiro()

k = leia_inteiro()

min, max = 1, n
while min < max:
    soma = c[min] + c[max]
    if soma > k:
        max -= 1
    elif soma < k:
        min += 1
    else:
        print(f"{c[min]} {c[max]}")
        min = max  # terminar