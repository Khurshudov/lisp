; connect 2 sorted list
(defun s-append (arr1 arr2)
    ((lambda (f-arr1 f-arr2 r-arr1 r-arr2)
        (cond
            ((and (null arr1) (null arr2)) 
                NIL)

            ((null arr1) 
                (cons 
                    f-arr2
                    (s-append 
                        arr1 
                        r-arr2
                    )
                )
            )

            ((null arr2) 
                (cons 
                    f-arr1
                    (s-append 
                        r-arr1
                        arr2
                    )
                )
            )

            ((< f-arr1 f-arr2)
                (cons 
                    f-arr1
                    (s-append 
                        r-arr1 
                        arr2
                    )
                )
            )

            (T 
                (cons 
                    f-arr2
                    (s-append 
                        arr1 
                        r-arr2
                    )
                )
            )
        
        )
    ) (car arr1) (car arr2) (cdr arr1) (cdr arr2))
)

; return len of list
(defun len (arr)
    (cond
        ((null (cdr arr)) 1)
        (T (1+ (len (cdr arr))))
    )
)

;from 0 to n in first array from n to ... to second array !!index
(defun split-2-from-n (arr n)
    ((lambda (first rest)
        (cond
            ((null arr) (list NIL NIL))

            ((> n 0) ((lambda (next-iter)  (list 
                        (cons first (car next-iter))
                        (cadr next-iter)
                    )) (split-2-from-n rest (1- n)))
            )

            (T ((lambda (next-iter) (list
                    (car next-iter)
                    (cons first (cadr next-iter))
                )) (split-2-from-n rest (1- n)))
            )
        )
    ) (car arr) (cdr arr))
)

;left half of array in first, right in second
(defun split-middle (arr)
    (split-2-from-n arr (/ (len arr) 2))
)

(defun msort (arr)
    (cond 
        ((null (cadr arr)) arr)
        (T
            (
                (lambda (splitted)
                    (s-append (msort (car splitted)) (msort (cadr splitted)))
                ) (split-middle arr)
            )
        )
    )
)

(print (msort '(1 5 3 4 4 6 7 4)))