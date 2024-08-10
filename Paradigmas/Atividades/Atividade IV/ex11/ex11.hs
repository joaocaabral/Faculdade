mdc :: Int -> Int -> Int
mdc x 0 = x
mdc x y = mdc y (x `mod` y)

main :: IO ()
main = do
    putStrLn "Digite dois números:"
    numeros <- getLine
    let [x, y] = map read (words numeros) :: [Int]
    let resultado = mdc x y
    print resultado