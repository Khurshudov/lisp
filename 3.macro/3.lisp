;Определите лисповскую форму (IF условие p q) в виде макроса.

(defmacro my-if2 (res p q)
    `(if ,res ,p ,q)
)

(defmacro my-if (res p q)
    (append (list 'cond) `(,(list res p)  ,(list T q)))
)

(print (macroexpand '(my-if (= 4 4) 44 0))) ;44
(print (my-if (= 4 4) 44 0)) ; 44
(print (my-if (= 4 5) 44 0)) ; 0