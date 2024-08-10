area :: Float -> Float -> Float
area x y = (x * y) / 2.0

main = do
    xString <- getLine
    yString <- getLine
    let x = read xString :: Float
        y = read yString :: Float
        res = area x y
    print res
