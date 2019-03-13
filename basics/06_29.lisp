;Определите функцию, вычисляющую глубину списка (самой глубокой ветви).

(defun incr (a)
    (+ a 1)
)

( defun depth (arr cur_d)
    (cond
        ((null arr) cur_d)
        (t ((lambda (a b) (cond 
                              ((> a b) a)
                              (t b)
                          )) 
               (depth (cadr arr) (incr cur_d)) 
               (depth (caddr arr) (incr cur_d)))
           )
    )
)

(print (depth '(A NIL (B (C NIL NIL) NIL)) 0)) ; 3
(print (depth NIL 0)) ; 0
(print (depth '(1 NIL NIL) 0)) ; 1