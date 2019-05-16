(defun component-present-p (value)
  (and value (not (eql value :unspecific)))
)

(defun directory-pathname-p  (p)
  (and
   (not (component-present-p (pathname-name p)))
   (not (component-present-p (pathname-type p)))
   p)
)

(defun pathname-as-directory (name)
  (let ((pathname (pathname name)))
    (when (wild-pathname-p pathname)
      (error "Can't reliably convert wild pathnames."))
    (if (not (directory-pathname-p name))
      (make-pathname
       :directory (append (or (pathname-directory pathname) (list :relative))
                          (list (file-namestring pathname)))
       :name      nil
       :type      nil
       :defaults pathname)
      pathname))
)

(defun directory-wildcard (dirname)
  (make-pathname
   :name :wild
   :type #-clisp :wild #+clisp nil
   :defaults (pathname-as-directory dirname))
)

(defun list-directory (dirname)
  (when (wild-pathname-p dirname)
    (error "Can only list concrete directory names."))
  (directory (directory-wildcard dirname))
)

;; MY

; соединяет две строки
(defun my-concat( list )
  (format nil "~{~a~}" list)
)

; добавляет символ к имени всех файлов в папке
(defun add-symb-to-file (filepath symb)
    (rename-file filepath
        (my-concat 
            (list
                symb
                (pathname-name filepath)
            )
        )
    )
)

; добавляет символ к имени файла слева
(defun add-symb-to-files (folder symb)
    (mapcar 
        #'(lambda (x) (add-symb-to-file x symb))
       (list-directory folder)
    )
)

; если x-symbol, то NIL в противном случае T
(defun not_symbol (x)
    (not (eq (type-of x) 'symbol))
)

; удаляет все символы из массива
(defun delete-symbols (v)
    (mapcan
        #'(lambda (x) (if (not_symbol x) (list x) NIL))
        v
    )
)

; всего должно быть два слова в кавычках, начинаться должно со слова добавь
(defmacro добавь (&rest rest)
    `((lambda (arr) 
        ((lambda (f s)
            (if 
                (null (find "/" s :test #'string=))
                (add-symb-to-files f s) ;if
                (add-symb-to-files s f) ;else
            ) 
        ) (car arr) (cadr arr))
    ) (quote ,(delete-symbols rest)) )
)


; выводит количество файлов в папке
; всего должно быть одно слово в кавычках, начинаться должно со слова добавь
(defmacro сколько (&rest rest)
    `((lambda (filename)
        (list-length (list-directory filename))
    ) ,(car (delete-symbols rest)) )
)

(print (добавь  "./language/modif" фыв "0" слева к файлам из папки ))
(print (сколько файлов в папке "./language/modif"))