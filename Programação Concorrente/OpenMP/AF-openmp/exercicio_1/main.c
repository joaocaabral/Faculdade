#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <omp.h>

// Função para realizar cálculos matemáticos em um array c.
// Os parâmetros são: 
// - c: um array de números em ponto flutuante que será preenchido com resultados
// - size: o tamanho do array c
// - n_threads: o número de threads a serem usadas para paralelizar os cálculos
void calcular(double* c, int size, int n_threads) {
    for (long long int i = 0; i < size; i++) {
        c[i] = sqrt(i * 32) + sqrt(i * 16 + i * 8) + sqrt(i * 4 + i * 2 + i);
        c[i] -= sqrt(i * 32 * i * 16 + i * 4 + i * 2 + i);
        c[i] += pow(i * 32, 8) + pow(i * 16, 12);
    }
}

int main(int argc, char** argv) {
    if (argc < 2) {
        // Verifica se foram fornecidos argumentos na linha de comando.
        printf("Uso: %s threads [tamanho]\n", argv[0]);
        return 1;
    }

    // Lê o número de threads a serem usadas a partir do primeiro argumento da linha de comando.
    int n_threads = atoi(argv[1]);

    // Lê o tamanho do array a partir do segundo argumento da linha de comando, se fornecido.
    // Caso contrário, o tamanho padrão é 20.000.000.
    int size = argc > 2 ? atoi(argv[2]) : 20000000;

    // Aloca memória para um array de números em ponto flutuante de acordo com o tamanho especificado.
    double *c = (double *) malloc (sizeof(double) * size);

    // Registra o tempo de início da computação.
    double start = omp_get_wtime();

    // Chama a função calcular para realizar os cálculos, possivelmente de forma paralela, dependendo do número de threads.
    calcular(c, size, n_threads);

    // Calcula a duração da computação subtraindo o tempo de início do tempo atual.
    double duration = omp_get_wtime() - start;

    // Imprime o número de threads, o tamanho do array e o tempo de execução.
    printf("n_threads: %d, size: %d, tempo: %.3f secs\n", n_threads, size, duration);

    // Libera a memória alocada para o array.
    free(c);

    return 0;
}
