;Определите фильтр (УДАЛйЬ-ЕСЛИ пред список), удаляющий из списка список
; все элементы, которые обладают свойством, наличие которого проверяет пре-
;дикат пред.

;вспомогательная функция для have-property
(defun prop-list (arr)
    ( cond
        ((null arr) NIL)
        (t (cons (car arr) (prop-list (cddr arr))))
    )
)

;вспомогательная функция для have-property
(defun present (prop arr)
    (cond
        ((null arr) NIL)
        ((eq prop (car arr)) T)
        (T (present prop (cdr arr)))
    )
)

;проверяет, есть ли у sym свойства prop c учетом случая, при котором свойство равно NIL
(defun have-property (sym prop)
    (present prop (prop-list (symbol-plist sym)))
)

(defun main (func arr prop)
    (mapcan 
        (lambda (x) 
            (and 
                (funcall func x prop) 
                (list x)
            )
        ) 
    arr)
)

(setf (get 'c1 'b) 1)
(setf (get 'c4 'b) 2)
(setf (get 'c2 'a) 2)
(setf (get 'c3 'a) NIL)

(print (main #'have-property '(c1 c2 c4 c3) 'a)) ;(С2 С3)
(print (main #'have-property '(c1 c2 c4 c3) 'b)) ;(С1 С4)