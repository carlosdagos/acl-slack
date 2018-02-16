(in-package :acl-slack.rtm)

(defmethod start ((client acl-slack.core:slack-client)
                  (optionals list))
  (acl-slack.core:send "rtm.start"
                      (format nil "?token=~A~A"
                              (acl-slack.core:token client)
                              (acl-slack.core:to-param optionals))))

