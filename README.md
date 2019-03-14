# lisp
*Lisp* 


### Определите функцию, разделяющую исходный список на два подсписка. В первый из них должны попасть элементы с нечетными номерами, во второй — элементы с четными номерами.

Функция соединяющая два списка
``` LISP
(defun appen (l1 l2)
    (cond
        ( (null l1) l2 )
        ( t (cons (car l1) (appen (CDR L1) l2 ) ))
    )
)
```

Функция разбивающая список на два списка по четности номера элемента.
``` LISP    
(defun split (arr odd even i)
    (cond
        ( (null arr) (list odd even))
        ( (= 1(mod i 2)) (split (cdr arr) (appen odd (list (car arr))) even (+ i 1)) )
        ( t (split (cdr arr) odd (appen even (list (car arr))) (+ i 1)))
    )
)
```