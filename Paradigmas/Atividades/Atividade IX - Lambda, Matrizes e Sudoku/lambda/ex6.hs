main = do
    putStrLn "Digite o valor de a:"
    a <- readLn :: IO Int
    putStrLn "Digite o valor de b:"
    b <- readLn :: IO Int
    putStrLn "Digite o valor de c:"
    c <- readLn :: IO Int
    let maior = \a b c -> if a > b && a > c then a else if b > c then b else c
    putStrLn $ "O maior valor é: " ++ show (maior a b c)
