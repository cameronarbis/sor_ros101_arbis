
(cl:in-package :asdf)

(defsystem "ros_tutorial-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "Cylinder" :depends-on ("_package_Cylinder"))
    (:file "_package_Cylinder" :depends-on ("_package"))
    (:file "Weight" :depends-on ("_package_Weight"))
    (:file "_package_Weight" :depends-on ("_package"))
  ))