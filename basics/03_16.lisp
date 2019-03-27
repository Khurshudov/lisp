;Определите функцию, добавляющую элементы одного списка во второй спи- сок, начиная с заданной позиции.
( defun insert (&key to from pos)
    ((lambda (first-to rest-to first-from rest-from) 
        (cond
            ((and 
                  (null to) 
                  (null from)
             ) NIL)
            ((> pos 1) (cons first-to (insert :to rest-to :from from :pos (1- pos))))
            ((not (null from)) (cons first-from (insert :to to :from rest-from :pos -1)))
            (t (cons first-to (insert :to rest-to :from from :pos -1)))
        )
    ) (car to) (cdr to) (car from) (cdr from)
    )
)

(print (insert :to '(1 2 3 4 5) :from '(10 20 30 40 50) :pos 2)) ;(1 10 20 30 40 50 2 3 4 5) 
(print (insert :to '(1 2 3 4 5) :from NIL :pos 2)) ;(1 2 3 4 5)
