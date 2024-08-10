import Control.Monad (when)

main = do
    putStrLn "Digite o coeficiente a:"
    a <- readLn :: IO Double
    putStrLn "Digite o coeficiente b:"
    b <- readLn :: IO Double
    putStrLn "Digite o coeficiente c:"
    c <- readLn :: IO Double
    let delta = b^2 - 4*a*c
        bhaskara = \a b delta -> if delta < 0 then [] else [(-b + sqrt delta) / (2*a), (-b - sqrt delta) / (2*a)]
    when (delta >= 0) $
        putStrLn $ "As raízes são: " ++ show (bhaskara a b delta)
    when (delta < 0) $
        putStrLn "Não há raízes reais."
