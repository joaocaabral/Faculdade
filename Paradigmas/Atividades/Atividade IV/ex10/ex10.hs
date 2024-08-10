-- Função para encontrar o maior entre três valores
maiorValor :: (Int, Int, Int) -> Int
maiorValor (x, y, z) = max (max x y) z

main :: IO ()
main = do
    putStrLn "Digite três valores:"
    valores <- getLine
    let [x, y, z] = map read (words valores) :: [Int]
    let maior = maiorValor (x, y, z)
    putStrLn $ "O maior valor é: " ++ show maior
