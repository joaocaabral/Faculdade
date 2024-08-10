-- Definição de Aluno
type Nome = String
type Disciplina = String
type Nota = Float
type Aluno = (Nome, Disciplina, Nota, Nota, Nota)

-- A) e B) Função para criar um aluno com id e exemplos
criarAluno :: Int -> Aluno
criarAluno 1 = ("Joao Victor", "Matematica", 7.5, 8.0, 9.0)
criarAluno 2 = ("Maria Vitoria", "Portugues", 6.0, 7.5, 8.5)
criarAluno 3 = ("Pedro Miguel", "Ciencias", 8.0, 8.0, 7.0)
criarAluno _ = ("", "", 0.0, 0.0, 0.0) -- Tratamento para valores não especificados

-- C) Função para obter o primeiro nome de um aluno
primeiroNome :: Aluno -> String
primeiroNome (nome, _, _, _, _) =
    case words nome of
        []        -> "Nome Indefinido"
        (x:_)     -> x

-- D) Função para calcular a média de um aluno
mediaAluno :: Aluno -> Float
mediaAluno (_, _, n1, n2, n3) = (n1 + n2 + n3) / 3.0

-- E) Função para calcular a média da turma
mediaTurma :: Int -> Float
mediaTurma 0 = 0.0
mediaTurma alunoId =
    let aluno = criarAluno alunoId
        mediaAlunoAtual = mediaAluno aluno
        somaMediasAnteriores = mediaTurma (alunoId - 1) * fromIntegral (alunoId - 1)
    in (somaMediasAnteriores + mediaAlunoAtual) / fromIntegral alunoId

main :: IO ()
main = do
    putStrLn "Selecione o número do ID do aluno (1, 2, ou 3):"
    alunoIdStr <- getLine
    let alunoId = read alunoIdStr :: Int
    let aluno = criarAluno alunoId
    let primeiro_nome = primeiroNome aluno
    let media_aluno = mediaAluno aluno
    let media_turma = mediaTurma 3
    putStrLn $ "Primeiro nome do aluno: " ++ primeiro_nome
    putStrLn $ "Média do aluno: " ++ show media_aluno
    putStrLn $ "Média da turma: " ++ show media_turma
