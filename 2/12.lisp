; Определите функцию, которая возвращает в качестве значения свой вызов.
(defun asd (&rest pars)
    (
        (lambda (x) x)
        (append '(asd) pars)
    )
)

(print (asd 'a 'b)) ; (ASD A B)
(print (asd 'a)) ; (ASD A)
(print (asd 'a 'b 'c)) ; (ASD A B C)