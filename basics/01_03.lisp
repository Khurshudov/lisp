;Определите функцию, заменяющую в исходном списке все вхождения задан- ного значения другим.


(defun appen (l1 l2)
    (cond
        ( (null l1) l2 )
        ( t (cons (car l1) (appen (CDR L1) l2 ) ))
    )
)

(defun repl (lst v r res)
    (cond
        ( (null lst) res )
        ( (= v (car lst)) (repl (cdr lst) v r (appen res (list r)) ) )
        ( t (repl (cdr lst) v r (appen res (list (car lst))) ) )
    )
)

(print (repl '(1 4 3 4 4) 4 10 nil)) ; 1 10 3 10 10
(print (repl '() 4 10 nil)) ; NIL
(print (repl '(1) 4 10 nil)) ; 1

