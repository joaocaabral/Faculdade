#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>
#include <pthread.h>

double* load_vector(const char* filename, int* out_size);

void avaliar(double* a, double* b, double* c, int size);

typedef struct {
    int strt;
    int fim;
    double* a;
    double* b;
    double* c;
} th_arg;

void* contas(void* args) {
    th_arg* arg = (th_arg*)args;
    for (int i = arg->strt; i < arg->fim; ++i) {
        arg->c[i] = arg->a[i] + arg->b[i];
    }
    return NULL;
}

int main(int argc, char* argv[]) {

    srand(time(NULL)); 
    
    if(argc < 4) {
        printf("Uso: %s n_threads a_file b_file\n"
               "    n_threads    número de threads a serem usadas na computação\n"
               "    *_file       caminho de arquivo ou uma expressão com a forma gen:N,\n"
               "                 representando um vetor aleatório de tamanho N\n",
               argv[0]);
        return 1;
    }
    
    int n_threads = atoi(argv[1]);
    if (!n_threads) {
        printf("Número de threads deve ser > 0\n");
        return 1;
    }

    int a_size = 0, b_size = 0;
    double* a = load_vector(argv[2], &a_size);
    if (!a) {

        printf("Erro ao ler arquivo %s\n", argv[2]);
        return 1;
    }
    double* b = load_vector(argv[3], &b_size);
    if (!b) {
        printf("Erro ao ler arquivo %s\n", argv[3]);
        return 1;
    }
    
    if (a_size != b_size) {
        printf("Vetores a e b tem tamanhos diferentes! (%d != %d)\n", a_size, b_size);
        return 1;
    }

    double* c = malloc(a_size * sizeof(double));

    pthread_t th[n_threads];
    th_arg arg[n_threads];

    int tamanho = a_size / n_threads;
    for (int i = 0; i < n_threads; ++i) {
        arg[i].strt = i * tamanho;
        arg[i].fim = (i == n_threads - 1) ? a_size : (i + 1) * tamanho;
        arg[i].a = a;
        arg[i].b = b;
        arg[i].c = c;

        pthread_create(&th[i], NULL, contas, &arg[i]);
    }

    for (int i = 0; i < n_threads; ++i) {
        pthread_join(th[i], NULL);
    }


    avaliar(a, b, c, a_size);

    free(a);
    free(b);
    free(c);

    return 0;
}
