;Определите функцию, проверяющую, является ли одно дерево поддеревом вто- рого.

(defun tree_equal (a b)
    (cond
        ((eq b '()) T )
        ((equal (car a) (car b) ) ((lambda (x y) (and x y)) 
                                   (tree_equal (cadr a) (cadr b)) 
                                   (tree_equal (caddr a) (caddr b))
                              ) 
        )
        (T NIL)
    )
)
    

(defun my_equal (a b)
    (cond
        ((null b) T)
        ((eq a '()) NIL)
        ((tree_equal a b) T)
        (T ((lambda (x y) (or x y)) 
                (my_equal (cadr  a) b ) 
                (my_equal (caddr a) b )
           )
        )
    )
)

(print (my_equal '(2 (3 NIL (2)) NIL) '(2 (3 NIL (2)) NIL))) ; T
(print (my_equal '(2 (3 NIL (2)) NIL) '(2))) ; T
(print (my_equal '(2 (3 NIL (4)) NIL) '(2))) ; T
(print (my_equal '(2 (3 NIL (4)) NIL) '(2 (5) NIL))) ; NIL
