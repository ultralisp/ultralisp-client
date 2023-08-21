(uiop:define-package #:ultralisp-client/projects
  (:use #:cl)
  (:import-from #:ultralisp-client/lowlevel)
  (:import-from #:ultralisp-client/client
                #:ensure-connected)
  (:import-from #:ultralisp-client/core
                #:get-project-by-name
                #:get-projects-by-tag
                #:get-project-tags
                #:get-project-systems
                #:get-project-sources))
(in-package #:ultralisp-client/projects)


(defun get-project-by-name (name)
  (ultralisp-client/lowlevel:get-project-by-name (ensure-connected)
                                                 name))


(defun get-projects-by-tag (tag)
  "Returns projects having a given tag."
  (labels ((get-page ()
             (ultralisp-client/lowlevel::get-projects-by-tag
              (ensure-connected)
              tag
              :limit 100))
           (retrieve-all (func)
             (multiple-value-bind (results next-func)
                 (funcall func)
               (append results
                       (when next-func
                         (retrieve-all next-func))))))
    (retrieve-all #'get-page)))


(defgeneric get-project-tags (project)
  (:method ((project-id integer))
    (ultralisp-client/lowlevel:get-project-tags (ensure-connected)
                                                project-id))
  (:method ((project ultralisp-client/lowlevel:project2))
    (ultralisp-client/lowlevel:get-project-tags (ensure-connected)
                                                (ultralisp-client/lowlevel:project2-id project))))


(defgeneric get-project-systems (project)
  (:method ((project-id integer))
    (ultralisp-client/lowlevel:get-project-systems (ensure-connected)
                                                   project-id))
  (:method ((project ultralisp-client/lowlevel:project2))
    (get-project-systems (ultralisp-client/lowlevel:project2-id project))))


(defgeneric get-project-sources (project)
  (:documentation "Returns a list of project sources with their systems and release information.")
  (:method ((project-id integer))
    (ultralisp-client/lowlevel:get-project-sources (ensure-connected)
                                                   project-id))
  (:method ((project ultralisp-client/lowlevel:project2))
    (get-project-sources (ultralisp-client/lowlevel:project2-id project))))
