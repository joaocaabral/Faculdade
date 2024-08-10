
data Arvore = Null | No Int Arvore Arvore

minhaArvore :: Arvore
minhaArvore = No 52 (No 32 (No 12 Null Null) (No 35 Null Null)) (No 56 (No 55 Null Null) (No 64 Null Null))

somaElementos :: Arvore -> Int
somaElementos Null = 0
somaElementos (No n esq dir) = n + (somaElementos esq) + (somaElementos dir)

buscaElemento :: Arvore -> Int -> Bool
buscaElemento Null _ = False
buscaElemento (No n esq dir) x 
    | (n == x) = True                           
    | otherwise = (buscaElemento esq x) || (buscaElemento dir x)

limiteSup :: Int
limiteSup = 1000 --Define um limite superior para o maior número

minimo :: Int -> Int -> Int
minimo x y | (x < y) = x
           | otherwise = y

minimoElemento :: Arvore -> Int
minimoElemento Null = limiteSup 
minimoElemento (No n esq dir) = 
    minimo n (minimo (minimoElemento esq) (minimoElemento dir))

-- A: Função para contar ocorrências de um elemento na árvore
ocorrenciasElemento :: Arvore -> Int -> Int
ocorrenciasElemento Null _ = 0
ocorrenciasElemento (No n esq dir) x
    | n == x = 1 + ocorrenciasElemento esq x + ocorrenciasElemento dir x
    | otherwise = ocorrenciasElemento esq x + ocorrenciasElemento dir x

-- B: Função para contar números maiores que um elemento na árvore
maioresQueElemento :: Arvore -> Int -> Int
maioresQueElemento Null _ = 0
maioresQueElemento (No n esq dir) x
    | n > x = 1 + maioresQueElemento esq x + maioresQueElemento dir x
    | otherwise = maioresQueElemento esq x + maioresQueElemento dir x

-- C: Função para calcular a média dos elementos na árvore
mediaElementos :: Arvore -> Float
mediaElementos arvore = fromIntegral (somaElementos arvore) / fromIntegral (quantidade arvore)
    where
        somaElementos :: Arvore -> Int
        somaElementos Null = 0
        somaElementos (No n esq dir) = n + somaElementos esq + somaElementos dir

        quantidade :: Arvore -> Int
        quantidade Null = 0
        quantidade (No _ esq dir) = 1 + quantidade esq + quantidade dir

-- D: Função para contar a quantidade de elementos na árvore
quantidade :: Arvore -> Int
quantidade Null = 0
quantidade (No _ esq dir) = 1 + quantidade esq + quantidade dir

-- E: Função para obter todos os elementos da árvore em uma lista
elementos :: Arvore -> [Int]
elementos Null = []
elementos (No n esq dir) = n : (elementos esq ++ elementos dir)
                               
main = do 
    putStrLn (show (somaElementos minhaArvore))
    putStrLn (show (buscaElemento minhaArvore 30))
    putStrLn (show (buscaElemento minhaArvore 55))
    putStrLn (show (minimoElemento minhaArvore))

    putStrLn (show (ocorrenciasElemento minhaArvore 32))
    putStrLn (show (maioresQueElemento minhaArvore 40))
    putStrLn (show (mediaElementos minhaArvore))
    putStrLn (show (quantidade minhaArvore))
    putStrLn (show (elementos minhaArvore))
