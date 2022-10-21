
(cl:in-package :asdf)

(defsystem "bd1_simple_moves-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetLegs" :depends-on ("_package_SetLegs"))
    (:file "_package_SetLegs" :depends-on ("_package"))
  ))