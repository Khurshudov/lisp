;Определите макрос, который возвращает свой вызов.

(defmacro func (&rest x)
    `(quote ,(append (list (quote func)) x))
)
(print (func 1 2 3)) ;(FUNC 1 2 3) 