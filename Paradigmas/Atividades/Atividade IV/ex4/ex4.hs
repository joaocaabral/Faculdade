xor :: Bool -> Bool -> Bool
xor x y | x == y = False
        | otherwise = True

main :: IO ()
main = do
    xStr <- getLine
    yStr <- getLine
    let x = read xStr :: Bool
        y = read yStr :: Bool
        res = xor x y
    print res