#include <stdlib.h>
#include <unistd.h>
#include <sys/types.h>
#include <stdio.h>
#include <pthread.h>

int contador_global = 0;

void* soma_contador_global(void *arg) {
    int n_loops = *((int*)arg);
    for (int i = 0; i < n_loops; i++) {
        contador_global++;
    }
    return 0;
}

int main(int argc, char* argv[]) {
    if (argc < 3) {
        printf("n_threads é obrigatório!\n");
        printf("Uso: %s n_threads n_loops\n", argv[0]);
        return 1;
    }

    int n_threads = atoi(argv[1]);
    int n_loops = atoi(argv[2]);
    
    pthread_t th[n_threads];

    for (int i = 0; i < n_threads; i++) {
        pthread_create(&th[i], NULL, soma_contador_global, &n_loops);
    }
    
    for (int i = 0; i < n_threads; i++) {
        pthread_join(th[i], NULL);
    }

    printf("Contador: %d\n", contador_global);
    printf("Esperado: %d\n", n_threads*n_loops);
    return 0;
}