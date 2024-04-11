from time import sleep
from random import randint
from threading import Thread, Lock, Condition

def produtor():
    global buffer
    for i in range(10):
        sleep(randint(0, 2))               # fica um tempo produzindo...
        item = 'item ' + str(i)
        with lock:
            while len(buffer) == tam_buffer:
                print('>>> Buffer cheio. Produtor ira aguardar.')
                lugar_no_buffer.wait()     # aguarda que haja lugar no buffer
            buffer.append(item)
            print('Produzido %s (ha %i itens no buffer)' % (item, len(buffer)))
            item_no_buffer.notify_all()   

def consumidor():
    global buffer
    for i in range(10):
        with lock:
            while len(buffer) == 0:
                print('>>> Buffer vazio. Consumidor ira aguardar.')
                item_no_buffer.wait()     # aguarda que haja um item para consumir
            item = buffer.pop(0)
            print('Consumido %s (ha %i itens no buffer)' % (item, len(buffer)))
            lugar_no_buffer.notify_all()
        sleep(randint(0, 2))              # fica um tempo consumindo...

buffer = []
tam_buffer = 5
lock = Lock()
lugar_no_buffer = Condition(lock)
item_no_buffer = Condition(lock)

# Criar duas threads produtoras e duas consumidoras
produtores = [Thread(target=produtor) for _ in range(2)]
consumidores = [Thread(target=consumidor) for _ in range(2)]

# Iniciar as threads
for produtor in produtores:
    produtor.start()

for consumidor in consumidores:
    consumidor.start()

# Esperar as threads terminarem
for produtor in produtores:
    produtor.join()

for consumidor in consumidores:
    consumidor.join()