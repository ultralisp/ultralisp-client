(defsystem "ultralisp-client-docs"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://ultralisp.github.io/ultralisp-client/"
  :class :package-inferred-system
  :description "Provides documentation for ultralisp-client."
  :source-control (:git "https://github.com/ultralisp/ultralisp-client")
  :bug-tracker "https://github.com/ultralisp/ultralisp-client/issues"
  :pathname "docs"
  :depends-on ("ultralisp-client"
               "ultralisp-client-docs/index"))
