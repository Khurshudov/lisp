;Определите функцию, вычисляющую глубину списка (самой глубокой ветви).

( defun depth (arr)
    (cond
        ((null arr) 0)
        (t ((lambda (a b) (cond 
                              ((> a b) a)
                              (t b)
                          )) 
               (1+ (depth (cadr arr)))
               (1+ (depth (caddr arr))))
           )
    )
)

(print (depth '(A NIL (B (C NIL NIL) NIL)))) ; 3
(print (depth NIL)) ; 0
(print (depth '(1 NIL NIL))) ; 1
