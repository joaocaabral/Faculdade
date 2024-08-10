module Ponto (Ponto(..), distancia, colineares, formaTriangulo) where

data Ponto = Ponto2D (Float, Float) deriving (Show, Eq)

distancia :: Ponto -> Ponto -> Float
distancia (Ponto2D (x1, y1)) (Ponto2D (x2, y2)) = sqrt ((x2 - x1) ** 2 + (y2 - y1) ** 2)

colineares :: Ponto -> Ponto -> Ponto -> Bool
colineares (Ponto2D (x1, y1)) (Ponto2D (x2, y2)) (Ponto2D (x3, y3)) = (x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)) == 0

formaTriangulo :: Ponto -> Ponto -> Ponto -> Bool
formaTriangulo p1 p2 p3 = not (colineares p1 p2 p3)