(defun gen-nat-numbers ()
    (let ((x 0))
        (lambda () (setq x (1+ x)))
    )
)

(setq g1 (gen-nat-numbers))
(setq g2 (gen-nat-numbers))

(print (funcall g1)) ; 1
(print (funcall g1)) ; 2
(print (funcall g2)) ; 1