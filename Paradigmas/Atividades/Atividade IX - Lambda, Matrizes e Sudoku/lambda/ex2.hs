main = do
    putStrLn "Digite a nota a:"
    a <- readLn :: IO Double
    putStrLn "Digite a nota b:"
    b <- readLn :: IO Double
    putStrLn "Digite a nota c:"
    c <- readLn :: IO Double
    let media = \a b c -> (a + b + c) / 3
        aprovado = \m -> m >= 6
    putStrLn $ "O aluno está " ++ (if aprovado (media a b c) then "aprovado" else "reprovado")
