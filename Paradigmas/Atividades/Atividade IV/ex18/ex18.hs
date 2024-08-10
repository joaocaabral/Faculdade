applyOperation :: Char -> Double -> Double -> Maybe Double
applyOperation '+' x y = Just (x + y)
applyOperation '-' x y = Just (x - y)
applyOperation '*' x y = Just (x * y)
applyOperation '/' x y
    | y == 0    = Nothing -- Divisão por zero não é permitida
    | otherwise = Just (x / y)
applyOperation _ _ _    = Nothing -- Operador inválido

main :: IO ()
main = do
    putStrLn "Digite o operador (+, -, *, /):"
    operator <- getLine
    putStrLn "Digite o número x:"
    x <- readLn :: IO Double
    putStrLn "Digite o número y:"
    y <- readLn :: IO Double
    case operator of
        (op:_) -> case applyOperation op x y of
            Just result -> putStrLn $ "O resultado da operação é: " ++ show result
            Nothing     -> putStrLn "Operação inválida ou divisão por zero."
        _      -> putStrLn "Operador inválido."