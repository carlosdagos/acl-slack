(in-package :acl-slack.auth)

(defmethod test ((client acl-slack.core:slack-client))
  (acl-slack.core:send "api.test" (format nil "?token=~A" (acl-slack.core:token client))))
