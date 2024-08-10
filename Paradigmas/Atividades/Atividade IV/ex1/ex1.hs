expo :: Int -> Int -> Int
expo x y = x ^ y

main = do
    xString <- getLine
    yString <- getLine
    let x = read xString :: Int
        y = read yString :: Int
        res = expo x y
    print res
