(in-package :acl-slack.channels)

(defmethod archive ((client  acl-slack.core:slack-client)
                    (channel string))
  (acl-slack.core:send "channels.archive"
                      (format nil "?token=~A&channel=~A"
                              (acl-slack.core:token client)
                              channel)))

(defmethod create ((client  acl-slack.core:slack-client)
                   (name string)
                   (optionals cl:list))
  (acl-slack.core:send "channels.create"
                      (format nil "?token=~A&name=~A~A"
                              (acl-slack.core:token client)
                              name
                              (acl-slack.core:to-param optionals))))

(defmethod info ((client  acl-slack.core:slack-client)
                 (channel string))
  (acl-slack.core:send "channels.info"
                      (format nil "?token=~A&channel=~A"
                              (acl-slack.core:token client)
                              channel)))

(defmethod invite ((client  acl-slack.core:slack-client)
                   (channel string)
                   (user string))
  (acl-slack.core:send "channels.invite"
                      (format nil "?token=~A&channel=~A&user=~A"
                              (acl-slack.core:token client)
                              channel
                              user)))

(defmethod join ((client  acl-slack.core:slack-client)
                 (name string)
                 (optionals cl:list))
  (acl-slack.core:send "channels.join"
                      (format nil "?token=~A&name=~A~A"
                              (acl-slack.core:token client)
                              name
                              (acl-slack.core:to-param optionals))))

(defmethod kick ((client  acl-slack.core:slack-client)
                 (channel string)
                 (user string))
  (acl-slack.core:send "channels.kick"
                      (format nil "?token=~A&channel=~A&user=~A"
                              (acl-slack.core:token client)
                              channel
                              user)))

(defmethod leave ((client  acl-slack.core:slack-client)
                 (channel string))
  (acl-slack.core:send "channels.leave"
                      (format nil "?token=~A&channel=~A"
                              (acl-slack.core:token client)
                              channel)))

(defmethod mark ((client  acl-slack.core:slack-client)
                 (channel string)
                 (ts string))
  (acl-slack.core:send "channels.mark"
                      (format nil "?token=~A&channel=~A&ts=~A"
                              (acl-slack.core:token client)
                              channel
                              ts)))

(defmethod rename ((client  acl-slack.core:slack-client)
                   (channel string)
                   (name string)
                   (optionals cl:list))
  (acl-slack.core:send "channels.rename"
                      (format nil "?token=~A&channel=~A&name=~A~A"
                              (acl-slack.core:token client)
                              channel
                              name
                              (acl-slack.core:to-param optionals))))

(defmethod replies ((client  acl-slack.core:slack-client)
                    (channel string)
                    (thread-ts string))
  (acl-slack.core:send "channels.replies"
                      (format nil "?token=~A&channel=~A&thread_ts=~A"
                              (acl-slack.core:token client)
                              channel
                              thread-ts)))

(defmethod set-purpose ((client  acl-slack.core:slack-client)
                        (channel string)
                        (purpose string))
  (acl-slack.core:send "channels.setPurpose"
                      (format nil "?token=~A&channel=~A&purpose=~A"
                              (acl-slack.core:token client)
                              channel
                              purpose)))

(defmethod set-topic ((client  acl-slack.core:slack-client)
                      (channel string)
                      (topic string))
  (acl-slack.core:send "channels.setTopic"
                      (format nil "?token=~A&channel=~A&topic=~A"
                              (acl-slack.core:token client)
                              channel

                              topic)))
(defmethod unarchive ((client  acl-slack.core:slack-client)
                      (channel string))
  (acl-slack.core:send "channels.unarchive"
                      (format nil "?token=~A&channel=~A"
                              (acl-slack.core:token client)
                              channel)))

(defmethod history ((client acl-slack.core:slack-client)
                    (channel string)
                    (optionals cl:list))
  (acl-slack.core:send "channels.history"
                      (format nil "?token=~A&channel=~A~A"
                              (acl-slack.core:token client)
                              channel
                              (acl-slack.core:to-param optionals))))

(defmethod list ((client acl-slack.core:slack-client)
                 (optionals cl:list))
  (acl-slack.core:send "channels.list"
                      (format nil "?token=~A~A"
                              (acl-slack.core:token client)
                              (acl-slack.core:to-param optionals))))

(defmethod list-users ((client acl-slack.core:slack-client)
                       (optionals cl:list))
  (acl-slack.core:send "users.list"
                      (format nil "?token=~A~A"
                              (acl-slack.core:token client)
                              (acl-slack.core:to-param optionals))))
