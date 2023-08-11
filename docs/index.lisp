(uiop:define-package #:ultralisp-client-docs/index
  (:use #:cl)
  (:import-from #:pythonic-string-reader
                #:pythonic-string-syntax)
  #+quicklisp
  (:import-from #:quicklisp)
  (:import-from #:named-readtables
                #:in-readtable)
  (:import-from #:40ants-doc
                #:defsection
                #:defsection-copy)
  (:import-from #:ultralisp-client-docs/changelog
                #:@changelog)
  (:import-from #:docs-config
                #:docs-config)
  (:import-from #:40ants-doc/autodoc
                #:defautodoc)
  (:export #:@index
           #:@readme
           #:@changelog))
(in-package #:ultralisp-client-docs/index)

(in-readtable pythonic-string-syntax)


(defmethod docs-config ((system (eql (asdf:find-system "ultralisp-client-docs"))))
  ;; 40ANTS-DOC-THEME-40ANTS system will bring
  ;; as dependency a full 40ANTS-DOC but we don't want
  ;; unnecessary dependencies here:
  #+quicklisp
  (ql:quickload "40ants-doc-theme-40ants")
  #-quicklisp
  (asdf:load-system "40ants-doc-theme-40ants")
  
  (list :theme
        (find-symbol "40ANTS-THEME"
                     (find-package "40ANTS-DOC-THEME-40ANTS")))
  )


(defsection @index (:title "ultralisp-client - A client for working with Ultralisp.org"
                    :ignore-words ("JSON"
                                   "HTTP"
                                   "TODO"
                                   "Unlicense"
                                   "REPL"
                                   "ASDF:PACKAGE-INFERRED-SYSTEM"
                                   "ASDF"
                                   "40A"
                                   "API"
                                   "URL"
                                   "URI"
                                   "RPC"
                                   "GIT"))
  (ultralisp-client system)
  "
[![](https://github-actions.40ants.com/ultralisp/ultralisp-client/matrix.svg?only=ci.run-tests)](https://github.com/ultralisp/ultralisp-client/actions)

![Quicklisp](http://quickdocs.org/badge/ultralisp-client.svg)
"
  (@installation section)
  (@usage section)
  (@api section))


(defsection-copy @readme @index)


(defsection @installation (:title "Installation")
  """
You can install this library from Quicklisp, but you want to receive updates quickly, then install it from Ultralisp.org:

```
(ql-dist:install-dist "http://dist.ultralisp.org/"
                      :prompt nil)
(ql:quickload :ultralisp-client)
```
""")


(defsection @usage (:title "Usage")
  "
Here is example of usage:

```lisp
CL-USER> (ultralisp-client:get-all-tags)
 ...
 #<ULTRALISP-CLIENT/LOWLEVEL:TAG  NAME=\"ansi-terminal\" PROJECT-COUNT=1>
 #<ULTRALISP-CLIENT/LOWLEVEL:TAG  NAME=\"ape\" PROJECT-COUNT=1>
 #<ULTRALISP-CLIENT/LOWLEVEL:TAG  NAME=\"api\" PROJECT-COUNT=12>
 ...
 #<ULTRALISP-CLIENT/LOWLEVEL:TAG  NAME=\"template-engine\" PROJECT-COUNT=3> ...)

CL-USER> (ultralisp-client:get-projects-by-tag \"template-engine\")
(#<ULTRALISP-CLIENT/LOWLEVEL:PROJECT2  CREATED-AT=\"2019-03-19T05:10:39.000000Z\"
                                       UPDATED-AT=\"2020-12-25T05:58:49.000000Z\"
                                       ID=850 VERSION=0 LATEST=T DELETED=NIL
                                       NAME=\"mmontone/djula\"
                                       DESCRIPTION=\"Common Lisp port of the Django templating language\">
 #<ULTRALISP-CLIENT/LOWLEVEL:PROJECT2  CREATED-AT=\"2020-04-11T16:38:27.000000Z\"
                                       UPDATED-AT=\"2020-04-11T16:51:01.000000Z\"
                                       ID=1432 VERSION=0 LATEST=T DELETED=NIL
                                       NAME=\"RailsOnLisp/rol-template\"
                                       DESCRIPTION=\"RailsOnLisp template engine\">
 #<ULTRALISP-CLIENT/LOWLEVEL:PROJECT2  CREATED-AT=\"2020-04-13T14:54:22.000000Z\"
                                       UPDATED-AT=\"2020-10-02T16:26:19.000000Z\"
                                       ID=1470 VERSION=0 LATEST=T DELETED=NIL
                                       NAME=\"mmontone/ten\"
                                       DESCRIPTION=\"Yet another template system for Common Lisp\">)

CL-USER> (first *)
#<ULTRALISP-CLIENT/LOWLEVEL:PROJECT2  CREATED-AT=\"2019-03-19T05:10:39.000000Z\" UPDATED-AT=\"2020-12-25T05:58:49.000000Z\" ID=850 VERSION=0 LATEST=T DELETED=NIL NAME=\"mmontone/djula\" DESCRIPTION=\"Common Lisp port of the Django templating language\">

CL-USER> (ultralisp-client:get-project-tags *)
(\"html-template\" \"template-engine\")


CL-USER> (ultralisp-client:get-project-systems **)
(#<ULTRALISP-CLIENT/LOWLEVEL:SYSTEM-INFO  PROJECT-NAME=\"mmontone-djula\"
                                          FILENAME=\"djula-translate.asd\"
                                          NAME=\"djula-translate\"
                                          DEPENDENCIES=(\"djula\" \"translate\")>
 #<ULTRALISP-CLIENT/LOWLEVEL:SYSTEM-INFO  PROJECT-NAME=\"mmontone-djula\"
                                          FILENAME=\"djula-test.asd\"
                                          NAME=\"djula-test\"
                                          DEPENDENCIES=(\"djula\" \"fiveam\")>
 #<ULTRALISP-CLIENT/LOWLEVEL:SYSTEM-INFO  PROJECT-NAME=\"mmontone-djula\"
                                          FILENAME=\"djula-locale.asd\"
                                          NAME=\"djula-locale\"
                                          DEPENDENCIES=(\"djula\" \"cl-locale\")>
 #<ULTRALISP-CLIENT/LOWLEVEL:SYSTEM-INFO  PROJECT-NAME=\"mmontone-djula\"
                                          FILENAME=\"djula-gettext.asd\"
                                          NAME=\"djula-gettext\"
                                          DEPENDENCIES=(\"djula\" \"gettext\")>
 #<ULTRALISP-CLIENT/LOWLEVEL:SYSTEM-INFO  PROJECT-NAME=\"mmontone-djula\"
                                          FILENAME=\"djula-demo.asd\"
                                          NAME=\"djula-demo\"
                                          DEPENDENCIES=(\"djula\" \"hunchentoot\" \"trivial-open-browser\")>
 #<ULTRALISP-CLIENT/LOWLEVEL:SYSTEM-INFO  PROJECT-NAME=\"mmontone-djula\"
                                          FILENAME=\"djula.asd\"
                                          NAME=\"djula\"
                                          DEPENDENCIES=(\"access\" \"alexandria\" \"babel\" \"cl-ppcre\" \"split-sequence\" \"local-time\" \"closer-mop\" \"trivial-backtrace\" \"cl-slice\" \"cl-locale\" \"gettext\" \"parser-combinators\" \"iterate\")>)

```

")


(defautodoc @api (:system "ultralisp-client"))
