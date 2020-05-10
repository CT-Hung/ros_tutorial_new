
(cl:in-package :asdf)

(defsystem "cthung-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "PrimeMsg" :depends-on ("_package_PrimeMsg"))
    (:file "_package_PrimeMsg" :depends-on ("_package"))
  ))