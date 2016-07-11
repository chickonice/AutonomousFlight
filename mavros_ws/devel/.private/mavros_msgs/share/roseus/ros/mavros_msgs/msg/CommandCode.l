;; Auto-generated. Do not edit!


(when (boundp 'mavros_msgs::CommandCode)
  (if (not (find-package "MAVROS_MSGS"))
    (make-package "MAVROS_MSGS"))
  (shadow 'CommandCode (find-package "MAVROS_MSGS")))
(unless (find-package "MAVROS_MSGS::COMMANDCODE")
  (make-package "MAVROS_MSGS::COMMANDCODE"))

(in-package "ROS")
;;//! \htmlinclude CommandCode.msg.html


(intern "*CMD_DO_SET_MODE*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_SET_MODE* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_SET_MODE* 176)
(intern "*CMD_DO_JUMP*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_JUMP* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_JUMP* 177)
(intern "*CMD_DO_CHANGE_SPEED*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_CHANGE_SPEED* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_CHANGE_SPEED* 178)
(intern "*CMD_DO_SET_HOME*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_SET_HOME* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_SET_HOME* 179)
(intern "*CMD_DO_SET_RELAY*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_SET_RELAY* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_SET_RELAY* 181)
(intern "*CMD_DO_REPEAT_RELAY*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_REPEAT_RELAY* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_REPEAT_RELAY* 182)
(intern "*CMD_DO_SET_SERVO*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_SET_SERVO* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_SET_SERVO* 183)
(intern "*CMD_DO_REPEAT_SERVO*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_REPEAT_SERVO* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_REPEAT_SERVO* 184)
(intern "*CMD_DO_CONTROL_VIDEO*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_CONTROL_VIDEO* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_CONTROL_VIDEO* 200)
(intern "*CMD_DO_SET_ROI*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_SET_ROI* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_SET_ROI* 201)
(intern "*CMD_DO_MOUNT_CONTROL*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_MOUNT_CONTROL* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_MOUNT_CONTROL* 205)
(intern "*CMD_DO_SET_CAM_TRIGG_DIST*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_SET_CAM_TRIGG_DIST* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_SET_CAM_TRIGG_DIST* 206)
(intern "*CMD_DO_FENCE_ENABLE*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_FENCE_ENABLE* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_FENCE_ENABLE* 207)
(intern "*CMD_DO_PARACHUTE*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_PARACHUTE* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_PARACHUTE* 208)
(intern "*CMD_DO_INVERTED_FLIGHT*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_INVERTED_FLIGHT* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_INVERTED_FLIGHT* 210)
(intern "*CMD_DO_MOUNT_CONTROL_QUAT*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_MOUNT_CONTROL_QUAT* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_MOUNT_CONTROL_QUAT* 220)
(intern "*CMD_PREFLIGHT_CALIBRATION*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_PREFLIGHT_CALIBRATION* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_PREFLIGHT_CALIBRATION* 241)
(intern "*CMD_MISSION_START*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_MISSION_START* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_MISSION_START* 300)
(intern "*CMD_COMPONENT_ARM_DISARM*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_COMPONENT_ARM_DISARM* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_COMPONENT_ARM_DISARM* 400)
(intern "*CMD_START_RX_PAIR*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_START_RX_PAIR* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_START_RX_PAIR* 500)
(intern "*CMD_REQUEST_AUTOPILOT_CAPABILITIES*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_REQUEST_AUTOPILOT_CAPABILITIES* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_REQUEST_AUTOPILOT_CAPABILITIES* 520)
(intern "*CMD_DO_TRIGGER_CONTROL*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*CMD_DO_TRIGGER_CONTROL* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*CMD_DO_TRIGGER_CONTROL* 2003)
(intern "*NAV_WAYPOINT*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*NAV_WAYPOINT* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*NAV_WAYPOINT* 16)
(intern "*NAV_LOITER_UNLIM*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*NAV_LOITER_UNLIM* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*NAV_LOITER_UNLIM* 17)
(intern "*NAV_LOITER_TURNS*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*NAV_LOITER_TURNS* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*NAV_LOITER_TURNS* 18)
(intern "*NAV_LOITER_TIME*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*NAV_LOITER_TIME* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*NAV_LOITER_TIME* 19)
(intern "*NAV_RETURN_TO_LAUNCH*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*NAV_RETURN_TO_LAUNCH* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*NAV_RETURN_TO_LAUNCH* 20)
(intern "*NAV_LAND*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*NAV_LAND* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*NAV_LAND* 21)
(intern "*NAV_TAKEOFF*" (find-package "MAVROS_MSGS::COMMANDCODE"))
(shadow '*NAV_TAKEOFF* (find-package "MAVROS_MSGS::COMMANDCODE"))
(defconstant mavros_msgs::CommandCode::*NAV_TAKEOFF* 22)
(defclass mavros_msgs::CommandCode
  :super ros::object
  :slots ())

(defmethod mavros_msgs::CommandCode
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get mavros_msgs::CommandCode :md5sum-) "f7e54ea3892a961cc44c9350fdb0855e")
(setf (get mavros_msgs::CommandCode :datatype-) "mavros_msgs/CommandCode")
(setf (get mavros_msgs::CommandCode :definition-)
      "# Some MAV_CMD command codes.
# Actual meaning and params you may find in MAVLink documentation
# http://mavlink.org/messages/common#ENUM_MAV_CMD

# some common MAV_CMD
uint16 CMD_DO_SET_MODE = 176
uint16 CMD_DO_JUMP = 177
uint16 CMD_DO_CHANGE_SPEED = 178
uint16 CMD_DO_SET_HOME = 179
uint16 CMD_DO_SET_RELAY = 181
uint16 CMD_DO_REPEAT_RELAY = 182
uint16 CMD_DO_SET_SERVO = 183
uint16 CMD_DO_REPEAT_SERVO = 184
uint16 CMD_DO_CONTROL_VIDEO = 200
uint16 CMD_DO_SET_ROI = 201
uint16 CMD_DO_MOUNT_CONTROL = 205
uint16 CMD_DO_SET_CAM_TRIGG_DIST = 206
uint16 CMD_DO_FENCE_ENABLE = 207
uint16 CMD_DO_PARACHUTE = 208
uint16 CMD_DO_INVERTED_FLIGHT = 210
uint16 CMD_DO_MOUNT_CONTROL_QUAT = 220
uint16 CMD_PREFLIGHT_CALIBRATION = 241
uint16 CMD_MISSION_START = 300
uint16 CMD_COMPONENT_ARM_DISARM = 400
uint16 CMD_START_RX_PAIR = 500
uint16 CMD_REQUEST_AUTOPILOT_CAPABILITIES = 520
uint16 CMD_DO_TRIGGER_CONTROL = 2003

# Waypoint related commands
uint16 NAV_WAYPOINT = 16
uint16 NAV_LOITER_UNLIM = 17
uint16 NAV_LOITER_TURNS = 18
uint16 NAV_LOITER_TIME = 19
uint16 NAV_RETURN_TO_LAUNCH = 20
uint16 NAV_LAND = 21
uint16 NAV_TAKEOFF = 22


")



(provide :mavros_msgs/CommandCode "f7e54ea3892a961cc44c9350fdb0855e")


