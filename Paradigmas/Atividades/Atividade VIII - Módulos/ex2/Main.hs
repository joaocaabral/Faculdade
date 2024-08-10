module Main where

import Ponto

main :: IO ()
main = do
    let ponto1 = Ponto2D (1, 1)
    let ponto2 = Ponto2D (2, 2)
    let ponto3 = Ponto2D (3, 3)
    
    putStrLn $ "Distância entre ponto1 e ponto2: " ++ show (distancia ponto1 ponto2)
    putStrLn $ "Os pontos ponto1, ponto2, e ponto3 são colineares? " ++ show (colineares ponto1 ponto2 ponto3)
    putStrLn $ "Os pontos ponto1, ponto2, e ponto3 podem formar um triângulo? " ++ show (formaTriangulo ponto1 ponto2 ponto3)