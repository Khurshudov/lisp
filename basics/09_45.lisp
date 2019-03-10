;Предположим, что у имени города есть свойства х и у, которые содержат коор- динаты места нахождения города относительно некоторого начала координат. Напишите функцию (РАССТОЯНИЕ a b), вычисляющую расстояние между го- родами а и b.

(defun dist (city1 city2)
    (sqrt
        ((lambda (e1 e2) (+ e1 e2)) 
             ((lambda (x y) (* (- x y) (- x y))) (get 'city1 'a) (get 'city2 'a))
             ((lambda (x y) (* (- x y) (- x y))) (get 'city1 'b) (get 'city2 'b))
        )
    )
)

(setf (get 'city1 'a) 0)
(setf (get 'city1 'b) 0)
(setf (get 'city2 'a) 10)
(setf (get 'city2 'b) 10)

(print (dist 'city1 'city2)) ; 14.142136 
(print (dist 'city2 'city1)) ; 14.142136

(setf (get 'city1 'a) 0)
(setf (get 'city1 'b) 0)
(setf (get 'city2 'a) 0)
(setf (get 'city2 'b) 0)
(print (dist 'city1 'city2)) ;0

(setf (get 'city1 'a) 0)
(setf (get 'city1 'b) 0)
(setf (get 'city2 'a) 3)
(setf (get 'city2 'b) 0)
(print (dist 'city1 'city2)) ;3