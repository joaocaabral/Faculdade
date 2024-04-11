

class ElevadorJahNoUltimoAndarException(Exception):
    def __init__(self):
        super().__init__("Elevador no ultimo andar")
        