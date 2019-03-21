;Определите функцию, разделяющую исходный список на два подсписка. В первый из них должны попасть элементы 
;с нечетными номерами,во второй — элементы с четными номерами.
(defun split (arr)
    ( 
         (lambda (first second rest) 
             (
                 cond
                    ( (null arr) (list NIL NIL))
                    ((null second) (list (list first) NIL))
                    (T (list 
                            (cons first (car (split rest))) 
                            (cons second (cadr (split rest))) 
                       )
                    )
             )
        ) (car arr) (cadr arr) (cddr arr)
    )
)

(print (split '( 1 2 3 4 5 6 7 8 9 ))) ;((-10 2 4 -2) (1 3 5 -4)) 
(print (split '( -10))) ;((-10) NIL) 
(print (split NIL)) ;(NIL NIL) 
