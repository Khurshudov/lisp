;Определите функцию, осуществляющую разделение исходного списка на два подсписка. 
;В первый из них должно попасть указанное количество элементов с начала списка,
;во второй — оставшиеся элементы.
(defun split (arr i)
    ((lambda (first rest new-idx) 
            (cond
                ( (null arr) (list NIL NIL))
                ((> i 0)  ((lambda (x) (list (cons first (car x)) (cadr x)))   (split rest new-idx) ) )
                (t  ((lambda (x) (list (car x) (cons first (cadr x))))   (split rest new-idx) ) )
            )
        ) (car arr) (cdr arr) (1- i)
     )
)

(print (split '( -10 1 2 3 4 5 -2 -4) 3)) ; ((-10 1 2) (3 4 5 -2 -4)) 
(print (split '( -10 1) 3)) ; ((-10 1) NIL) 
(print (split '( -10 1 1 1) 3)) ; ((-10 1 1) (1))
(print (split '( -10 1 1 1) 0)) ; (NIL (-10 1 1 1)) 
