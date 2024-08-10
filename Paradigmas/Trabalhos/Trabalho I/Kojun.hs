module Kojun where

import Data.Array
import Data.Array.IO
import Data.List
import Data.Map (Map)
import qualified Data.Map as Map

--------------------------------------------------------------------------------
-- Configuração inicial do puzzle

-- Sinônimo de tipo para representar o Puzzle
type Puzzle = IOArray Int Int
type Coord = (Int, Int)

-- Configurações e definições do tabuleiro do puzzle
puzzleW, puzzleH :: Int
puzzleW = 8
puzzleH = 8

---------------------------------------------------------------------------------

-- Mapa das regiões do puzzle, cada célula do tabuleiro pertence a uma região
regions = newRegionMatrix (puzzleW, puzzleH)
   ["a","a","b","b","c","d","e","e"
   ,"a","a","f","b","g","d","d","e"
   ,"f","f","f","h","g","i","j","j"
   ,"k","k","k","h","g","i","i","j"
   ,"l","h","h","h","h","i","i","j"
   ,"l","m","n","n","n","o","p","j"
   ,"m","m","m","m","q","o","o","o"
   ,"r","q","q","q","q","o","s","s"]

-- Coordenadas de cada região, agrupadas por identificador de região
regionCoords =
   let
      mapRegions (x, y) dict
         | y > puzzleH = dict
         | x > puzzleW = mapRegions (1, y + 1) dict
         | otherwise =
            mapRegions (x + 1, y) (Map.insertWith (++) (getRegion (x, y))
                                                       [(x, y)] dict)
   in do
      mapRegions (1, 1) Map.empty

--------------------------------------------------------------------------------
-- Função de solução de backtracking

solve puzzle (x, y)
   | y > puzzleH = return True  -- Se exceder a altura, puzzle está solucionado
   | x > puzzleW = solve puzzle (1, y + 1)  -- Move para a próxima linha
   | otherwise =
      let    
         tryNumbers puzzle (x, y) [] = return False
         tryNumbers puzzle (x, y) (guess:rest) = do  
            setPuzzle puzzle (x, y) guess
            solution <- solve puzzle (x + 1, y)
            if solution then
               return True
            else
               setPuzzle puzzle (x, y) 0 >> tryNumbers puzzle (x, y) rest
      in do
         value <- getPuzzle puzzle (x, y)
         case value of
            0 -> getAvailableNumbers puzzle (x, y) >>= tryNumbers puzzle (x, y)
            _ -> solve puzzle (x + 1, y)

--------------------------------------------------------------------------------
-- Funções auxiliares para obter números disponíveis

getAvailableNumbers p (x, y) = do
   a <- getOrthogonalNumbers p (x, y)
   b <- getRegionNumbers p (x, y)
   c <- getVerticalNumbers p (x, y)
   return (c \\ (a `union` b))

getOrthogonalNumbers p (x, y) =
   mapM (getPuzzle p) [(x - 1, y), (x + 1, y), (x, y - 1), (x, y + 1)]

getRegionNumbers p (x, y) = mapM (getPuzzle p) (getRegionCoords (x, y))

getVerticalNumbers p (x, y) =
   let
      getRegionSize coord = length (getRegionCoords coord)
      inSameRegion a b = inbounds a && inbounds b && getRegion a == getRegion b
      tryGetRegionNeighbor a b fallback | inSameRegion a b = getPuzzle p b
                                        | otherwise = return fallback
   in do
      a <- tryGetRegionNeighbor (x, y) (x, y + 1) 0
      b <- tryGetRegionNeighbor (x, y) (x, y - 1) (getRegionSize (x, y) + 1)
      return [(a + 1)..(b - 1)]

--------------------------------------------------------------------------------

-- Verifica se o puzzle está completamente solucionado
isSolved :: Puzzle -> IO Bool
isSolved puzzle = do
    -- Obtem todos os valores do puzzle e verifica se todos são diferentes de zero
    values <- mapM (getPuzzle puzzle) [(x, y) | x <- [1..puzzleW], y <- [1..puzzleH]]
    return $ all (/= 0) values

--------------------------------------------------------------------------------
-- Estrutura de dados e funções básicas

newRegionMatrix (w, h) = listArray (1, w * h)

getRegion coord = regions ! coordToIndex coord

getRegionCoords coord = regionCoords Map.! getRegion coord

newPuzzleMatrix (w, h) = newListArray (1, w * h)

getPuzzle :: Num e => IOArray Int e -> (Int, Int) -> IO e
getPuzzle p coord | inbounds coord = readArray p (coordToIndex coord)
                  | otherwise = return 0

setPuzzle p coord value = writeArray p (coordToIndex coord) value

printPuzzle p =
   let
      spot x = (putStr . show) x >> putStr " "
      line y = mapM_ (\x -> getPuzzle p (x, y) >>= spot) [1..puzzleW]
   in
      mapM_ (\y -> line y >> putStr "\n") [1..puzzleH]

inbounds (x, y) = x >= 1 && x <= puzzleW && y >= 1 && y <= puzzleH

coordToIndex (x, y) = (y - 1) * puzzleW + x