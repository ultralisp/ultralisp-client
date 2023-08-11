(defsystem "ultralisp-client-ci"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://ultralisp.github.io/ultralisp-client/"
  :class :package-inferred-system
  :description "Provides CI settings for ultralisp-client."
  :source-control (:git "https://github.com/ultralisp/ultralisp-client")
  :bug-tracker "https://github.com/ultralisp/ultralisp-client/issues"
  :pathname "src"
  :depends-on ("40ants-ci"
               "ultralisp-client-ci/ci"))
