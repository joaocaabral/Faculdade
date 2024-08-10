module Main where

import Arvore

main :: IO ()
main = do 
    putStrLn ("Soma dos Elementos: " ++ show (somaElementos minhaArvore))
    putStrLn ("Busca pelo Elemento 30: " ++ show (buscaElemento minhaArvore 30))
    putStrLn ("Busca pelo Elemento 55: " ++ show (buscaElemento minhaArvore 55))
    putStrLn ("Menor Elemento: " ++ show (minimoElemento minhaArvore))
    putStrLn ("Ocorrências do Elemento 32: " ++ show (ocorrenciasElemento minhaArvore 32))
    putStrLn ("Elementos maiores que 40: " ++ show (maioresQueElemento minhaArvore 40))
    putStrLn ("Média dos Elementos: " ++ show (mediaElementos minhaArvore))
    putStrLn ("Quantidade de Elementos: " ++ show (quantidade minhaArvore))
    putStrLn ("Todos os Elementos: " ++ show (elementos minhaArvore))
