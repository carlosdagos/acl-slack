(in-package :acl-slack.reactions)

(defmethod add ((client acl-slack.core:slack-client)
                (name string)
                (optionals list))
  (acl-slack.core:send "reactions.add"
                      (format nil "?token=~A&name=~A~A"
                              (acl-slack.core:token client)
                              name
                              (acl-slack.core:to-param optionals))))

(defmethod get-item ((client acl-slack.core:slack-client)
                     (optionals list))
  (acl-slack.core:send "reactions.add"
                      (format nil "?token=~A~A"
                              (acl-slack.core:token client)
                              (acl-slack.core:to-param optionals))))

(defmethod fetch-list ((client acl-slack.core:slack-client)
                       (optionals list))
  (acl-slack.core:send "reactions.list"
                      (format nil "?token=~A~A"
                              (acl-slack.core:token client)
                              (acl-slack.core:to-param optionals))))

(defmethod remove-reaction ((client acl-slack.core:slack-client)
                            (name string)
                            (optionals list))
  (acl-slack.core:send "reactions.remove"
                      (format nil "?token=~A&name=~A~A"
                              (acl-slack.core:token client)
                              name
                              (acl-slack.core:to-param optionals))))
