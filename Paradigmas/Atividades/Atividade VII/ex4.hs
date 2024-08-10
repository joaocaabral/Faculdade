-- Exemplo ilustrativo usando os métodos ceiling e floor da classe RealFrac:

import System.IO

main :: IO ()
main = do
    putStr "Digite um número real: "
    hFlush stdout
    input <- getLine
    let x = read input :: Double
    putStrLn $ "O teto de " ++ show x ++ " é " ++ show (ceiling x)
    putStrLn $ "O chão de " ++ show x ++ " é " ++ show (floor x)