(uiop:define-package #:ultralisp-client/lowlevel
  (:use #:cl)
  (:import-from #:openrpc-client
                #:generate-client))
(in-package #:ultralisp-client/lowlevel)


(generate-client api
                 (asdf:system-relative-pathname :ultralisp-client
                                                "spec"
                                                :type "json")
                 ;; Uncomment to build api agains actual spec.
                 ;; "https://ultralisp.org/api/openrpc.json"
                 
                 ;; Uncomment to build client against a dev version.
                 ;; "http://localhost:8010/api/openrpc.json"
                 )
