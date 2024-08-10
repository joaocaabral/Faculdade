-- Exemplo de uso de type
-- Permite criar sinônimos de tipos
type Nome = String

-- Exemplo de uso de data
-- Permite definir novos tipos de dados com múltiplos construtores
data Cor = Vermelho | Verde | Azul

-- Exemplo de uso de newtype
-- Permite criar novos tipos de dados com uma única variante de construtor
-- É eficiente em termos de representação, pois é removido em tempo de compilação
newtype Metros = Metros Float

-- Função que converte metros para polegadas
converterParaPolegadas :: Metros -> Float
converterParaPolegadas (Metros m) = m * 39.3701
