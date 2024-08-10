module Fila (Fila, emptyQueue, enqueue, dequeue, first) where

-- Define a estrutura de dados Fila, usando uma lista para armazenar os elementos.
data Fila t = Queue [t]
    deriving (Eq, Show)

-- Cria uma fila vazia.
emptyQueue :: Fila t
emptyQueue = Queue []

-- Adiciona um elemento no final da fila.
enqueue :: Fila t -> t -> Fila t
enqueue (Queue q) x = Queue (q ++ [x])

-- Remove o elemento no começo da fila, se possível.
dequeue :: Fila t -> Fila t
dequeue (Queue []) = error "Empty queue" -- Lança um erro se a fila estiver vazia
dequeue (Queue (_:xs)) = Queue xs

-- Retorna o primeiro elemento da fila, se possível.
first :: Fila t -> t
first (Queue []) = error "Empty queue" -- Lança um erro se a fila estiver vazia
first (Queue (x:_)) = x