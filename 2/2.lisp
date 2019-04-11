;Определите функицонал (MAPLIST fn список) для одного списочного аргумента.

(defun my-MAPLIST (lst func)
    (cond
        ((null (car lst)) NIL)
        (T (cons (apply func (list lst)) (my-MAPLIST (cdr lst) func) ))
    )
)

(print (my-MAPLIST '(1 2 3) #'reverse)) ;((3 2 1) (3 2) (3))
(print (MAPLIST #'reverse '(1 2 3))) ;((3 2 1) (3 2) (3))