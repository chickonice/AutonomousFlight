; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude WaypointType.msg.html

(cl:defclass <WaypointType> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass WaypointType (<WaypointType>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointType>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointType)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<WaypointType> is deprecated: use planning_msgs-msg:WaypointType instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<WaypointType>)))
    "Constants for message type '<WaypointType>"
  '((:POSE . 1)
    (:POLYNOMIAL . 2)
    (:POLYNOMIAL_10 . 210)
    (:POLYNOMIAL_12 . 212))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'WaypointType)))
    "Constants for message type 'WaypointType"
  '((:POSE . 1)
    (:POLYNOMIAL . 2)
    (:POLYNOMIAL_10 . 210)
    (:POLYNOMIAL_12 . 212))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointType>) ostream)
  "Serializes a message object of type '<WaypointType>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointType>) istream)
  "Deserializes a message object of type '<WaypointType>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointType>)))
  "Returns string type for a message object of type '<WaypointType>"
  "planning_msgs/WaypointType")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointType)))
  "Returns string type for a message object of type 'WaypointType"
  "planning_msgs/WaypointType")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointType>)))
  "Returns md5sum for a message object of type '<WaypointType>"
  "ab2317fe7228faf4b4c92459f5353963")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointType)))
  "Returns md5sum for a message object of type 'WaypointType"
  "ab2317fe7228faf4b4c92459f5353963")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointType>)))
  "Returns full string definition for message of type '<WaypointType>"
  (cl:format cl:nil "int32 POSE=1~%int32 POLYNOMIAL=2 # stores the coefficients of a polynomial in the waypoint fields. Coefficients are stored in increasing order, i.e. c0 + c1*t + c2*t^2 ...~%int32 POLYNOMIAL_10=210 # polynomial with 10 coefficients, i.e. 9th order~%int32 POLYNOMIAL_12=212 # polynomial with 12 coefficients, i.e. 11th order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointType)))
  "Returns full string definition for message of type 'WaypointType"
  (cl:format cl:nil "int32 POSE=1~%int32 POLYNOMIAL=2 # stores the coefficients of a polynomial in the waypoint fields. Coefficients are stored in increasing order, i.e. c0 + c1*t + c2*t^2 ...~%int32 POLYNOMIAL_10=210 # polynomial with 10 coefficients, i.e. 9th order~%int32 POLYNOMIAL_12=212 # polynomial with 12 coefficients, i.e. 11th order~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointType>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointType>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointType
))
