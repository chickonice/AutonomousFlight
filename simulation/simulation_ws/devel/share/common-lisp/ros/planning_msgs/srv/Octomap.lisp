; Auto-generated. Do not edit!


(cl:in-package planning_msgs-srv)


;//! \htmlinclude Octomap-request.msg.html

(cl:defclass <Octomap-request> (roslisp-msg-protocol:ros-message)
  ((bounding_box_origin
    :reader bounding_box_origin
    :initarg :bounding_box_origin
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (bounding_box_lengths
    :reader bounding_box_lengths
    :initarg :bounding_box_lengths
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (leaf_size
    :reader leaf_size
    :initarg :leaf_size
    :type cl:float
    :initform 0.0)
   (filename
    :reader filename
    :initarg :filename
    :type cl:string
    :initform ""))
)

(cl:defclass Octomap-request (<Octomap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Octomap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Octomap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-srv:<Octomap-request> is deprecated: use planning_msgs-srv:Octomap-request instead.")))

(cl:ensure-generic-function 'bounding_box_origin-val :lambda-list '(m))
(cl:defmethod bounding_box_origin-val ((m <Octomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:bounding_box_origin-val is deprecated.  Use planning_msgs-srv:bounding_box_origin instead.")
  (bounding_box_origin m))

(cl:ensure-generic-function 'bounding_box_lengths-val :lambda-list '(m))
(cl:defmethod bounding_box_lengths-val ((m <Octomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:bounding_box_lengths-val is deprecated.  Use planning_msgs-srv:bounding_box_lengths instead.")
  (bounding_box_lengths m))

(cl:ensure-generic-function 'leaf_size-val :lambda-list '(m))
(cl:defmethod leaf_size-val ((m <Octomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:leaf_size-val is deprecated.  Use planning_msgs-srv:leaf_size instead.")
  (leaf_size m))

(cl:ensure-generic-function 'filename-val :lambda-list '(m))
(cl:defmethod filename-val ((m <Octomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:filename-val is deprecated.  Use planning_msgs-srv:filename instead.")
  (filename m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Octomap-request>) ostream)
  "Serializes a message object of type '<Octomap-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'bounding_box_lengths) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'leaf_size))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'filename))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'filename))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Octomap-request>) istream)
  "Deserializes a message object of type '<Octomap-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'bounding_box_lengths) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'leaf_size) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'filename) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'filename) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Octomap-request>)))
  "Returns string type for a service object of type '<Octomap-request>"
  "planning_msgs/OctomapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Octomap-request)))
  "Returns string type for a service object of type 'Octomap-request"
  "planning_msgs/OctomapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Octomap-request>)))
  "Returns md5sum for a message object of type '<Octomap-request>"
  "372c615313844175e948d7a83972d589")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Octomap-request)))
  "Returns md5sum for a message object of type 'Octomap-request"
  "372c615313844175e948d7a83972d589")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Octomap-request>)))
  "Returns full string definition for message of type '<Octomap-request>"
  (cl:format cl:nil "~%geometry_msgs/Point bounding_box_origin~%~%geometry_msgs/Point bounding_box_lengths~%~%float64 leaf_size~%~%string filename~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Octomap-request)))
  "Returns full string definition for message of type 'Octomap-request"
  (cl:format cl:nil "~%geometry_msgs/Point bounding_box_origin~%~%geometry_msgs/Point bounding_box_lengths~%~%float64 leaf_size~%~%string filename~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Octomap-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'bounding_box_lengths))
     8
     4 (cl:length (cl:slot-value msg 'filename))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Octomap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'Octomap-request
    (cl:cons ':bounding_box_origin (bounding_box_origin msg))
    (cl:cons ':bounding_box_lengths (bounding_box_lengths msg))
    (cl:cons ':leaf_size (leaf_size msg))
    (cl:cons ':filename (filename msg))
))
;//! \htmlinclude Octomap-response.msg.html

(cl:defclass <Octomap-response> (roslisp-msg-protocol:ros-message)
  ((map
    :reader map
    :initarg :map
    :type octomap_msgs-msg:Octomap
    :initform (cl:make-instance 'octomap_msgs-msg:Octomap)))
)

(cl:defclass Octomap-response (<Octomap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Octomap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Octomap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name planning_msgs-srv:<Octomap-response> is deprecated: use planning_msgs-srv:Octomap-response instead.")))

(cl:ensure-generic-function 'map-val :lambda-list '(m))
(cl:defmethod map-val ((m <Octomap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader planning_msgs-srv:map-val is deprecated.  Use planning_msgs-srv:map instead.")
  (map m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Octomap-response>) ostream)
  "Serializes a message object of type '<Octomap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'map) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Octomap-response>) istream)
  "Deserializes a message object of type '<Octomap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'map) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Octomap-response>)))
  "Returns string type for a service object of type '<Octomap-response>"
  "planning_msgs/OctomapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Octomap-response)))
  "Returns string type for a service object of type 'Octomap-response"
  "planning_msgs/OctomapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Octomap-response>)))
  "Returns md5sum for a message object of type '<Octomap-response>"
  "372c615313844175e948d7a83972d589")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Octomap-response)))
  "Returns md5sum for a message object of type 'Octomap-response"
  "372c615313844175e948d7a83972d589")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Octomap-response>)))
  "Returns full string definition for message of type '<Octomap-response>"
  (cl:format cl:nil "octomap_msgs/Octomap map~%~%~%================================================================================~%MSG: octomap_msgs/Octomap~%# A 3D map in binary format, as Octree~%Header header~%~%# Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)~%bool binary~%~%# Class id of the contained octree ~%string id~%~%# Resolution (in m) of the smallest octree nodes~%float64 resolution~%~%# binary serialization of octree, use conversions.h to read and write octrees~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Octomap-response)))
  "Returns full string definition for message of type 'Octomap-response"
  (cl:format cl:nil "octomap_msgs/Octomap map~%~%~%================================================================================~%MSG: octomap_msgs/Octomap~%# A 3D map in binary format, as Octree~%Header header~%~%# Flag to denote a binary (only free/occupied) or full occupancy octree (.bt/.ot file)~%bool binary~%~%# Class id of the contained octree ~%string id~%~%# Resolution (in m) of the smallest octree nodes~%float64 resolution~%~%# binary serialization of octree, use conversions.h to read and write octrees~%int8[] data~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Octomap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'map))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Octomap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'Octomap-response
    (cl:cons ':map (map msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'Octomap)))
  'Octomap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'Octomap)))
  'Octomap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Octomap)))
  "Returns string type for a service object of type '<Octomap>"
  "planning_msgs/Octomap")