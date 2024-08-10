--Enumerações são uma maneira de definir tipos de dados que consistem em um conjunto fixo de valores distintos. 
--Isso é feito usando a palavra-chave ´data´ para definir o tipo e listando os valores possíveis separados por barras verticais ´|´

-- Definição de uma enumeração para dias da semana
data DiaSemana = Segunda | Terca | Quarta | Quinta | Sexta | Sabado | Domingo
    deriving (Show)  -- Para habilitar a exibição dos valores na tela

-- Função para verificar se um dia é final de semana
ehFinalDeSemana :: DiaSemana -> Bool
ehFinalDeSemana Sabado = True
ehFinalDeSemana Domingo = True
ehFinalDeSemana _ = False

-- Exemplo de uso da enumeração
main :: IO ()
main = do
    putStrLn "Digite um dia da semana:"
    dia <- getLine
    let diaEnum = case dia of
                    "segunda" -> Segunda
                    "terca" -> Terca
                    "quarta" -> Quarta
                    "quinta" -> Quinta
                    "sexta" -> Sexta
                    "sabado" -> Sabado
                    "domingo" -> Domingo
                    _ -> error "Dia da semana inválido"
    putStrLn $ "O dia digitado é " ++ show diaEnum
    putStrLn $ if ehFinalDeSemana diaEnum then "É final de semana." else "Não é final de semana."
