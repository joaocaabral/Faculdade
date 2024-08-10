absolute :: Int -> Int
absolute = abs
main = do
    putStrLn "Digite um número inteiro:"
    xString <- getLine
    let x = read xString :: Int
        res = absolute x
    putStrLn ("O valor absoluto de " ++ show x ++ " é: " ++ show res)