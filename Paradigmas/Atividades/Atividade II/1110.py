from collections import deque

while True:
    n = int(input())
    if n == 0:
        break
    
    cartas = deque(range(1, n + 1))
    discarded = []

    while len(cartas) > 1:
        discarded.append(str(cartas.popleft()))
        cartas.append(cartas.popleft())
    
    print("Discarded cards:", ", ".join(discarded))
    print("Remaining card:", cartas[0])