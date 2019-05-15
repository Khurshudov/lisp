;Определите в виде макроса форму (REPEAT e UNTIL p) паскалевского типа.

(defmacro repeat (f c)
    `(if ,c NIL (progn (,f) (repeat ,f ,c)))
)

(setq v 10)
(defun incr ()
    (print (setq v (1+ v)))
)

(print (macroexpand '(repeat incr (< v 12)))) 
;(IF (< V 12) NIL (PROGN (INCR) (REPEAT INCR (< V 12)))) 
(repeat incr (> v 13)) 
;11
;12
;13
;14