-- Exemplo ilustrativo usando o método abs da classe Num

import System.IO

main :: IO ()
main = do
    putStr "Digite um número: "
    hFlush stdout
    input <- getLine
    let x = read input :: Int
    putStrLn $ "O valor absoluto de " ++ show x ++ " é " ++ show (abs x)
