main = do
    putStrLn "Digite o valor de x (True ou False):"
    x <- readLn :: IO Bool
    putStrLn "Digite o valor de y (True ou False):"
    y <- readLn :: IO Bool
    let xor = \x y -> (x || y) && not (x && y)
    putStrLn $ "O resultado do XOR é: " ++ show (xor x y)
