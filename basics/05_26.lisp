;Определите функцию, разбивающую список (a b с d...) на пары ((а b) (с d)...).
( defun split (arr)
    (cond
        ((null arr) NIL)
        (t (cons ( cons (car arr) (list (cadr arr))) (split (cddr arr)) ))
    )
)

(print (split '(1 2 3 4 5))) ; ((1 2) (3 4) (5 NIL))
(print (split '(1 2 3 4 5 6))) ; ((1 2) (3 4) (5 6)) 
(print (split NIL)) ; NIL
(print (split '(1))) ; ((1 NIL)) 
