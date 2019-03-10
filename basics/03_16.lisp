;gnu clisp 2.49

( defun insert (arr1 arr2 idx i res)
    (cond
        ((null arr1) res)
        ((null arr2) (cons (car arr1) (insert (cdr arr1) arr2 idx (+ 1 i) res) ))
        ((>= i (- idx 1)) (cons (car arr2) (insert arr1 (cdr arr2) idx i res) ))
        (t (cons (car arr1) (insert (cdr arr1) arr2 idx (+ 1 i) res) ))
    )
)

(print (insert '(1 2 3 4 5) '(10 20 30 40 50) 2 0 NIL)) ;(1 10 20 30 40 50 2 3 4 5) 
(print (insert '(1 2 3 4 5) NIL 2 0 NIL)) ;(1 2 3 4 5)