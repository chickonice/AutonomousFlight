; Auto-generated. Do not edit!


(cl:in-package planning_msgs-srv)


;//! \htmlinclude PlannerService-request.msg.html

(cl:defclass <PlannerService-request> (roslisp-msg-protocol:ros-message)
  ((start_pose
    :reader start_pose
    :initarg :start_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (start_velocity
    :reader start_velocity
    :initarg :start_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (goal_pose
    :reader goal_pose
    :initarg :goal_pose
    :type geometry_msgs-msg:PoseStamped
    :initform (cl:make-instance 'geometry_msgs-msg:PoseStamped))
   (goal_velocity
    :reader goal_velocity
    :initarg :goal_velocity
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (bounding_box
    :reader bounding_box
    :initarg :bounding_box
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3)))
)

(cl:defclass PlannerService-request (<PlannerService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-srv:<PlannerService-request> is deprecated: use planning_msgs-srv:PlannerService-request instead.")))

(cl:ensure-generic-function 'start_pose-val :lambda-list '(m))
(cl:defmethod start_pose-val ((m <PlannerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:start_pose-val is deprecated.  Use planning_msgs-srv:start_pose instead.")
  (start_pose m))

(cl:ensure-generic-function 'start_velocity-val :lambda-list '(m))
(cl:defmethod start_velocity-val ((m <PlannerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:start_velocity-val is deprecated.  Use planning_msgs-srv:start_velocity instead.")
  (start_velocity m))

(cl:ensure-generic-function 'goal_pose-val :lambda-list '(m))
(cl:defmethod goal_pose-val ((m <PlannerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:goal_pose-val is deprecated.  Use planning_msgs-srv:goal_pose instead.")
  (goal_pose m))

(cl:ensure-generic-function 'goal_velocity-val :lambda-list '(m))
(cl:defmethod goal_velocity-val ((m <PlannerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:goal_velocity-val is deprecated.  Use planning_msgs-srv:goal_velocity instead.")
  (goal_velocity m))

(cl:ensure-generic-function 'bounding_box-val :lambda-list '(m))
(cl:defmethod bounding_box-val ((m <PlannerService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:bounding_box-val is deprecated.  Use planning_msgs-srv:bounding_box instead.")
  (bounding_box m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerService-request>) ostream)
  "Serializes a message object of type '<PlannerService-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'start_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerService-request>) istream)
  "Deserializes a message object of type '<PlannerService-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'start_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerService-request>)))
  "Returns string type for a service object of type '<PlannerService-request>"
  "planning_msgs/PlannerServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerService-request)))
  "Returns string type for a service object of type 'PlannerService-request"
  "planning_msgs/PlannerServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerService-request>)))
  "Returns md5sum for a message object of type '<PlannerService-request>"
  "e7bc30e0b0a79c76a0ad1244f8818092")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerService-request)))
  "Returns md5sum for a message object of type 'PlannerService-request"
  "e7bc30e0b0a79c76a0ad1244f8818092")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerService-request>)))
  "Returns full string definition for message of type '<PlannerService-request>"
  (cl:format cl:nil "~%geometry_msgs/PoseStamped start_pose~%geometry_msgs/Vector3 start_velocity~%geometry_msgs/PoseStamped goal_pose~%geometry_msgs/Vector3 goal_velocity~%geometry_msgs/Vector3 bounding_box~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerService-request)))
  "Returns full string definition for message of type 'PlannerService-request"
  (cl:format cl:nil "~%geometry_msgs/PoseStamped start_pose~%geometry_msgs/Vector3 start_velocity~%geometry_msgs/PoseStamped goal_pose~%geometry_msgs/Vector3 goal_velocity~%geometry_msgs/Vector3 bounding_box~%~%================================================================================~%MSG: geometry_msgs/PoseStamped~%# A Pose with reference coordinate frame and timestamp~%Header header~%Pose pose~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerService-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'start_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerService-request
    (cl:cons ':start_pose (start_pose msg))
    (cl:cons ':start_velocity (start_velocity msg))
    (cl:cons ':goal_pose (goal_pose msg))
    (cl:cons ':goal_velocity (goal_velocity msg))
    (cl:cons ':bounding_box (bounding_box msg))
))
;//! \htmlinclude PlannerService-response.msg.html

(cl:defclass <PlannerService-response> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (plan
    :reader plan
    :initarg :plan
    :type planning_msgs-msg:PlanningResponse
    :initform (cl:make-instance 'planning_msgs-msg:PlanningResponse)))
)

(cl:defclass PlannerService-response (<PlannerService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlannerService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlannerService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-srv:<PlannerService-response> is deprecated: use planning_msgs-srv:PlannerService-response instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <PlannerService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:status-val is deprecated.  Use planning_msgs-srv:status instead.")
  (status m))

(cl:ensure-generic-function 'plan-val :lambda-list '(m))
(cl:defmethod plan-val ((m <PlannerService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:plan-val is deprecated.  Use planning_msgs-srv:plan instead.")
  (plan m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlannerService-response>)))
    "Constants for message type '<PlannerService-response>"
  '((:PLANNINGSUCCESS . 1)
    (:PLANNINGFAILED . 2))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlannerService-response)))
    "Constants for message type 'PlannerService-response"
  '((:PLANNINGSUCCESS . 1)
    (:PLANNINGFAILED . 2))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlannerService-response>) ostream)
  "Serializes a message object of type '<PlannerService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'plan) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlannerService-response>) istream)
  "Deserializes a message object of type '<PlannerService-response>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'plan) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlannerService-response>)))
  "Returns string type for a service object of type '<PlannerService-response>"
  "planning_msgs/PlannerServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerService-response)))
  "Returns string type for a service object of type 'PlannerService-response"
  "planning_msgs/PlannerServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlannerService-response>)))
  "Returns md5sum for a message object of type '<PlannerService-response>"
  "e7bc30e0b0a79c76a0ad1244f8818092")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlannerService-response)))
  "Returns md5sum for a message object of type 'PlannerService-response"
  "e7bc30e0b0a79c76a0ad1244f8818092")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlannerService-response>)))
  "Returns full string definition for message of type '<PlannerService-response>"
  (cl:format cl:nil "~%uint8 PLANNINGSUCCESS=1~%uint8 PLANNINGFAILED=2~%~%uint8 status~%PlanningResponse plan~%~%~%~%================================================================================~%MSG: planning_msgs/PlanningResponse~%float64[] path # m x n matrix~%float64[] time # n vector with times~%int32 number_primitives  # = n~%int32 waypoint_type #polynom, pose etc.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlannerService-response)))
  "Returns full string definition for message of type 'PlannerService-response"
  (cl:format cl:nil "~%uint8 PLANNINGSUCCESS=1~%uint8 PLANNINGFAILED=2~%~%uint8 status~%PlanningResponse plan~%~%~%~%================================================================================~%MSG: planning_msgs/PlanningResponse~%float64[] path # m x n matrix~%float64[] time # n vector with times~%int32 number_primitives  # = n~%int32 waypoint_type #polynom, pose etc.~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlannerService-response>))
  (cl:+ 0
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'plan))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlannerService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlannerService-response
    (cl:cons ':status (status msg))
    (cl:cons ':plan (plan msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlannerService)))
  'PlannerService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlannerService)))
  'PlannerService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlannerService)))
  "Returns string type for a service object of type '<PlannerService>"
  "planning_msgs/PlannerService")