;Определите функциональный предикат (КАЖДЫй пред список), который исти-
;нен в том и только в том случае, когда, являющейся функциональным аргу-
;ментом предикат пред истинен для всех элементов списка список.

(defun and-lst (lst)
    (cond 
        ((null lst) T)
        ((null (car lst)) NIL)
        (T (and-lst (cdr lst)))
    )
)

(defun my-every (lst pred)
    (and-lst (mapcar pred lst) )
)

(print (my-every '(1 2 3 (4 5)) #'atom)) ;NIL
(print (my-every '(1 2 3 ) #'atom)) ;T