
(cl:in-package :asdf)

(defsystem "mavros_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CommandCode" :depends-on ("_package_CommandCode"))
    (:file "_package_CommandCode" :depends-on ("_package"))
    (:file "HilControls" :depends-on ("_package_HilControls"))
    (:file "_package_HilControls" :depends-on ("_package"))
    (:file "ActuatorControl" :depends-on ("_package_ActuatorControl"))
    (:file "_package_ActuatorControl" :depends-on ("_package"))
    (:file "WaypointList" :depends-on ("_package_WaypointList"))
    (:file "_package_WaypointList" :depends-on ("_package"))
    (:file "AttitudeTarget" :depends-on ("_package_AttitudeTarget"))
    (:file "_package_AttitudeTarget" :depends-on ("_package"))
    (:file "Mavlink" :depends-on ("_package_Mavlink"))
    (:file "_package_Mavlink" :depends-on ("_package"))
    (:file "PositionTarget" :depends-on ("_package_PositionTarget"))
    (:file "_package_PositionTarget" :depends-on ("_package"))
    (:file "OverrideRCIn" :depends-on ("_package_OverrideRCIn"))
    (:file "_package_OverrideRCIn" :depends-on ("_package"))
    (:file "RCIn" :depends-on ("_package_RCIn"))
    (:file "_package_RCIn" :depends-on ("_package"))
    (:file "ParamValue" :depends-on ("_package_ParamValue"))
    (:file "_package_ParamValue" :depends-on ("_package"))
    (:file "BatteryStatus" :depends-on ("_package_BatteryStatus"))
    (:file "_package_BatteryStatus" :depends-on ("_package"))
    (:file "RadioStatus" :depends-on ("_package_RadioStatus"))
    (:file "_package_RadioStatus" :depends-on ("_package"))
    (:file "RCOut" :depends-on ("_package_RCOut"))
    (:file "_package_RCOut" :depends-on ("_package"))
    (:file "State" :depends-on ("_package_State"))
    (:file "_package_State" :depends-on ("_package"))
    (:file "ManualControl" :depends-on ("_package_ManualControl"))
    (:file "_package_ManualControl" :depends-on ("_package"))
    (:file "ExtendedState" :depends-on ("_package_ExtendedState"))
    (:file "_package_ExtendedState" :depends-on ("_package"))
    (:file "Vibration" :depends-on ("_package_Vibration"))
    (:file "_package_Vibration" :depends-on ("_package"))
    (:file "VFR_HUD" :depends-on ("_package_VFR_HUD"))
    (:file "_package_VFR_HUD" :depends-on ("_package"))
    (:file "FileEntry" :depends-on ("_package_FileEntry"))
    (:file "_package_FileEntry" :depends-on ("_package"))
    (:file "CamIMUStamp" :depends-on ("_package_CamIMUStamp"))
    (:file "_package_CamIMUStamp" :depends-on ("_package"))
    (:file "HomePosition" :depends-on ("_package_HomePosition"))
    (:file "_package_HomePosition" :depends-on ("_package"))
    (:file "Altitude" :depends-on ("_package_Altitude"))
    (:file "_package_Altitude" :depends-on ("_package"))
    (:file "Waypoint" :depends-on ("_package_Waypoint"))
    (:file "_package_Waypoint" :depends-on ("_package"))
    (:file "OpticalFlowRad" :depends-on ("_package_OpticalFlowRad"))
    (:file "_package_OpticalFlowRad" :depends-on ("_package"))
    (:file "GlobalPositionTarget" :depends-on ("_package_GlobalPositionTarget"))
    (:file "_package_GlobalPositionTarget" :depends-on ("_package"))
  ))