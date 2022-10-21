
(cl:in-package :asdf)

(defsystem "bd1_environment_interface-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :bd1_environment_interface-msg
)
  :components ((:file "_package")
    (:file "GetStateAndReward" :depends-on ("_package_GetStateAndReward"))
    (:file "_package_GetStateAndReward" :depends-on ("_package"))
    (:file "GetVectStateAndReward" :depends-on ("_package_GetVectStateAndReward"))
    (:file "_package_GetVectStateAndReward" :depends-on ("_package"))
    (:file "SetAction" :depends-on ("_package_SetAction"))
    (:file "_package_SetAction" :depends-on ("_package"))
    (:file "SetVectAction" :depends-on ("_package_SetVectAction"))
    (:file "_package_SetVectAction" :depends-on ("_package"))
  ))