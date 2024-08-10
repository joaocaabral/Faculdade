mmc :: Int -> Int -> Int
mmc x 0 = x
mmc x y = mmc y (x `mod` y)

main :: IO ()
main = do
    putStrLn "Digite dois números:"
    numeros <- getLine
    let [x, y] = map read (words numeros) :: [Int]
    let resultado = mmc x y
    print resultado