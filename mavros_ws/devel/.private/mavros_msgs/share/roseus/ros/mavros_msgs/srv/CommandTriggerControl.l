;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::CommandTriggerControl)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'CommandTriggerControl (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::COMMANDTRIGGERCONTROL")
  (make-package "MAVROS_MSGS::COMMANDTRIGGERCONTROL"))
(unless (find-package "MAVROS_MSGS::COMMANDTRIGGERCONTROLREQUEST")
  (make-package "MAVROS_MSGS::COMMANDTRIGGERCONTROLREQUEST"))
(unless (find-package "MAVROS_MSGS::COMMANDTRIGGERCONTROLRESPONSE")
  (make-package "MAVROS_MSGS::COMMANDTRIGGERCONTROLRESPONSE"))

(in-package "ROS")





(defclass mavros_msgs::CommandTriggerControlRequest
  :super ros::object
  :slots (_trigger_enable _integration_time ))

(defmethod mavros_msgs::CommandTriggerControlRequest
  (:init
   (&key
    ((:trigger_enable __trigger_enable) nil)
    ((:integration_time __integration_time) 0.0)
    )
   (send-super :init)
   (setq _trigger_enable __trigger_enable)
   (setq _integration_time (float __integration_time))
   self)
  (:trigger_enable
   (&optional __trigger_enable)
   (if __trigger_enable (setq _trigger_enable __trigger_enable)) _trigger_enable)
  (:integration_time
   (&optional __integration_time)
   (if __integration_time (setq _integration_time __integration_time)) _integration_time)
  (:serialization-length
   ()
   (+
    ;; bool _trigger_enable
    1
    ;; float32 _integration_time
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _trigger_enable
       (if _trigger_enable (write-byte -1 s) (write-byte 0 s))
     ;; float32 _integration_time
       (sys::poke _integration_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _trigger_enable
     (setq _trigger_enable (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; float32 _integration_time
     (setq _integration_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass mavros_msgs::CommandTriggerControlResponse
  :super ros::object
  :slots (_success _result ))

(defmethod mavros_msgs::CommandTriggerControlResponse
  (:init
   (&key
    ((:success __success) nil)
    ((:result __result) 0)
    )
   (send-super :init)
   (setq _success __success)
   (setq _result (round __result))
   self)
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:result
   (&optional __result)
   (if __result (setq _result __result)) _result)
  (:serialization-length
   ()
   (+
    ;; bool _success
    1
    ;; uint8 _result
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _success
       (if _success (write-byte -1 s) (write-byte 0 s))
     ;; uint8 _result
       (write-byte _result s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _success
     (setq _success (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; uint8 _result
     (setq _result (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(defclass mavros_msgs::CommandTriggerControl
  :super ros::object
  :slots ())

(setf (get mavros_msgs::CommandTriggerControl :md5sum-) "bd1399e8c77c84f4907ede27cbeacaf3")
(setf (get mavros_msgs::CommandTriggerControl :datatype-) "mavros_msgs/CommandTriggerControl")
(setf (get mavros_msgs::CommandTriggerControl :request) mavros_msgs::CommandTriggerControlRequest)
(setf (get mavros_msgs::CommandTriggerControl :response) mavros_msgs::CommandTriggerControlResponse)

(defmethod mavros_msgs::CommandTriggerControlRequest
  (:response () (instance mavros_msgs::CommandTriggerControlResponse :init)))

(setf (get mavros_msgs::CommandTriggerControlRequest :md5sum-) "bd1399e8c77c84f4907ede27cbeacaf3")
(setf (get mavros_msgs::CommandTriggerControlRequest :datatype-) "mavros_msgs/CommandTriggerControlRequest")
(setf (get mavros_msgs::CommandTriggerControlRequest :definition-)
      "

bool    trigger_enable
float32 integration_time
---
bool success
uint8 result

")

(setf (get mavros_msgs::CommandTriggerControlResponse :md5sum-) "bd1399e8c77c84f4907ede27cbeacaf3")
(setf (get mavros_msgs::CommandTriggerControlResponse :datatype-) "mavros_msgs/CommandTriggerControlResponse")
(setf (get mavros_msgs::CommandTriggerControlResponse :definition-)
      "

bool    trigger_enable
float32 integration_time
---
bool success
uint8 result

")



(provide :mavros_msgs/CommandTriggerControl "bd1399e8c77c84f4907ede27cbeacaf3")


