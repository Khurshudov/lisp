;Определите функцию, добавляющую элементы одного списка во второй спи- сок, начиная с заданной позиции.

( defun insert (&key to from pos)
    (cond
        ((and 
              (null to) 
              (null from)
         ) NIL)
        ((> pos 1) (cons (car to) (insert :to (cdr to) :from from :pos (1- pos))))
        ((not (null from)) (cons (car from) (insert :to to :from (cdr from) :pos -1)))
        (t (cons (car to) (insert :to (cdr to) :from from :pos -1)))
    )
)

(print (insert :to '(1 2 3 4 5) :from '(10 20 30 40 50) :pos 2)) ;(1 10 20 30 40 50 2 3 4 5) 
(print (insert :to '(1 2 3 4 5) :from NIL :pos 2)) ;(1 2 3 4 5)