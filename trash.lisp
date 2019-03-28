;Определите функцию, вычисляющую глубину списка (самой глубокой ветви).

(defun max2 (el1 el2)
    (cond
        ((null el1) el2)
        ((null el2) el1)
        ((> el1 el2) el1)
        (T el2)
    )
)

(defun max-all (arr)
        (cond 
            ((null arr) NIL)
            (T (max2 (car arr) (max-all (cdr arr) )))
        )
)

( defun max-tree (arr)
    (cond
        ((null arr) NIL)
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

(print (max-tree '(1 NIL (3 (4) NIL)))) ; 3