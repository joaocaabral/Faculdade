Fixity Declarations
Em Haskell, você pode definir a associatividade e a precedência de um operador usando declarações de fixity. As declarações possíveis são:

infixl: O operador é associativo à esquerda.
infixr: O operador é associativo à direita.
infix: O operador não é associativo.
A precedência é um número entre 0 e 9, onde 9 é a maior precedência (como a aplicação de função) e 0 é a menor. Por exemplo, o operador de multiplicação * tem uma precedência mais alta (7) do que a adição + (6), o que reflete a regra matemática convencional de que a multiplicação vem antes da adição em expressões sem parênteses.

Exemplo Ilustrativo
Vamos criar dois operadores customizados, *** e +++, dentro de um módulo. O operador * ** será usado para multiplicação potencializada, enquanto o +++ será uma forma de adição que concatena listas ou soma números.

-> Módulo CustomOperators.hs
    module CustomOperators ( (***) , (+++)) where

    -- Definição dos operadores com suas fixidades
    infixl 7 ***  -- Associativo à esquerda com precedência 7, como a multiplicação
    infixl 6 +++  -- Associativo à esquerda com precedência 6, como a adição

    -- Definição de *** para multiplicação potencializada
    (***) :: Num a => a -> a -> a
    x *** y = x ^ y  -- Simplesmente eleva x à potência y

    -- Definição de +++ para concatenar listas ou somar números
    (+++) :: Num a => a -> a -> a
    x +++ y = x + y

-> Módulo Main.hs
    import CustomOperators

    main :: IO ()
    main = do
        putStrLn "Demonstração de Custom Operators:"
        print $ 2 *** 3 +++ 4 -- Isso será interpretado como (2^3) + 4 devido à precedência
        print $ 2 +++ 3 *** 4 -- Isso será interpretado como 2 + (3^4) devido à precedência
