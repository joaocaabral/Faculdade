import Data.List (transpose)

-- a) Soma de Elementos de uma Matriz
somaMatriz :: [[Int]] -> Int
somaMatriz = sum . map sum

-- b) Soma de Duas Matrizes
somaDuasMatrizes :: [[Int]] -> [[Int]] -> [[Int]]
somaDuasMatrizes a b = zipWith (zipWith (+)) a b

-- c) Verificar se uma Matriz é um Quadrado Mágico
ehQuadradoMagico :: [[Int]] -> Bool
ehQuadradoMagico matriz
  | null matriz = False  -- Adiciona um caso para matriz vazia.
  | otherwise = all (== head somas) somas
  where
    somasLinhas = map sum matriz
    somasColunas = map sum $ transpose matriz
    diagonalPrincipal = sum [matriz !! i !! i | i <- [0..length matriz - 1]]
    diagonalSecundaria = sum [matriz !! i !! (length matriz - 1 - i) | i <- [0..length matriz - 1]]
    somas = somasLinhas ++ somasColunas ++ [diagonalPrincipal, diagonalSecundaria]

-- d) Verificar se uma Matriz é uma Matriz de Permutação
ehMatrizPermutacao :: [[Int]] -> Bool
ehMatrizPermutacao matriz = all ehLinhaValida matriz && all ehLinhaValida (transpose matriz)
  where
    ehLinhaValida linha = length (filter (== 1) linha) == 1 && sum linha == 1

-- e) Placeholder para resolver um Quadrado Mágico Incompleto
resolverQuadradoMagico :: [[Int]] -> [[Int]]
resolverQuadradoMagico matriz = matriz  -- Implementação de backtracking necessária aqui.

-- Função principal para testes
main :: IO ()
main = do
    let matriz1 = [[1, 2], [3, 4]]
        matriz2 = [[2, 0], [1, 2]]
        quadradoMagico = [[2, 7, 6], [9, 5, 1], [4, 3, 8]]
        matrizPermutacao = [[0, 0, 0, 1], [0, 1, 0, 0], [1, 0, 0, 0], [0, 0, 1, 0]]

    print $ "Soma da Matriz: " ++ show (somaMatriz matriz1)
    print $ "Soma de Duas Matrizes: " ++ show (somaDuasMatrizes matriz1 matriz2)
    print $ "É Quadrado Mágico: " ++ show (ehQuadradoMagico quadradoMagico)
    print $ "É Matriz de Permutação: " ++ show (ehMatrizPermutacao matrizPermutacao)
    print $ "Resolvendo Quadrado Mágico Incompleto: " ++ show (resolverQuadradoMagico [[0, 12, 12], [16, 10, 0], [8, 0, 0]])
