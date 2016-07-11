; Auto-generated. Do not edit!


(cl:in-package mavros_msgs-msg)


;//! \htmlinclude CommandCode.msg.html

(cl:defclass <CommandCode> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass CommandCode (<CommandCode>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommandCode>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommandCode)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name mavros_msgs-msg:<CommandCode> is deprecated: use mavros_msgs-msg:CommandCode instead.")))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<CommandCode>)))
    "Constants for message type '<CommandCode>"
  '((:CMD_DO_SET_MODE . 176)
    (:CMD_DO_JUMP . 177)
    (:CMD_DO_CHANGE_SPEED . 178)
    (:CMD_DO_SET_HOME . 179)
    (:CMD_DO_SET_RELAY . 181)
    (:CMD_DO_REPEAT_RELAY . 182)
    (:CMD_DO_SET_SERVO . 183)
    (:CMD_DO_REPEAT_SERVO . 184)
    (:CMD_DO_CONTROL_VIDEO . 200)
    (:CMD_DO_SET_ROI . 201)
    (:CMD_DO_MOUNT_CONTROL . 205)
    (:CMD_DO_SET_CAM_TRIGG_DIST . 206)
    (:CMD_DO_FENCE_ENABLE . 207)
    (:CMD_DO_PARACHUTE . 208)
    (:CMD_DO_INVERTED_FLIGHT . 210)
    (:CMD_DO_MOUNT_CONTROL_QUAT . 220)
    (:CMD_PREFLIGHT_CALIBRATION . 241)
    (:CMD_MISSION_START . 300)
    (:CMD_COMPONENT_ARM_DISARM . 400)
    (:CMD_START_RX_PAIR . 500)
    (:CMD_REQUEST_AUTOPILOT_CAPABILITIES . 520)
    (:CMD_DO_TRIGGER_CONTROL . 2003)
    (:NAV_WAYPOINT . 16)
    (:NAV_LOITER_UNLIM . 17)
    (:NAV_LOITER_TURNS . 18)
    (:NAV_LOITER_TIME . 19)
    (:NAV_RETURN_TO_LAUNCH . 20)
    (:NAV_LAND . 21)
    (:NAV_TAKEOFF . 22))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'CommandCode)))
    "Constants for message type 'CommandCode"
  '((:CMD_DO_SET_MODE . 176)
    (:CMD_DO_JUMP . 177)
    (:CMD_DO_CHANGE_SPEED . 178)
    (:CMD_DO_SET_HOME . 179)
    (:CMD_DO_SET_RELAY . 181)
    (:CMD_DO_REPEAT_RELAY . 182)
    (:CMD_DO_SET_SERVO . 183)
    (:CMD_DO_REPEAT_SERVO . 184)
    (:CMD_DO_CONTROL_VIDEO . 200)
    (:CMD_DO_SET_ROI . 201)
    (:CMD_DO_MOUNT_CONTROL . 205)
    (:CMD_DO_SET_CAM_TRIGG_DIST . 206)
    (:CMD_DO_FENCE_ENABLE . 207)
    (:CMD_DO_PARACHUTE . 208)
    (:CMD_DO_INVERTED_FLIGHT . 210)
    (:CMD_DO_MOUNT_CONTROL_QUAT . 220)
    (:CMD_PREFLIGHT_CALIBRATION . 241)
    (:CMD_MISSION_START . 300)
    (:CMD_COMPONENT_ARM_DISARM . 400)
    (:CMD_START_RX_PAIR . 500)
    (:CMD_REQUEST_AUTOPILOT_CAPABILITIES . 520)
    (:CMD_DO_TRIGGER_CONTROL . 2003)
    (:NAV_WAYPOINT . 16)
    (:NAV_LOITER_UNLIM . 17)
    (:NAV_LOITER_TURNS . 18)
    (:NAV_LOITER_TIME . 19)
    (:NAV_RETURN_TO_LAUNCH . 20)
    (:NAV_LAND . 21)
    (:NAV_TAKEOFF . 22))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommandCode>) ostream)
  "Serializes a message object of type '<CommandCode>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommandCode>) istream)
  "Deserializes a message object of type '<CommandCode>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommandCode>)))
  "Returns string type for a message object of type '<CommandCode>"
  "mavros_msgs/CommandCode")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommandCode)))
  "Returns string type for a message object of type 'CommandCode"
  "mavros_msgs/CommandCode")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommandCode>)))
  "Returns md5sum for a message object of type '<CommandCode>"
  "f7e54ea3892a961cc44c9350fdb0855e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommandCode)))
  "Returns md5sum for a message object of type 'CommandCode"
  "f7e54ea3892a961cc44c9350fdb0855e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommandCode>)))
  "Returns full string definition for message of type '<CommandCode>"
  (cl:format cl:nil "# Some MAV_CMD command codes.~%# Actual meaning and params you may find in MAVLink documentation~%# http://mavlink.org/messages/common#ENUM_MAV_CMD~%~%# some common MAV_CMD~%uint16 CMD_DO_SET_MODE = 176~%uint16 CMD_DO_JUMP = 177~%uint16 CMD_DO_CHANGE_SPEED = 178~%uint16 CMD_DO_SET_HOME = 179~%uint16 CMD_DO_SET_RELAY = 181~%uint16 CMD_DO_REPEAT_RELAY = 182~%uint16 CMD_DO_SET_SERVO = 183~%uint16 CMD_DO_REPEAT_SERVO = 184~%uint16 CMD_DO_CONTROL_VIDEO = 200~%uint16 CMD_DO_SET_ROI = 201~%uint16 CMD_DO_MOUNT_CONTROL = 205~%uint16 CMD_DO_SET_CAM_TRIGG_DIST = 206~%uint16 CMD_DO_FENCE_ENABLE = 207~%uint16 CMD_DO_PARACHUTE = 208~%uint16 CMD_DO_INVERTED_FLIGHT = 210~%uint16 CMD_DO_MOUNT_CONTROL_QUAT = 220~%uint16 CMD_PREFLIGHT_CALIBRATION = 241~%uint16 CMD_MISSION_START = 300~%uint16 CMD_COMPONENT_ARM_DISARM = 400~%uint16 CMD_START_RX_PAIR = 500~%uint16 CMD_REQUEST_AUTOPILOT_CAPABILITIES = 520~%uint16 CMD_DO_TRIGGER_CONTROL = 2003~%~%# Waypoint related commands~%uint16 NAV_WAYPOINT = 16~%uint16 NAV_LOITER_UNLIM = 17~%uint16 NAV_LOITER_TURNS = 18~%uint16 NAV_LOITER_TIME = 19~%uint16 NAV_RETURN_TO_LAUNCH = 20~%uint16 NAV_LAND = 21~%uint16 NAV_TAKEOFF = 22~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommandCode)))
  "Returns full string definition for message of type 'CommandCode"
  (cl:format cl:nil "# Some MAV_CMD command codes.~%# Actual meaning and params you may find in MAVLink documentation~%# http://mavlink.org/messages/common#ENUM_MAV_CMD~%~%# some common MAV_CMD~%uint16 CMD_DO_SET_MODE = 176~%uint16 CMD_DO_JUMP = 177~%uint16 CMD_DO_CHANGE_SPEED = 178~%uint16 CMD_DO_SET_HOME = 179~%uint16 CMD_DO_SET_RELAY = 181~%uint16 CMD_DO_REPEAT_RELAY = 182~%uint16 CMD_DO_SET_SERVO = 183~%uint16 CMD_DO_REPEAT_SERVO = 184~%uint16 CMD_DO_CONTROL_VIDEO = 200~%uint16 CMD_DO_SET_ROI = 201~%uint16 CMD_DO_MOUNT_CONTROL = 205~%uint16 CMD_DO_SET_CAM_TRIGG_DIST = 206~%uint16 CMD_DO_FENCE_ENABLE = 207~%uint16 CMD_DO_PARACHUTE = 208~%uint16 CMD_DO_INVERTED_FLIGHT = 210~%uint16 CMD_DO_MOUNT_CONTROL_QUAT = 220~%uint16 CMD_PREFLIGHT_CALIBRATION = 241~%uint16 CMD_MISSION_START = 300~%uint16 CMD_COMPONENT_ARM_DISARM = 400~%uint16 CMD_START_RX_PAIR = 500~%uint16 CMD_REQUEST_AUTOPILOT_CAPABILITIES = 520~%uint16 CMD_DO_TRIGGER_CONTROL = 2003~%~%# Waypoint related commands~%uint16 NAV_WAYPOINT = 16~%uint16 NAV_LOITER_UNLIM = 17~%uint16 NAV_LOITER_TURNS = 18~%uint16 NAV_LOITER_TIME = 19~%uint16 NAV_RETURN_TO_LAUNCH = 20~%uint16 NAV_LAND = 21~%uint16 NAV_TAKEOFF = 22~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommandCode>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommandCode>))
  "Converts a ROS message object to a list"
  (cl:list 'CommandCode
))
