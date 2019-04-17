;Напишите генератор,порождающий последовательность
;(A), (B A), (A B A), (B A B A),
(defun gen ()
    (let ((arr NIL) )
        (lambda ()
            (
                (lambda (el)
                    (setq arr (cons el arr))
                ) (cond
                    ((eq (car arr) 'A) 'B)
                    (T 'A)
                  ) 
            )

        )
    )
)

(setq g1 (gen))
(setq g2 (gen))

(print (funcall g1)) ; (A) 
(print (funcall g1)) ; (B A) 
(print (funcall g1)) ; (A B A) 
(print (funcall g1)) ; (B A B A) 
(print (funcall g2)) ; (A) 
(print (funcall g2)) ; (B A) 