;Определите функцию, осуществляющую разделение исходного списка на два подсписка. В первый из них должно попасть указанное количество элементов с начала списка, во второй — оставшиеся элементы.

(defun appen (l1 l2)
    (cond
        ( (null l1) l2 )
        ( t (cons (car l1) (appen (CDR L1) l2 ) ))
    )
)

(defun split (arr first last i)
    (cond
        ( (null arr) (list first last))
        ( (> i 0) (split (cdr arr) (appen first (list (car arr))) last (- i 1)) )
        ( t (split (cdr arr) first (appen last (list (car arr))) (- i 1)))
    )
)

(print (split '( -10 1 2 3 4 5 -2 -4) NIL NIL 3)) ; ((-10 1 2) (3 4 5 -2 -4)) 
(print (split '( -10 1) NIL NIL 3)) ; ((-10 1) NIL) 
(print (split '( -10 1 1 1) NIL NIL 3)) ; ((-10 1 1) (1))