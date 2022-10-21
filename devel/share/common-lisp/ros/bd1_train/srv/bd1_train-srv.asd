
(cl:in-package :asdf)

(defsystem "bd1_train-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SaveAgent" :depends-on ("_package_SaveAgent"))
    (:file "_package_SaveAgent" :depends-on ("_package"))
  ))