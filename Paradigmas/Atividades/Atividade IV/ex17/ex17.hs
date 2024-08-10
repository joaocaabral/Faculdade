isPrime :: Int -> Bool
isPrime n
    | n <= 1 = False
    | otherwise = all (\x -> n `mod` x /= 0) [2..(floor . sqrt $ fromIntegral n)]

main :: IO ()
main = do
    putStrLn "Digite um número:"
    n <- readLn :: IO Int
    if isPrime n
        then putStrLn $ show n ++ " é primo."
        else putStrLn $ show n ++ " não é primo."
