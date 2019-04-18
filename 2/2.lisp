;Определите функицонал (MAPLIST fn список) для одного списочного аргумента.

(defun my-MAPLIST (lst func)
    (cond
        ((null (car lst)) NIL)
        (T (cons (apply func (list lst)) (my-MAPLIST (cdr lst) func) ))
    )
)