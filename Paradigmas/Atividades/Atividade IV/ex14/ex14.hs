mdc :: Int -> Int -> Int
mdc x 0 = x
mdc x y = mdc y (x `mod` y)

coprimos :: Int -> Int -> Bool
coprimos x y = mdc x y == 1

main = do
    putStrLn "Digite dois números:"
    numeros <- getLine
    let [x, y] = map read (words numeros) :: [Int]
    let verificar = coprimos x y
    print verificar