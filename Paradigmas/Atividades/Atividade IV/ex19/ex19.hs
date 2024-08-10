isPrime :: Int -> Bool
isPrime n
    | n <= 1 = False
    | otherwise = all (\x -> n `mod` x /= 0) [2..(floor . sqrt $ fromIntegral n)]

primesUntil :: Int -> [Int]
primesUntil n = filter isPrime [2..n]

findPrimeSummand :: Int -> Maybe Int
findPrimeSummand n
    | n <= 2 || odd n = Nothing  -- Números menores ou iguais a 2 ou ímpares não são válidos
    | otherwise = case filter (\p -> isPrime (n - p)) (primesUntil n) of
                    []    -> Nothing
                    (x:_) -> Just x

main :: IO ()
main = do
    putStrLn "Digite um número par maior que 2:"
    n <- readLn :: IO Int
    case findPrimeSummand n of
        Just prime -> putStrLn $ "Um dos números primos que fazem parte da soma é: " ++ show prime
        Nothing    -> putStrLn "Não foi possível encontrar um número primo que faça parte da soma."
