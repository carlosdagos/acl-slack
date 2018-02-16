(in-package :acl-slack.api)

(defmethod test ((client acl-slack.core:slack-client))
  (acl-slack.core:send "api.test" ""))
