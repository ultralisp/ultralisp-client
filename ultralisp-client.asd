#-asdf3.1 (error "ultralisp-client requires ASDF 3.1 because for lower versions pathname does not work for package-inferred systems.")
(defsystem "ultralisp-client"
  :description "A client for working with Ultralisp.org"
  :author "Alexander Artemenko <svetlyak.40wt@gmail.com>"
  :license "Unlicense"
  :homepage "https://ultralisp.github.io/ultralisp-client/"
  :source-control (:git "https://github.com/ultralisp/ultralisp-client")
  :bug-tracker "https://github.com/ultralisp/ultralisp-client/issues"
  :class :40ants-asdf-system
  :defsystem-depends-on ("40ants-asdf-system")
  :pathname "src"
  :serial t
  :depends-on ("jsonrpc"
               ;; Stupid Quicklisp client does not understand
               ;; we need to download jsonrpc before jsonrpc/transport/http system :(((
               "jsonrpc/transport/http"
               "openrpc-client"
               "ultralisp-client/tags"
               "ultralisp-client/projects")
  :in-order-to ((test-op (test-op "ultralisp-client-tests"))))
