; Definições iniciais do puzzle
(defvar puzzle-w 8) ; Largura do puzzle
(defvar puzzle-h 8) ; Altura do puzzle
(defvar region-coords (make-hash-table)) ; Tabela de hash para armazenar as coordenadas de cada região
(defvar regions (make-array `(,puzzle-w ,puzzle-h) :initial-contents '(
   (a a b b c d e e)
   (a a f b g d d e)
   (f f f h g i j j)
   (k k k h g i i j)
   (l h h h h i i j)
   (l m n n n o p j)
   (m m m m q o o o)
   (r q q q q o s s)
))) ; Definição das regiões do puzzle
(defvar puzzle (make-array `(,puzzle-w ,puzzle-h) :initial-contents '(
   (0 0 0 0 0 0 0 0)
   (0 1 3 0 0 0 0 0)
   (0 0 0 0 0 3 0 0)
   (0 0 3 0 0 0 0 0)
   (0 5 0 3 0 0 0 0)
   (0 2 0 0 0 0 0 0)
   (0 0 0 0 0 0 3 0)
   (0 0 5 3 0 0 0 0)
))) ; Estado inicial do puzzle

;------------------------------------------------------------------------------;

; Macro para executar uma operação "unless"
(defmacro unless* (test &body forms) `(if ,test t (progn ,@forms)))

; Função para acessar elementos de uma matriz
(defun getmatrix (matrix x y) (aref matrix y x))

; Função para definir um par chave-valor em uma tabela de hash
(defun sethash (k v dict) (setf (gethash k dict) v))

; Função para calcular coordenadas adjacentes
(defun coords+ (x y) `((,(1- x) ,y) (,(1+ x) ,y) (,x ,(1- y)) (,x ,(1+ y))))

; Função para gerar uma lista de números em um intervalo
(defun range (u l) (loop for x from (1- u) above l collect x))

; Função para definir o valor de uma célula do puzzle
(defun setpuzzle (x y value) (setf (aref puzzle y x) value))

; Função para obter a região de uma célula do puzzle
(defun getregion (x y) (getmatrix regions x y))

; Função para verificar se uma coordenada está dentro dos limites do puzzle
(defun inbounds (x y) (and (>= x 0) (< x puzzle-w) (>= y 0) (< y puzzle-h)))

; Função para obter as coordenadas de uma região
(defun get-region-coords (x y) (gethash (getregion x y) region-coords))

; Função para obter o tamanho de uma região
(defun get-region-size (x y) (length (get-region-coords x y)))

; Função para obter o valor de uma célula do puzzle
(defun getpuzzle (coord)
   (let ((x (nth 0 coord)) (y (nth 1 coord)))
   (if (inbounds x y) (getmatrix puzzle x y) 0)))

; Função para verificar se duas células estão na mesma região
(defun in-same-region (ax ay bx by) (and
   (inbounds ax ay) (inbounds bx by) (eq (getregion ax ay) (getregion bx by))))

; Função para tentar obter o vizinho de uma célula dentro da mesma região
(defun try-get-region-neighbor (ax ay bx by fallback)
   (if (in-same-region ax ay bx by) (getmatrix puzzle bx by) fallback))

;------------------------------------------------------------------------------;

; Função para obter os valores ortogonais de uma célula
(defun get-orthogonals (x y) (map 'list #'getpuzzle (coords+ x y)))

; Função para obter os valores das células na mesma região
(defun get-region-numbers (x y) (map 'list #'getpuzzle (get-region-coords x y)))

; Função para obter os valores das células na mesma coluna
(defun get-vertical-numbers (x y)
   (let (
      (a (try-get-region-neighbor x y x (1- y) (1+ (get-region-size x y))))
      (b (try-get-region-neighbor x y x (1+ y) -1))
   )
   (range a b)))

; Função para obter os números disponíveis para uma célula
(defun get-available-numbers (x y)
   (let (
      (a (get-orthogonals x y))
      (b (get-region-numbers x y))
      (c (get-vertical-numbers x y))
   )
   (set-difference c (union a b))))

;------------------------------------------------------------------------------;

; Função para mapear as regiões do puzzle e armazenar suas coordenadas
(defun mapregions (x y) (cond
   ((>= y puzzle-h) nil)
   ((>= x puzzle-w) (mapregions 0 (1+ y)))
   (t 
      (let ((region (getregion x y)))
      (if (gethash region region-coords)
         (push `(,x ,y) (gethash region region-coords))
         (sethash region `((,x ,y)) region-coords)
      ))
      (mapregions (1+ x) y))))

; Função principal para resolver o puzzle usando backtracking
(defun solve (x y) (cond
   ((>= x puzzle-w) t)
   ((>= y puzzle-h) (solve (1+ x) 0))
   (t
      (if (= 0 (getmatrix puzzle x y))
         (trynumbers x y (get-available-numbers x y))
         (solve x (1+ y))))))

; Função para tentar preencher os números nas células do puzzle
(defun trynumbers (x y numbers) 
   (when numbers 
      (setpuzzle x y (first numbers))
      (unless* (solve x (1+ y))
         (setpuzzle x y 0)
         (trynumbers x y (rest numbers)))))

; Mapeamento das regiões do puzzle
(mapregions 0 0)

; Impressão da solução do puzzle ou mensagem de falha
(write (if (solve 0 0) puzzle '(no solution found)))