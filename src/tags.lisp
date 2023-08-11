(uiop:define-package #:ultralisp-client/tags
  (:use #:cl)
  (:import-from #:ultralisp-client/lowlevel)
  (:import-from #:ultralisp-client/client
                #:ensure-connected)
  (:import-from #:ultralisp-client/core
                #:get-all-tags))
(in-package #:ultralisp-client/tags)


(defun get-all-tags ()
  "Returns a list of all known tags and numbers of projects associated with them."
  (ultralisp-client/lowlevel:get-all-tags (ensure-connected)))
