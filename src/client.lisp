(uiop:define-package #:ultralisp-client/client
  (:use #:cl)
  (:import-from #:ultralisp-client/lowlevel
                #:make-api)
  (:import-from #:jsonrpc)
  (:export
   #:ensure-connected))
(in-package #:ultralisp-client/client)


(defvar *client* nil)


(defvar *url*
  "https://ultralisp.org/api/")


(defun ensure-connected (&optional (url *url*))
  "Use this function to override URL if it is different from default https://ultralisp.org/api/."
  (when (or (null *client*)
            (not (equal url *url*)))
    (setf *client*
          (jsonrpc:client-connect (make-api)
                                  :mode :http
                                  :url url))
    (setf *url* url))
  
  (values *client*))
