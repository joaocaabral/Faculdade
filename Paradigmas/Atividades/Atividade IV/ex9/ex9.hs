-- Definição do tipo Ponto3D
data Ponto3D = Ponto3D Float Float Float

-- Função para calcular a distância entre dois pontos 3D
distancia3D :: Ponto3D -> Ponto3D -> Float
distancia3D (Ponto3D x1 y1 z1) (Ponto3D x2 y2 z2) = sqrt ((x2 - x1) ** 2 + (y2 - y1) ** 2 + (z2 - z1) ** 2)

main :: IO ()
main = do
    putStrLn "Digite as coordenadas do primeiro ponto (x1 y1 z1):"
    entrada1 <- getLine
    let [x1, y1, z1] = map read (words entrada1) :: [Float]

    putStrLn "Digite as coordenadas do segundo ponto (x2 y2 z2):"
    entrada2 <- getLine
    let [x2, y2, z2] = map read (words entrada2) :: [Float]

    let ponto1 = Ponto3D x1 y1 z1
    let ponto2 = Ponto3D x2 y2 z2
    let dist = distancia3D ponto1 ponto2
    
    putStrLn $ "A distância entre os dois pontos é: " ++ show dist