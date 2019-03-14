;Предположим, что у имени города есть свойства х и у, которые содержат коор- динаты места нахождения города
;относительно некоторого начала координат. Напишите функцию (РАССТОЯНИЕ a b),
;вычисляющую расстояние между городами а и b.

(defun ^2 (x)
    (* x x)
)

(defun set-city (name x y)
    (setf (get name 'x) x)
    (setf (get name 'y) y)
)

(defun get-coords (name)
    (list (get name 'x) (get name 'y))
)

(defun dist (c1 c2)
    (sqrt
        ((lambda (l1 l2) ( +
                            (^2  (- (car l1) (car l2)))
                            (^2  (- (cadr l1) (cadr l2)))
                         )
         ) (get-coords c1) (get-coords c2)
        )
    )
)

(set-city 'city1 0 0)
(set-city 'city2 10 10)
(set-city 'city3 5 7)
(print (dist 'city1 'city2)) ; 14.142136 
(print (dist 'city1 'city1)) ; 0
(print (dist 'city1 'city3)) ; 8.602325 
(print (dist 'city3 'city2)) ; 5.8309517 


