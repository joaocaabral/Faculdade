class Series:
    def fibonacci(n):
        if n <= 1:
            return n
        else:
            return Series.fibonacci(n-1) + Series.fibonacci(n-2)

    def fatorial(n):
        if n == 0:
            return 1
        else:
            return n * Series.fatorial(n-1)

    def primo(n, i=2):
        if n <= 2:
            return n == 2
        elif n % i == 0:
            return False
        elif i * i > n:
            return True
        else:
            return Series.primo(n, i+1)

n = int(input())

Rfibonacci = Series.fibonacci(n)
print(f"O {n} termo na sequencia de Fibonacci é: {Rfibonacci}")

Rfatorial = Series.fatorial(n)
print(f"O fatorial de {n} é: {Rfatorial}")

Rprimo = Series.primo(n)
print(f"O número {n} é primo? {Rprimo}")