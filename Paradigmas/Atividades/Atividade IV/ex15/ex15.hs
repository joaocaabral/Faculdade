mdc :: Int -> Int -> Int
mdc a 0 = a
mdc a b = mdc b (a `mod` b)

eulerTotient :: Int -> Int
eulerTotient n = length [x | x <- [1..n-1], mdc x n == 1]

main :: IO ()
main = do
    putStrLn "Digite um número:"
    n <- readLn :: IO Int
    putStrLn $ "O totiente de Euler de " ++ show n ++ " é: " ++ show (eulerTotient n)