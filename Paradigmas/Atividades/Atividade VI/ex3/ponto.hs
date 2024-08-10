-- Definição do tipo Ponto2D
data Ponto2D = Ponto2D Float Float

-- Função para calcular a distância entre dois pontos 2D
distancia :: Ponto2D -> Ponto2D -> Float
distancia (Ponto2D x1 y1) (Ponto2D x2 y2) = sqrt ((x2 - x1) ** 2 + (y2 - y1) ** 2)

main :: IO ()
main = do
    putStrLn "Digite as coordenadas do primeiro ponto (x1 y1):"
    entrada1 <- getLine
    let [x1, y1] = map read (words entrada1) :: [Float]

    putStrLn "Digite as coordenadas do segundo ponto (x2 y2):"
    entrada2 <- getLine
    let [x2, y2] = map read (words entrada2) :: [Float]

    let ponto1 = Ponto2D x1 y1
    let ponto2 = Ponto2D x2 y2
    let dist = distancia ponto1 ponto2
    
    putStrLn $ "A distância entre os dois pontos é: " ++ show dist
