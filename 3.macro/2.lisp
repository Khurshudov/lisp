(defmacro my-if (res p q)
    `(if ,res ,p ,q)
)

(print (macroexpand '(my-if (= 4 4) 44 0))) ;(IF (= 4 4) 44 0) 
(print (my-if (= 4 4) 44 0)) ; 44
(print (my-if (= 4 5) 44 0)) ; 0