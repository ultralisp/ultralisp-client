(uiop:define-package #:ultralisp-client
  (:use #:cl)
  (:nicknames #:ultralisp-client/core)
  (:export
   ;; For tags.lisp
   #:get-all-tags
   ;; For projects.lisp
   #:get-project-by-name
   #:get-projects-by-tag
   #:get-project-tags
   #:get-project-systems
   #:get-project-sources))
(in-package #:ultralisp-client)

