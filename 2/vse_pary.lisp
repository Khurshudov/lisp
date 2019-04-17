(defun f (arr1 arr2)
    (mapcan 
        (lambda 
            (el) 
            (mapcar 
                (lambda 
                    (el1) 
                    (list el1 el)
                ) arr1
            )
        ) arr2
    )
)

(print (f '(1 2 3) '(A B C)))