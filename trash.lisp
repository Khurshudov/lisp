;Определите функцию, вычисляющую глубину списка (самой глубокой ветви).

(defun max2 (el1 el2)
    (cond
        ((> el1 el2) el1)
        (T el2)
    )
)

(defun max-all (arr)
    (cond 
        ((null (cadr arr)) (car arr) )
        (T (max2 (car arr) (max-all (cdr arr) )))
    )
)

( defun max-tree (arr)
    (cond
        ((null (cdr arr)) (car arr))
        (T  
            (max-all 
                (list
                    (car arr) 
                    (max-tree (cadr arr)) 
                    (max-tree (caddr arr))
                )
            )
        )
    )
)

(print (max-tree '(1 (2) (3 (4) NIL)))) ; 3