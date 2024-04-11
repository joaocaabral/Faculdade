class ElevadorJahNoTerreoException(Exception):
    def __init__(self):
        super().__init__("Já estamos no térreo.")
    