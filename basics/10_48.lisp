(defun prop-list (arr)
    ( cond
        ((null arr) NIL)
        (t (cons (car arr) (prop-list (cddr arr))))
    )
)

(defun present (prop arr)
    (cond
        ((null arr) NIL)
        ((eq prop (car arr)) T)
        (T (present prop (cdr arr)))
    )
)

(defun have-property (sym prop)
    (present prop (prop-list (symbol-plist sym)))
)

(setf (get 'city1 'b) 0)
(setf (get 'city1 'a) 0)
(print (have-property 'city1 'a)) ; T
(print (have-property 'city1 'c)) ; NIL
(print (have-property 'city1 '0)) ; NIL