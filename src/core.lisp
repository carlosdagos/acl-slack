(in-package :acl-slack.core)

(defvar *base-url* "https://slack.com/api/")

(defclass slack-client ()
  ((token :accessor token :initarg :token)))

(defun send (api-name param)
  (net.aserve.client::do-http-request
      (format nil "~A~A~A" *base-url* api-name param)))

(defun to-param (list)
  (or (format nil "~{&~A=~A~}" list)
      ""))
