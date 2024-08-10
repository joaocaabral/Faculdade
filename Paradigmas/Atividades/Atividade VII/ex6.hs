-- Exemplo ilustrativo usando os métodos min e max da classe Ord

import System.IO

main :: IO ()
main = do
    putStr "Digite dois números inteiros separados por espaço: "
    hFlush stdout
    input <- getLine
    let [x, y] = map read (words input) :: [Int]
    putStrLn $ "O menor número entre " ++ show x ++ " e " ++ show y ++ " é " ++ show (min x y)
    putStrLn $ "O maior número entre " ++ show x ++ " e " ++ show y ++ " é " ++ show (max x y)