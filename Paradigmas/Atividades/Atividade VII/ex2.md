*Polimorfismo universal
    - Por Inclusão (Subtyping): Também chamado de polimorfismo de subtipo, permite que um objeto de um tipo mais especifico seja tratado como de um tipo mais genérico. É útil em situações em que uma função espera um tipo genérico, mas pode receber específicos que são subtipos desse genérico.

    - Paramétrico: Também conhecido por polimorfismo de tipo genérico, permite que funções e tipos sejam parametrizados por um ou mais tipos. Isso permite escrever funções que operam de maneira uniforme sobre diferentes tipos de dados

*Polimorfismo ad-hoc
    - Sobrecarga (Overloading): Permite que uma função ou porador tenha vários significados, dependendo do tipo de seus argumentos. Isso é alcançado atráves da definição de várias instâncias da mesma função ou operador para diferentes tipo de dados.

    - Coerção (Coercion): Permite que um valor de um tipo seja automaticamente convertido para outro tipo de forma implícita ou explícita. Isso é comumm em linguagens de programação que suportam conversões automáticas entre tipos compatíveis.

*Polimorfismo universal x ad-hoc
Polimorfismo universal refere-se à capacidade de lidar com diferentes 
tipos de dados de maneira genérica, enquanto o polimorfismo ad-hoc 
refere-se à capacidade de lidar com diferentes tipos de dados de 
maneira específica, seja sobrecarregando funções ou operadores, ou 
realizando conversões automáticas entre tipos. 
Ambos os tipos de polimorfismo são fundamentais para escrever código 
flexível e reutilizável em linguagens de programação.

-- Universal
head :: [a] -> a
head (x:_) = x
head []    = error "Lista vazia!"

main :: IO ()
main = do
    let numbers = [1, 2, 3, 4, 5] :: [Int]
        chars = ['a', 'b', 'c'] :: [Char]
    print $ head numbers  -- Output: 1
    print $ head chars    -- Output: 'a'

-- AD-hoc (Sobrecarga)
soma :: Num a => a -> a -> a
soma x y = x + y

main :: IO ()
main = do
    let numSum = soma (5 :: Int) (3 :: Int)        -- Somando dois inteiros
        floatSum = soma (2.5 :: Float) (3.7 :: Float)  -- Somando dois números de ponto flutuante
        strConcat = soma "Hello, " "World!"      -- Concatenando duas strings
    print numSum        -- Output: 8
    print floatSum      -- Output: 6.2
    print strConcat     -- Output: "Hello, World!"