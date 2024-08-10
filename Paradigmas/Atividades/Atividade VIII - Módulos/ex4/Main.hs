import Fila

main :: IO ()
main = do
    let q = emptyQueue
    let q1 = enqueue q 1
    let q2 = enqueue q1 2
    let q3 = enqueue q2 3
    putStrLn $ "Estado da fila após enfileirar 1, 2, 3: " ++ show q3
    putStrLn $ "Primeiro elemento da fila: " ++ show (first q3)
    let q4 = dequeue q3
    putStrLn $ "Estado da fila após desenfileirar: " ++ show q4
    putStrLn $ "Novo primeiro elemento da fila: " ++ show (first q4)