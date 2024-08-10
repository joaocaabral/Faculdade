import Text.Read (readMaybe)

class (Integral x) => MeuInt x where
    par :: x -> Bool           -- A: Método para verificar se um número é par
    impar :: x -> Bool         -- B: Método para verificar se um número é ímpar
    primo :: x -> Bool         -- C: Método para verificar se um número é primo
    mdc :: x -> x -> x         -- D: Método para calcular o máximo divisor comum
    (===) :: x -> x -> Bool    -- E: Operador para verificar se a diferença entre dois números é igual ou menor que 1
    meuMetodo :: x -> x -> Bool  -- F: Novo método a ser implementado (maior que)

    -- Número é par
    par n = n `mod` 2 == 0

    -- Número é ímpar
    impar n = not (par n)

    -- Número é primo
    primo n
        | n <= 1 = False
        | otherwise = null [x | x <- [2..(n-1)], n `mod` x == 0]

    -- Calcular o mdc
    mdc a b
        | b == 0 = a
        | otherwise = mdc b (a `mod` b)

    -- Diferença entre dois números é igual ou menor que 1
    x === y = abs (x - y) <= 1

    -- Novo método
    meuMetodo a b = a > b  -- Exemplo: Retorna True se a for maior que b, caso contrário, retorna False

instance MeuInt Integer
instance MeuInt Int
--instance MeuInt Float where
    --(===) a b = abs (a - b) <= 0.01  -- Define um limite de tolerância para a comparação entre floats

main :: IO ()
main = do
    putStrLn "Digite dois números inteiros (par, impar) separados por espaço:"
    input <- getLine
    let maybeNumbers = mapM readMaybe (words input) :: Maybe [Int]
    case maybeNumbers of
        Just [x, y] -> do
            putStrLn "Par ou ímpar:"
            print $ par x 
            print $ impar y

            putStrLn "Primo:"
            print $ primo x 
            print $ primo y  

            putStrLn "Máximo Divisor Comum (MDC):"
            print $ mdc x y  -- Output: MDC dos dois números

            putStrLn "Diferença igual ou menor que 1:"
            print $ x === y  -- Output: True ou False

            putStrLn "Novo Método:"
            print $ meuMetodo x y  -- Output: True ou False

            putStrLn "Operador para floats:"
            print $ (fromIntegral x :: Float) == (fromIntegral y :: Float)  -- Output: True ou False
        _ -> putStrLn "Entrada inválida. Por favor, digite dois números inteiros separados por espaço."
