(in-package :acl-slack.team)

(defmethod fetch-access-logs ((client acl-slack.core:slack-client)
                              (optionals list))
  (acl-slack.core:send "team.accessLogs"
                      (format nil "?token=~A~A"
                              (acl-slack.core:token client)
                              (acl-slack.core:to-param optionals))))

(defmethod fetch-info ((client acl-slack.core:slack-client))
  (acl-slack.core:send "team.info"
                      (format nil "?token=~A"
                              (acl-slack.core:token client))))
