calcular_fibonacci = lambda n: n if n <= 1 else calcular_fibonacci(n - 1) + calcular_fibonacci(n - 2)

n = int(input("Digite o valor de n para calcular o n-ésimo número de Fibonacci: "))

resultado = calcular_fibonacci(n)
print("O", n, "-ésimo número de Fibonacci é:", resultado)
