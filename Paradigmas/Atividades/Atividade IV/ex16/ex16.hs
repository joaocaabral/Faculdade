isDivisible :: Int -> Int -> Bool
isDivisible x y = x `mod` y == 0

main :: IO ()
main = do
    putStrLn "Digite o número x e y:"
    numeros <- getLine
    let [x, y] = map read (words numeros) :: [Int]
    if isDivisible x y
        then putStrLn $ show x ++ " é divisível por " ++ show y
        else putStrLn $ show x ++ " não é divisível por " ++ show y
