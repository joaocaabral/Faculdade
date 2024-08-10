media :: Float -> Float -> Float -> Bool
media a b c = ((a + b + c)/3) >= 6

main :: IO ()
main = do
    aStr <- getLine
    bStr <- getLine
    cStr <- getLine

    let a = read aStr :: Float
        b = read bStr :: Float
        c = read cStr :: Float
        passou = media a b c

    if passou
        then putStrLn "Aprovado"
        else putStrLn "Reprovado"