
(cl:in-package :asdf)

(defsystem "test01-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "SetSomethink" :depends-on ("_package_SetSomethink"))
    (:file "_package_SetSomethink" :depends-on ("_package"))
    (:file "AddTwoInts" :depends-on ("_package_AddTwoInts"))
    (:file "_package_AddTwoInts" :depends-on ("_package"))
  ))