
(cl:in-package :asdf)

(defsystem "ps4Controller-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "control_data" :depends-on ("_package_control_data"))
    (:file "_package_control_data" :depends-on ("_package"))
  ))