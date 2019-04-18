; Определите функцию, которая возвращает в качестве значения
; форму своего определения (DEFUN).

(defun asd (&rest par1)
    (
        (lambda (x) x)
        '(defun asd (par1))
    )
)


(print 
    (asd 'a 'b)
)