(in-package :acl-slack.chat)

(defmethod delete-message ((client acl-slack.core:slack-client)
                           (ts string)
                           (channel string))
  (acl-slack.core:send "chat.delete"
                      (format nil "?token=~A&ts=~A&channel=~A"
                              (acl-slack.core:token client)
                              ts
                              channel)))

(defmethod post-message ((client acl-slack.core:slack-client)
                         (channel string)
                         (text string)
                         (optionals list))
  (acl-slack.core:send "chat.postMessage"
                      (format nil "?token=~A&channel=~A&text=~A"
                              (acl-slack.core:token client)
                              channel
                              (net.aserve:uriencode-string
                               (concatenate 'string
                                            text
                                            (acl-slack.core:to-param optionals))))))


(defmethod update-message ((client acl-slack.core:slack-client)
                           (ts string)
                           (channel string)
                           (text string)
                           (optionals list))
  (acl-slack.core:send "chat.update"
                      (format nil "?token=~A&ts=~A&channel=~A&text=~A"
                              (acl-slack.core:token client)
                              ts
                              channel
                              (net.aserve:uriencode-string
                               (concatenate 'string
                                            text
                                            (acl-slack.core:to-param optionals))))))
