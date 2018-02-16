;;;; package.lisp

(eval-when (:compile-toplevel :load-toplevel)
  (require :aserve))

(defpackage :acl-slack
  (:use :common-lisp
        :net.aserve))

(defpackage :acl-slack.core
  (:use :cl)
  (:export slack-client send token to-param))

(defpackage :acl-slack.api
  (:use :cl)
  (:import-from :acl-slack.core)
  (:export test))

(defpackage :acl-slack.auth
  (:use :cl)
  (:export test))

(defpackage :acl-slack.chat
  (:use :cl)
  (:export delete-message post-message update-message))

(defpackage :acl-slack.pins
  (:use :cl)
  (:export add fetch-list remove-pin))

(defpackage :acl-slack.reactions
  (:use :cl)
  (:export add get-item fetch-list remove-reaction))

(defpackage :acl-slack.rtm
  (:use :cl)
  (:export start))

(defpackage :acl-slack.team
  (:use :cl)
  (:export fetch-info fetch-access-logs))

(defpackage :acl-slack.channels
  (:use :cl)
  (:shadow list)
  (:export archive create info invite join kick leave
           mark rename replies set-purpose set-topic
           unarchive history list list-users))
