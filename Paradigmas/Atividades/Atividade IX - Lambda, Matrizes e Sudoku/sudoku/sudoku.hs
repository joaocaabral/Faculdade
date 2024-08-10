import Data.List (transpose, nub, sort, (\\))

type Sudoku = [[Int]]

-- Verifica se uma solução de Sudoku é válida
ehSolucaoValidaSudoku :: Sudoku -> Bool
ehSolucaoValidaSudoku matriz = all verificaGrupo (linhas ++ colunas ++ blocos)
  where
    linhas = matriz
    colunas = transpose matriz
    blocos = [concat [take 3 . drop (3 * k) $ matriz !! (i + 3 * j) | k <- [0..2]] | i <- [0..2], j <- [0..2]]
    verificaGrupo grupo = sort grupo == [1..9]

-- Atualiza um elemento na matriz na posição (i, j)
atualiza :: Int -> Int -> Int -> Sudoku -> Sudoku
atualiza i j num tab = take i tab ++ [take j (tab !! i) ++ [num] ++ drop (j + 1) (tab !! i)] ++ drop (i + 1) tab

-- Retorna os possíveis valores para a posição (i, j) de acordo com as regras do Sudoku
possiveisValores :: Int -> Int -> Sudoku -> [Int]
possiveisValores i j tab = [1..9] \\ nub (linha ++ coluna ++ bloco)
  where
    linha = tab !! i
    coluna = transpose tab !! j
    bloco = concatMap (take 3 . drop (3 * (j `div` 3))) . take 3 . drop (3 * (i `div` 3)) $ tab

-- Resolver o Sudoku usando backtracking
resolverSudoku :: Sudoku -> [Sudoku]
resolverSudoku tab = resolver 0 0 tab
  where
    resolver 9 0 tab = [tab]  -- Successfully filled the Sudoku
    resolver i j tab
      | tab !! i !! j /= 0 = resolver (nextI i j) (nextJ j) tab
      | otherwise = concat [resolver (nextI i j) (nextJ j) (atualiza i j num tab) | num <- possiveisValores i j tab]
    nextI i j = if j == 8 then i + 1 else i
    nextJ j = if j == 8 then 0 else j + 1

-- Função principal para executar e imprimir a solução
main :: IO ()
main = do
  let sudoku = [[5,3,0,0,7,0,0,0,0],
                [6,0,0,1,9,5,0,0,0],
                [0,9,8,0,0,0,0,6,0],
                [8,0,0,0,6,0,0,0,3],
                [4,0,0,8,0,3,0,0,1],
                [7,0,0,0,2,0,0,0,6],
                [0,6,0,0,0,0,2,8,0],
                [0,0,0,4,1,9,0,0,5],
                [0,0,0,0,8,0,0,7,9]]
  let solucoes = resolverSudoku sudoku
  if null solucoes
    then putStrLn "Nenhuma solução encontrada."
    else mapM_ (putStrLn . unlines . map show) solucoes
