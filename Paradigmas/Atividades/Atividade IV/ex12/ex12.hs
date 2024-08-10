mdc :: Int -> Int -> Int
mdc x 0 = x
mdc x y = mdc y (x `mod` y)

mdcTres :: Int -> Int -> Int -> Int
mdcTres x 0 0 = x
mdcTres 0 y 0 = y
mdcTres 0 0 z = z
mdcTres x y 0 = mdc x y
mdcTres x 0 z = mdc x z
mdcTres 0 y z = mdc y z
mdcTres x y z = mdc (mdc x y) z

main :: IO ()
main = do
    putStrLn "Digite três números:"
    entrada <- getLine
    let [x, y, z] = map read (words entrada) :: [Int]
    let resultado = mdcTres x y z
    print resultado