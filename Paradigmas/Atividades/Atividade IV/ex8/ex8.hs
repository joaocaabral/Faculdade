bhask :: Double -> Double -> Double -> (Double, Double)
bhask a b c = 
    let delta = b**2 - 4 * a * c
        raizDelta = sqrt delta
        x1 = (-b + raizDelta) / (2 * a)
        x2 = (-b - raizDelta) / (2 * a)
    in (x1, x2)

main :: IO ()
main = do
    putStrLn "Digite os coeficientes da equação:"
    coeficientes <- getLine
    let [a, b, c] = map read (words coeficientes) :: [Double]
    let (solucao1, solucao2) = bhask a b c
    putStrLn $ "As soluções da equação são: " ++ show solucao1 ++ " e " ++ show solucao2
