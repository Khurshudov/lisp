;Функция GET возвращает в качестве результата NIL в том случае, если у сим- вола нет данного свойства, либо если значением этого свойства является NIL. Следовательно, функцией GET нельзя проверить, есть ли некоторое свойство в списке свойств. Напишите предикат (ИМЕЕТ-СВОЙСТВО символ свойство), ко- торый проверяет, обладает ли символ данным свойством.

(defun prop-list (arr)
    ( cond
        ((null arr) NIL)
        (t (cons (car arr) (prop-list (cddr arr))))
    )
)

(defun present (prop arr)
    (cond
        ((null arr) NIL)
        ((eq prop (car arr)) T)
        (T (present prop (cdr arr)))
    )
)

(defun have-property (sym prop)
    (present prop (prop-list (symbol-plist sym)))
)

(setf (get 'city1 'b) 0)
(setf (get 'city1 'a) 0)
(print (have-property 'city1 'a)) ; T
(print (have-property 'city1 'c)) ; NIL
(print (have-property 'city1 '0)) ; NIL