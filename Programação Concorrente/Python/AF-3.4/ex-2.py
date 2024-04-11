from time import sleep
from random import randint
from threading import Thread, Semaphore

def produtor():
    global buffer, semaforo_buffer, semaforo_vagas
    for i in range(10):
        sleep(randint(0, 2))
        item = 'item ' + str(i)
        semaforo_vagas.acquire()  # aguarda vaga disponível no buffer
        semaforo_buffer.acquire()  # entra na região crítica

        # Verifica se o buffer está cheio antes de adicionar um item
        while len(buffer) == tam_buffer:
            semaforo_buffer.release()  # libera o semáforo do buffer
            semaforo_vagas.release()  # libera o semáforo de vagas
            sleep(0.1)  # aguarda um curto período antes de tentar novamente
            semaforo_vagas.acquire()  # tenta adquirir novamente o semáforo de vagas
            semaforo_buffer.acquire()  # tenta adquirir novamente o semáforo do buffer

        buffer.append(item)
        print('Produzido %s (ha %i itens no buffer)' % (item, len(buffer)))
        semaforo_buffer.release()  # sai da região crítica
        semaforo_vagas.release()  # sinaliza que um novo item foi produzido

def consumidor():
    global buffer, semaforo_buffer, semaforo_vagas
    for i in range(10):
        semaforo_vagas.acquire()  # aguarda item disponível no buffer
        semaforo_buffer.acquire()  # entra na região crítica

        # Verifica se o buffer está vazio antes de consumir um item
        while len(buffer) == 0:
            semaforo_buffer.release()  # libera o semáforo do buffer
            semaforo_vagas.release()  # libera o semáforo de vagas
            sleep(0.1)  # aguarda um curto período antes de tentar novamente
            semaforo_vagas.acquire()  # tenta adquirir novamente o semáforo de vagas
            semaforo_buffer.acquire()  # tenta adquirir novamente o semáforo do buffer

        item = buffer.pop(0)
        print('Consumido %s (ha %i itens no buffer)' % (item, len(buffer)))
        semaforo_buffer.release()  # sai da região crítica
        semaforo_vagas.release()  # sinaliza que um novo espaço está disponível no buffer
        sleep(randint(0, 2))  # fica um tempo consumindo...

buffer = []
tam_buffer = 3

# cria semáforos
semaforo_buffer = Semaphore(1)  # controle de acesso ao buffer
semaforo_vagas = Semaphore(tam_buffer)  # controla o número de vagas disponíveis no buffer

# cria threads
produtor_thread = Thread(target=produtor)
consumidor_thread = Thread(target=consumidor)

# inicia as threads
produtor_thread.start()
consumidor_thread.start()

# aguarda as threads terminarem
produtor_thread.join()
consumidor_thread.join()
