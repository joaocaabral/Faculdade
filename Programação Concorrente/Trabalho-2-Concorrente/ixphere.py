# Importa módulos necessários
import sys
import time
import random
from threading import Thread, Semaphore, Lock, Condition

# Inicializa locks e semáforos para controle de concorrência
lock = Lock()
mutex_flag = Lock()
clock_list_lock = Lock()

item_in_buffer = Condition(lock)
queue_enter_semaphore = Semaphore(1)
print_semaphore = Semaphore(0)
final_print_semaphore = Semaphore(0)

# Inicializa listas para armazenar dados
enter_queue = []
customer_queue = []
session_queue = []

clock_a = []
clock_b = []
clock_c = []

# Inicializa contadores globais
num_sessions = 0
num_people = 0
begin_time = 0
t_time = 0

# Define a classe de Sessão que herda de Thread
class Session(Thread):
    def __init__(self, age_group_a):
        super().__init__(name="Sessão")
        self.people_in_exp = 0
        self.age_group_a = age_group_a
        self.flag = True
        self.ready = False
        

    def run(self):
        global session_queue
        global num_sessions
        global t_time
        global begin_time

        # Calcula o tempo total da sessão em segundos
        session_time = stay_duration * time_unit / 1000
        initial_time = time.time()

        # Marca a sessão como pronta para receber participantes
        self.ready = True

        # Permanece na sessão até o tempo total ser alcançado
        while time.time() - initial_time < session_time:
            time.sleep(1 * time_unit / 1000)
            with mutex_flag:
                self.flag = True

        # Libera os participantes da fila da sessão
        with mutex_flag:
            self.flag = None
        while session_queue:
            self.people_in_exp -= 1
            session_queue[0].semaphore1.release()
            session_queue[0].join()
            session_queue.pop(0)
            print_semaphore.acquire()
        # Imprime mensagem ao pausar a experiência
        with mutex_flag:
            print("[Ixfera] Pausando a experiência %s." % (self.age_group_a))
            t_time += time.time() - begin_time
            self.flag = False
            num_sessions += 1

# Define a classe de Cliente que herda de Thread
class Client(Thread):
    def __init__(self, name, age_group):
        super().__init__(name=name)
        self.age_group = age_group
        self.semaphore0 = Semaphore(0)
        self.semaphore1 = Semaphore(0)
        self.clock_semaphore = Semaphore(0)
        self.participated = False
        self.start_time = 0

    def run(self):
        global num_people

        # Entra na fila de entrada
        queue_enter_semaphore.acquire()
        enter_queue.append(self)
        queue_enter_semaphore.release()

        # Aguarda o relógio para entrar na fila da sessão
        self.clock_semaphore.acquire()
        self.start_time = time.time()

        # Aguarda a sessão ficar pronta para entrar
        self.semaphore0.acquire()
        while True:
            if sessions[-1].ready:
                session_queue.append(self)
                break
        self.semaphore1.acquire()

        # Calcula o tempo total que o cliente permaneceu na Ixfera
        self.end_time = time.time()
        self.final_time_milliseconds = round((self.end_time - self.start_time) * 1000, 2)

        # Registra o tempo na lista de espera correspondente à faixa etária do cliente
        with clock_list_lock:
            clock = clock_a if self.age_group == "A" else clock_b if self.age_group == "B" else clock_c
            clock.append(self.final_time_milliseconds)

        # Imprime mensagem ao sair da Ixfera
        print("[Pessoa %s / %s] Saiu da Ixfera (quantidade = %d)." % (
            self.name, self.age_group, sessions[-1].people_in_exp))
        print_semaphore.release()

        # Atualiza contagem global de pessoas
        num_people += 1

        # Libera o semáforo final quando todos os clientes saíram
        if num_people == num_clients:
            final_print_semaphore.release()

# Função que simula a entrada dos clientes na fila
def enter_queue_function():
    people_inside_queue = 0
    while people_inside_queue < num_clients:
        with lock:
            customer_queue.append(enter_queue[0])
            print("[Pessoa %s / %s] Aguardando na fila." % (enter_queue[0].name, enter_queue[0].age_group))
            enter_queue[0].clock_semaphore.release()
            enter_queue.pop(0)
            people_inside_queue += 1
            item_in_buffer.notify()
        if people_inside_queue != num_clients:
            arrival_interval = random.randint(0, max_interval)
            time.sleep(arrival_interval * time_unit / 1000)

# Função que simula a atração e distribuição de clientes nas sessões
def attraction():
    global sessions
    global begin_time

    # Inicializa lista de sessões
    sessions = []
    everyone_participated = False

    # Continua até todos os clientes terem participado
    while (everyone_participated == False):
        with lock:
            if len(customer_queue) != 0:
                # Inicia uma nova sessão se a fila estiver vazia
                if len(sessions) == 0:
                    customer_0 = customer_queue[0]
                    age_group_session = customer_0.age_group
                    customer_0.participated = True
                    customer_0.semaphore0.release()
                    new_session = Session(age_group_a=age_group_session)
                    sessions.append(new_session)
                    begin_time = time.time()
                    print("[Ixfera] Iniciando a experiência %s." % (new_session.age_group_a))
                    new_session.start()
                    new_session.people_in_exp += 1
                    print("[Pessoa %s / %s] Entrou na Ixfera (quantidade = %d)." % (
                        customer_0.name, customer_0.age_group, new_session.people_in_exp))
                participated = 0
                for i in range(len(customer_queue)):
                    with mutex_flag:
                        # Verifica se o cliente já participou
                        if customer_queue[i].participated:
                            participated += 1
                        # Se a última sessão não estiver pronta, inicia uma nova sessão para o cliente
                        elif not customer_queue[i].participated and (sessions[-1].flag is False):
                            customer_0 = customer_queue[i]
                            age_group_session = customer_0.age_group
                            customer_0.participated = True
                            customer_0.semaphore0.release()
                            new_session = Session(age_group_a=age_group_session)
                            sessions.append(new_session)
                            new_session.start()
                            new_session.people_in_exp += 1
                            print("[Ixfera] Iniciando a experiência %s." % (
                                new_session.age_group_a))
                            print("[Pessoa %s / %s] Entrou na Ixfera (quantidade = %d)." % (
                                customer_0.name, customer_0.age_group, new_session.people_in_exp))
                        # Se a última sessão estiver pronta e houver vagas, coloca o cliente na sessão
                        elif not customer_queue[i].participated and (
                                sessions[-1].flag is True) and sessions[-1].people_in_exp < num_slots and customer_queue[
                            i].age_group == sessions[-1].age_group_a:
                            customer_queue[i].semaphore0.release()
                            customer_0 = customer_queue[i]
                            customer_0.participated = True
                            sessions[-1].people_in_exp += 1
                            print("[Pessoa %s / %s] Entrou na Ixfera (quantidade = %d)." % (
                                customer_0.name, customer_0.age_group, sessions[-1].people_in_exp))

                # Verifica se todos participaram
                if participated == num_clients:
                    everyone_participated = True

# Função que cria as threads dos clientes
def create_threads(num_clients, seed):
    random.seed(seed)
    threads_clients = []

    print("[Ixfera] Simulação iniciada")

    for i in range(num_clients):
        x = random.randint(0, 2)
        age_group_e = "A" if x == 1 else "B" if x == 2 else "C"
        threads_clients.append(Client(name=str(i), age_group=age_group_e))
        threads_clients[i].start()

    return threads_clients

# Verifica se o script é executado diretamente
if __name__ == "__main__":
    # Verifica se foram fornecidos argumentos de linha de comando
    if len(sys.argv) != 7:
        print("Uso correto: python3 ixphere.py <N_PESSOAS> <N_VAGAS> <PERMANENCIA> <MAX_INTERVALO> <SEMENTE> <UNID_TEMPO>")
        sys.exit(1)

    # Converte argumentos para inteiros
    num_clients, num_slots, stay_duration, max_interval, seed, time_unit = map(int, sys.argv[1:])

    # Verifica se os parâmetros são válidos
    if num_clients < 1 or num_slots < 1 or stay_duration < 1 or max_interval < 0 or time_unit < 0:
        print("Parâmetros inválidos. Certifique-se de que N_PESSOAS, N_VAGAS e PERMANENCIA sejam maiores que 0, "
              "MAX_INTERVALO seja maior ou igual a 0 e UNID_TEMPO seja maior que 0.")
        sys.exit(1)

    # Inicializa lista de sessões e threads dos clientes
    sessions = []
    threads_clients = create_threads(num_clients, seed)

    # Inicia as threads da fila e da atração
    ixfera = Thread(target=attraction)
    queue = Thread(target=enter_queue_function)

    # Marca o tempo de início
    start_time = time.time()
    
    queue.start()
    ixfera.start()

    # Aguarda o término das threads da atração e da fila
    ixfera.join()
    queue.join()

    # Libera o semáforo final
    final_print_semaphore.acquire()

    # Calcula o número de sessões
    t_sessions = len(sessions)                                                                                                                                                                                                                      

    # Aguarda o término de todas as sessões
    while sessions:
        session = sessions.pop(0)
        session.join()

    # Marca o tempo de término
    end_time = time.time()

    # Imprime mensagem de conclusão da simulação
    print("[Ixfera] Simulação finalizada.\n")

    # Calcula o tempo total da simulação em milissegundos
    final_time_milliseconds = (end_time - start_time) * 1000

    # Calcula a média do tempo de espera para cada faixa etária
    for age_group, clock in zip(['A', 'B', 'C'], [clock_a, clock_b, clock_c]):
        average = round(sum(clock) / len(clock), 2)
        print(f"Tempo médio de espera (Faixa {age_group}): {average} ms")

    # Calcula a taxa de ocupação
    occupancy_rate = (t_time/final_time_milliseconds)*100
    print(f"\nTaxa de ocupação: {occupancy_rate}")