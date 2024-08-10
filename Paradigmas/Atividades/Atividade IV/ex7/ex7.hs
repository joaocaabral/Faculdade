fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

main :: IO ()
main = do
    nStr <- getLine

    let n = read nStr :: Int
        nFib = fib n
    
    print nFib