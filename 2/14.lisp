; Определите функцию, которая возвращает в качестве значения
; форму своего определения (DEFUN).

(defun asd (par1)
    (
        (lambda (x) (list x))
        '(defun asd (par1))
    )
)


(print 
    (asd 'a)
)