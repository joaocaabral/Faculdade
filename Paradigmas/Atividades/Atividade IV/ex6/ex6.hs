triangulo :: Float -> Float -> Float -> Bool
triangulo x y z = x + y > z && x + z > y && y + z > x

main :: IO ()
main = do
    xStr <- getLine
    yStr <- getLine
    zStr <- getLine

    let x = read xStr :: Float
        y = read yStr :: Float
        z = read zStr :: Float
        podeTriangulo = triangulo x y z

    if podeTriangulo
        then putStrLn "É possível"
        else putStrLn "Não é possível"