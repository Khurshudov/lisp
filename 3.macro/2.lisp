;Определите макрос (POP стек), который читает из стека верхний
; элемент и меняет значение переменной стека.

(setq stack '(1 2 3))

(defmacro my-pop (st)
    (list 'prog1 
        `(car ,st) 
        `(setq ,st (cdr ,st))
    )
)

(print (macroexpand '(my-pop stack))) 
;(LET ((#:PROG1-2814 (CAR STACK))) (SETQ STACK (CDR STACK)) #:PROG1-2814) 
(print (my-pop stack)); 1
(print stack) ; (2 3)
(print (my-pop stack)) ; 2
(print stack) ; (3) 
(print (my-pop stack)); 3
(print stack) ; NIL