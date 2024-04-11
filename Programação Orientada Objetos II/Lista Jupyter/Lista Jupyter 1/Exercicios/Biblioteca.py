class Livro:
    def __init__(self, titulo, autor, editora, ano, edicao, volume):
        self.titulo = titulo
        self.autor = autor
        self.editora = editora
        self.ano = ano
        self.edicao = edicao
        self.volume = volume

    def __str__(self):
        return f"{self.titulo} por {self.autor}, publicado por {self.editora}, {self.ano}, {self.edicao} edicao, volume {self.volume}"


class Biblioteca:
    def __init__(self):
        self.livros = []

    def add_livro(self, livro):
        self.livros.append(livro)

    def procurar_livro(self, **kwargs):
        encontrado = []
        for livro in self.livros:
            if all(getattr(livro, k) == v for k, v in kwargs.items()):
                encontrado.append(livro)
        return encontrado

livro1 = Livro("One Piece - Romance Dawn", "Eiichiro Oda", "Panini", "1997", "1°", "1")
livro2 = Livro("One Piece - A hora da virada", "Eiichiro Oda", "Panini", "2023", "1°", "102")

biblioteca = Biblioteca()
biblioteca.add_livro(livro1)
biblioteca.add_livro(livro2)

nome = input()
encontrado = biblioteca.procurar_livro(titulo = nome)
for livro in encontrado:
    print(livro)
