;Определите функциональный предикат (КАЖДЫй пред список), который исти-
;нен в том и только в том случае, когда, являющейся функциональным аргу-
;ментом предикат пред истинен для всех элементов списка список.

(defun my-every (pred lst)
    (not
        (null
            (mapcan #'(lambda (x)  
                            (cond
                                ((not (funcall pred x)) (list T))
                                (T NIL)
                            )
            ) lst)
        )
    )
)

(print (my-every #'atom '(1 2 (4)))) ;NIL
(print (my-every #'atom '(1 2 4))) ;T