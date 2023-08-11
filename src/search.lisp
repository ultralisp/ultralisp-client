(uiop:define-package #:ultralisp-client/search
  (:use #:cl)
  (:import-from #:ultralisp-client/lowlevel
                #:search-result-documentation
                #:search-result-system
                #:search-result-symbol
                #:search-result-package
                #:search-result-type)
  (:import-from #:ultralisp-client/client
                #:ensure-connected)
  (:shadow #:apropos))
(in-package #:ultralisp-client/search)


(defun search-symbols (term)
  "Returns symbol information as a structured list."
  (ultralisp-client/lowlevel:search-symbols
   (ensure-connected)
   term))


(defun apropos (term &key (limit 10))
  "Prints symbols and their docstrings."
  (loop for result in (ultralisp-client/lowlevel:search-symbols
                       (ensure-connected)
                       term
                       :limit limit)
        for type = (search-result-type result)
        for package = (search-result-package result)
        for symbol = (search-result-symbol result)
        for system = (search-result-system result)
        for docstring = (search-result-documentation result)
        do (format t "[~A] ~A:~A (from system ~A)~@[~%~A~]~2&"
                   type
                   package
                   symbol
                   system
                   docstring)))
