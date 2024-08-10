main = do
    putStrLn "Digite o valor de n:"
    n <- readLn :: IO Int
    let fib = (\f n -> f f n) (\f n -> if n == 0 then 0 else if n == 1 then 1 else f f (n - 1) + f f (n - 2))
    putStrLn $ "O " ++ show n ++ "º número de Fibonacci é: " ++ show (fib n)
