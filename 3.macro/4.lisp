; Определите в виде макроса форму (FIF тест отр нуль полож).

(defmacro my-fif (c p z n)
    `(if (> ,c 0) ,p
        (if (= ,c 0) ,z ,n)
    )
)

(defun del3 (v)
    (cond
        ((= 0 (mod v 3)) -1)
        ((= 1 (mod v 3)) 0)
        (T 1)
    )
)

(print (macroexpand '(my-fif (del3 3) 2 1 3))) ;(IF (> (DEL3 3) 0) 2 (IF (= (DEL3 3) 0) 1 3))
(print (my-fif (del3 7) 2 1 3)) ; 1
(print (my-fif (del3 8) 2 1 3)) ; 2
(print (my-fif (del3 9) 2 1 3)) ; 3