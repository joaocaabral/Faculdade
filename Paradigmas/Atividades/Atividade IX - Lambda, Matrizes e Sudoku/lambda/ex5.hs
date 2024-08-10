main = do
    putStrLn "Digite as coordenadas do ponto 1 (x1, y1, z1):"
    x1 <- readLn
    y1 <- readLn
    z1 <- readLn
    putStrLn "Digite as coordenadas do ponto 2 (x2, y2, z2):"
    x2 <- readLn
    y2 <- readLn
    z2 <- readLn
    let distancia = \x1 y1 z1 x2 y2 z2 -> sqrt ((x2 - x1)^2 + (y2 - y1)^2 + (z2 - z1)^2)
    putStrLn $ "A distância entre os pontos é: " ++ show (distancia x1 y1 z1 x2 y2 z2)
