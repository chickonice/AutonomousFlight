
(cl:in-package :asdf)

(defsystem "planning_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "WayPointArray" :depends-on ("_package_WayPointArray"))
    (:file "_package_WayPointArray" :depends-on ("_package"))
    (:file "OctomapScan" :depends-on ("_package_OctomapScan"))
    (:file "_package_OctomapScan" :depends-on ("_package"))
    (:file "WayPoint" :depends-on ("_package_WayPoint"))
    (:file "_package_WayPoint" :depends-on ("_package"))
    (:file "PlanningResponse" :depends-on ("_package_PlanningResponse"))
    (:file "_package_PlanningResponse" :depends-on ("_package"))
    (:file "WaypointType" :depends-on ("_package_WaypointType"))
    (:file "_package_WaypointType" :depends-on ("_package"))
  ))