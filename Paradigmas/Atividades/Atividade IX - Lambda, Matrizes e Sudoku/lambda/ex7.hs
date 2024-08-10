main = do
    let numeros = [1..10]
        parImpar = \x -> even x
        resultado = map parImpar numeros
    putStrLn $ "Lista de paridade: " ++ show resultado
