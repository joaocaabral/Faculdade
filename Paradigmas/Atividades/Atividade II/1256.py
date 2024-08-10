def main():
    n = int(input())

    for _ in range(n):
        m, c = map(int, input().split())
        dados = list(map(int, input().split()))

        keys = [''] * m

        for x in dados:
            index = x % m
            keys[index] += f" -> {x}"

        for i in range(m):
            print(f"{i}{keys[i]} -> \\")

        if _ < n - 1:
            print()


if __name__ == "__main__":
    main()