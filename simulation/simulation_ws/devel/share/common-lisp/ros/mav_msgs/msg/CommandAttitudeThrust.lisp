; Auto-generated. Do not edit!


(cl:in-package mav_msgs-msg)


;//! \htmlinclude CommandAttitudeThrust.msg.html

(cl:defclass <CommandAttitudeThrust> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (attitude
    :reader attitude
    :initarg :attitude
    :type geometry_msgs-msg:Quaternion
    :initform (cl:make-instance 'geometry_msgs-msg:Quaternion))
   (thrust
    :reader thrust
    :initarg :thrust
    :type cl:float
    :initform 0.0))
)

(cl:defclass CommandAttitudeThrust (<CommandAttitudeThrust>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandAttitudeThrust>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandAttitudeThrust)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mav_msgs-msg:<CommandAttitudeThrust> is deprecated: use mav_msgs-msg:CommandAttitudeThrust instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CommandAttitudeThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:header-val is deprecated.  Use mav_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'attitude-val :lambda-list '(m))
(cl:defmethod attitude-val ((m <CommandAttitudeThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:attitude-val is deprecated.  Use mav_msgs-msg:attitude instead.")
  (attitude m))

(cl:ensure-generic-function 'thrust-val :lambda-list '(m))
(cl:defmethod thrust-val ((m <CommandAttitudeThrust>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader mav_msgs-msg:thrust-val is deprecated.  Use mav_msgs-msg:thrust instead.")
  (thrust m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandAttitudeThrust>) ostream)
  "Serializes a message object of type '<CommandAttitudeThrust>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'attitude) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'thrust))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandAttitudeThrust>) istream)
  "Deserializes a message object of type '<CommandAttitudeThrust>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'attitude) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'thrust) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandAttitudeThrust>)))
  "Returns string type for a message object of type '<CommandAttitudeThrust>"
  "mav_msgs/CommandAttitudeThrust")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandAttitudeThrust)))
  "Returns string type for a message object of type 'CommandAttitudeThrust"
  "mav_msgs/CommandAttitudeThrust")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandAttitudeThrust>)))
  "Returns md5sum for a message object of type '<CommandAttitudeThrust>"
  "d4f9a597f2a4d4943a3be2c915e3f97d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandAttitudeThrust)))
  "Returns md5sum for a message object of type 'CommandAttitudeThrust"
  "d4f9a597f2a4d4943a3be2c915e3f97d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandAttitudeThrust>)))
  "Returns full string definition for message of type '<CommandAttitudeThrust>"
  (cl:format cl:nil "Header header~%~%# Message should be specified in the world coordinate frame.~%~%geometry_msgs/Quaternion attitude~%float64 thrust    # thrust [N]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandAttitudeThrust)))
  "Returns full string definition for message of type 'CommandAttitudeThrust"
  (cl:format cl:nil "Header header~%~%# Message should be specified in the world coordinate frame.~%~%geometry_msgs/Quaternion attitude~%float64 thrust    # thrust [N]~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandAttitudeThrust>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'attitude))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandAttitudeThrust>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandAttitudeThrust
    (cl:cons ':header (header msg))
    (cl:cons ':attitude (attitude msg))
    (cl:cons ':thrust (thrust msg))
))
