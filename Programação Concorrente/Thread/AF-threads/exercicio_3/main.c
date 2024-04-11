#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>
#include <pthread.h>

double* load_vector(const char* filename, int* out_size);
void avaliar(double* a, double* b, int size, double prod_escalar);


struct Dados {
    double* a;
    double* b;
    int tamanho;
    int id;
    int q_threads;
    double result;
};

void* escalar(void* args) {
    struct Dados* targs = (struct Dados*)args;

    int tamanho_vetor = targs->tamanho / targs->q_threads;
    int start = targs->id * tamanho_vetor;
    int end = (targs->id == targs->q_threads - 1) ?  targs->tamanho : (targs->id + 1) * tamanho_vetor;

    double result = 0;

    for (int i = start; i < end; ++i) {
        result += targs->a[i] * targs->b[i];
    }

    targs->result = result;

    return NULL;
}

int main(int argc, char* argv[]) {
    srand(time(NULL));

    if (argc < 4) {
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
        printf("Vetores a e b têm tamanhos diferentes! (%d != %d)\n", a_size, b_size);
        return 1;
    }

    // Calcula produto escalar com threads
    double result = 0;
    pthread_t* threads = (pthread_t*)malloc(sizeof(pthread_t) * n_threads);
    struct Dados* conta = (struct Dados*)malloc(sizeof(struct Dados) * n_threads);

    for (int i = 0; i < n_threads; ++i) {
        conta[i].a = a;
        conta[i].b = b;
        conta[i].tamanho = a_size;
        conta[i].id = i;
        conta[i].q_threads = n_threads;

        pthread_create(&threads[i], NULL, escalar, &conta[i]);
    }

    for (int i = 0; i < n_threads; ++i) {
        pthread_join(threads[i], NULL);
        result += conta[i].result;
    }

    free(threads);
    free(conta);

    avaliar(a, b, a_size, result);

    free(a);
    free(b);

    return 0;
}
