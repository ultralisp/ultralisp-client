(defsystem "ultralisp-client-tests"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://ultralisp.github.io/ultralisp-client/"
  :class :package-inferred-system
  :description "Provides tests for ultralisp-client."
  :source-control (:git "https://github.com/ultralisp/ultralisp-client")
  :bug-tracker "https://github.com/ultralisp/ultralisp-client/issues"
  :pathname "t"
  :depends-on ("ultralisp-client-tests/core")
  :perform (test-op (op c)
                    (unless (symbol-call :rove :run c)
                      (error "Tests failed"))))
