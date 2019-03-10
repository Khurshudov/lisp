;Определите функцию, разбивающую список (a b с d...) на пары ((а b) (с d)...).

( defun split (arr res)
    (cond
        ((null arr) res)
        (t (cons ( cons (car arr) (list (cadr arr))) (split (cddr arr) res) ))
    )
)

(print (split '(1 2 3 4 5) NIL))