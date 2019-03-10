;Определите функцию ПЕРВЫЙ-АТОМ, результатом которой будет первый атом списка.

( defun first_atom (arr)
    (cond
        ((not (listp arr)) arr)
        ((null arr) NIL)
        (t (first_atom (car arr)))
    )
)

(print (first_atom '(1 2))) ;1
(print (first_atom '(((a b)) c d))) ;A
(print (first_atom '())) ;NIL