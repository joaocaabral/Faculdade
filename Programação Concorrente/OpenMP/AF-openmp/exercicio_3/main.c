#include <stdio.h>
#include <math.h>
#include <stdlib.h>
#include <time.h>

double standard_deviation(double* data, int size) {
    double avg = 0;
    for (int i = 0; i < size; ++i) 
        avg += data[i];
    avg /= size;

    double sd = 0;
    for (int i = 0; i < size; ++i) 
        sd += pow(data[i] - avg, 2);
    sd = sqrt(sd / (size-1));

    return sd;
}
 
int main(int argc, char** argv) {
    if (argc < 2) {
        printf("Uso: %s tamanho\n", argv[0]);
        return 1;
    }
    int tamanho = atoi(argv[1]);
    
    double* data = (double*)malloc(tamanho * sizeof(double));
    
    if (data == NULL) {
        printf("Erro de alocação de memória.\n");
        return 1;
    }

    // Inicializa o gerador de números aleatórios
    srand(time(NULL));

    for (int i = 0; i < tamanho; ++i) 
        data[i] = 100000 * (rand() / (double)RAND_MAX);
    
    printf("sd: %g\n", standard_deviation(data, tamanho));

    free(data);

    return 0;
}
