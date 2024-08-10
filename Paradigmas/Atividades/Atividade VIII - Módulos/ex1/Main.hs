module Main (main) where
import Formas

main :: IO ()
main = do
    print (area (Retangulo 5 2))
    print (area (Circulo 5))
    print (area (Trapezio 5 10 2))