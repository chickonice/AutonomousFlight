; Auto-generated. Do not edit!


(cl:in-package planning_msgs-msg)


;//! \htmlinclude WayPointArray.msg.html

(cl:defclass <WayPointArray> (roslisp-msg-protocol:ros-message)
  ((waypoints
    :reader waypoints
    :initarg :waypoints
    :type (cl:vector planning_msgs-msg:WayPoint)
   :initform (cl:make-array 0 :element-type 'planning_msgs-msg:WayPoint :initial-element (cl:make-instance 'planning_msgs-msg:WayPoint))))
)

(cl:defclass WayPointArray (<WayPointArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WayPointArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WayPointArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-msg:<WayPointArray> is deprecated: use planning_msgs-msg:WayPointArray instead.")))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <WayPointArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-msg:waypoints-val is deprecated.  Use planning_msgs-msg:waypoints instead.")
  (waypoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WayPointArray>) ostream)
  "Serializes a message object of type '<WayPointArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'waypoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'waypoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WayPointArray>) istream)
  "Deserializes a message object of type '<WayPointArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'waypoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'waypoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'planning_msgs-msg:WayPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WayPointArray>)))
  "Returns string type for a message object of type '<WayPointArray>"
  "planning_msgs/WayPointArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WayPointArray)))
  "Returns string type for a message object of type 'WayPointArray"
  "planning_msgs/WayPointArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WayPointArray>)))
  "Returns md5sum for a message object of type '<WayPointArray>"
  "016d2aea6905a87be0cba110c54b2674")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WayPointArray)))
  "Returns md5sum for a message object of type 'WayPointArray"
  "016d2aea6905a87be0cba110c54b2674")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WayPointArray>)))
  "Returns full string definition for message of type '<WayPointArray>"
  (cl:format cl:nil "WayPoint[] waypoints~%~%================================================================================~%MSG: planning_msgs/WayPoint~%Header header~%float64[] x       # holds motion primitive for the x-axis~%float64[] y       # holds motion primitive for the y-axis~%float64[] z       # holds motion primitive for the z-axis~%float64[] yaw     # holds motion primitive for yaw~%int32 type        # defines the type of the waypoint~%float64 time      # time for that waypoint. If it is a \"real\" point, this is the time to stay on that point. In case of a polynomial, it is the time [0...time] for which the polynomial is valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WayPointArray)))
  "Returns full string definition for message of type 'WayPointArray"
  (cl:format cl:nil "WayPoint[] waypoints~%~%================================================================================~%MSG: planning_msgs/WayPoint~%Header header~%float64[] x       # holds motion primitive for the x-axis~%float64[] y       # holds motion primitive for the y-axis~%float64[] z       # holds motion primitive for the z-axis~%float64[] yaw     # holds motion primitive for yaw~%int32 type        # defines the type of the waypoint~%float64 time      # time for that waypoint. If it is a \"real\" point, this is the time to stay on that point. In case of a polynomial, it is the time [0...time] for which the polynomial is valid~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WayPointArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'waypoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WayPointArray>))
  "Converts a ROS message object to a list"
  (cl:list 'WayPointArray
    (cl:cons ':waypoints (waypoints msg))
))
