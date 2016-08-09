
(cl:in-package :asdf)

(defsystem "mav_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CommandAttitudeThrust" :depends-on ("_package_CommandAttitudeThrust"))
    (:file "_package_CommandAttitudeThrust" :depends-on ("_package"))
    (:file "CommandRateThrust" :depends-on ("_package_CommandRateThrust"))
    (:file "_package_CommandRateThrust" :depends-on ("_package"))
    (:file "CommandVelocityTrajectory" :depends-on ("_package_CommandVelocityTrajectory"))
    (:file "_package_CommandVelocityTrajectory" :depends-on ("_package"))
    (:file "CommandTrajectory" :depends-on ("_package_CommandTrajectory"))
    (:file "_package_CommandTrajectory" :depends-on ("_package"))
    (:file "MotorSpeed" :depends-on ("_package_MotorSpeed"))
    (:file "_package_MotorSpeed" :depends-on ("_package"))
    (:file "CommandMotorSpeed" :depends-on ("_package_CommandMotorSpeed"))
    (:file "_package_CommandMotorSpeed" :depends-on ("_package"))
    (:file "CommandRollPitchYawrateThrust" :depends-on ("_package_CommandRollPitchYawrateThrust"))
    (:file "_package_CommandRollPitchYawrateThrust" :depends-on ("_package"))
  ))