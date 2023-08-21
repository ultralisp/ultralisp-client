(uiop:define-package #:ultralisp-client-docs/changelog
  (:use #:cl)
  (:import-from #:40ants-doc/changelog
                #:defchangelog))
(in-package #:ultralisp-client-docs/changelog)


(defchangelog (:ignore-words ("SLY"
                              "ASDF"
                              "REPL"
                              "HTTP"))
  (0.2.0 2023-08-21
         "* Client updated to show release info and information about project systems.
            Use ULTRALISP-CLIENT:GET-PROJECT-SOURCES generic-function for this.")
  (0.1.0 2023-08-11
         "* Initial version."))
