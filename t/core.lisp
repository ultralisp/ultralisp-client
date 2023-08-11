(uiop:define-package #:ultralisp-client-tests/core
  (:use #:cl)
  (:import-from #:rove
                #:deftest
                #:ok
                #:testing))
(in-package #:ultralisp-client-tests/core)


(deftest test-example ()
  (ok t "Replace this test with something useful."))
