(in-package :acl-slack.pins)

(defmethod add ((client acl-slack.core:slack-client)
                (channel string)
                (optionals list))
  (acl-slack.core:send "pins.add"
                      (format nil "?token=~A&channel=~A~A"
                              (acl-slack.core:token client)
                              channel
                              (acl-slack.core:to-param optionals))))

(defmethod fetch-list ((client acl-slack.core:slack-client)
                      (channel string))
  (acl-slack.core:send "pins.list"
                      (format nil "?token=~A&channel=~A"
                              (acl-slack.core:token client)
                              channel)))

(defmethod remove-pin ((client acl-slack.core:slack-client)
                       (channel string)
                       (optionals list))
  (acl-slack.core:send "pins.remove"
                      (format nil "?token=~A&channel=~A~A"
                              (acl-slack.core:token client)
                              channel
                              (acl-slack.core:to-param optionals))))
