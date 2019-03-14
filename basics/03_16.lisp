;Определите функцию, добавляющую элементы одного списка во второй спи- сок, начиная с заданной позиции.

( defun insert (arr1 arr2 idx)
    (cond
        ((and 
              (null arr1) 
              (null arr2)
         ) NIL)
        ((> idx 1) (cons (car arr1) (insert (cdr arr1) arr2 (1- idx))))
        ((not (null arr2)) (cons (car arr2) (insert arr1 (cdr arr2) -1)))
        (t (cons (car arr1) (insert (cdr arr1) arr2 -1)))
    )
)

(print (insert '(1 2 3 4 5) '(10 20 30 40 50) 2)) ;(1 10 20 30 40 50 2 3 4 5) 
(print (insert '(1 2 3 4 5) NIL 2)) ;(1 2 3 4 5)
