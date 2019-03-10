;Определите предикат НЕПЕРЕСЕКАЮЩИЕСЯ, проверяющий, что два множества не пересекаются, т.е. у них нет общих элементов.

(defun present (el arr)
    (cond
        ((null arr) NIL)
        ((= (car arr) el) T)
        (t (present el (cdr arr)))
    )
)

(defun independent (arr1 arr2)
    (cond
        ((null arr1) t)
        ((null (present (car arr1) arr2)) (independent (cdr arr1) arr2))
        (t NIL)
    )
)

(print (independent '(1 2 3) '(4 5 6))) ; T
(print (independent '(1 2 3 4) '(4 5 6))) ; NIL
(print (independent '(6) '(4 5 6))) ; NIL