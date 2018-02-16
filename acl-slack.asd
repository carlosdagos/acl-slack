;;;; cl-slack.asd
(in-package :cl-user)

(defpackage :acl-slack-asd
  (:use :cl :asdf))

(in-package :acl-slack-asd)

(asdf:defsystem #:acl-slack
  :description "Common Lisp Slack API Library"
  :serial t
  :components ((:module "src"
                :components
                ((:file "package")
                 (:file "cl-slack")
                 (:file "core")
                 (:file "auth")
                 (:file "rtm")
                 (:file "chat")
                 (:file "team")
                 (:file "pins")
                 (:file "api")
                 (:file "reactions")
                 (:file "channels")))))
