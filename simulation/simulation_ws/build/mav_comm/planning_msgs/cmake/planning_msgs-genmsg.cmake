# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "planning_msgs: 5 messages, 2 services")

set(MSG_I_FLAGS "-Iplanning_msgs:/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Ioctomap_msgs:/opt/ros/indigo/share/octomap_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(planning_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/Octomap.srv" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/Octomap.srv" "std_msgs/Header:geometry_msgs/Point:octomap_msgs/Octomap"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPointArray.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPointArray.msg" "planning_msgs/WayPoint:std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/PlanningResponse.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/PlanningResponse.msg" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/OctomapScan.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/OctomapScan.msg" "sensor_msgs/PointField:geometry_msgs/Vector3:sensor_msgs/PointCloud2:geometry_msgs/Quaternion:geometry_msgs/Transform:geometry_msgs/TransformStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WaypointType.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WaypointType.msg" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPoint.msg" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPoint.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/PlannerService.srv" NAME_WE)
add_custom_target(_planning_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "planning_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/PlannerService.srv" "geometry_msgs/Point:planning_msgs/PlanningResponse:geometry_msgs/Vector3:geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/PoseStamped:std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/OctomapScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WaypointType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPointArray.msg"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_msg_cpp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/PlanningResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)

### Generating Services
_generate_srv_cpp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/PlannerService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/PlanningResponse.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)
_generate_srv_cpp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/Octomap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/octomap_msgs/cmake/../msg/Octomap.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
)

### Generating Module File
_generate_module_cpp(planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(planning_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(planning_msgs_generate_messages planning_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/Octomap.srv" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPointArray.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/PlanningResponse.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/OctomapScan.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WaypointType.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPoint.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/PlannerService.srv" NAME_WE)
add_dependencies(planning_msgs_generate_messages_cpp _planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planning_msgs_gencpp)
add_dependencies(planning_msgs_gencpp planning_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planning_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/OctomapScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WaypointType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPointArray.msg"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_msg_lisp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/PlanningResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)

### Generating Services
_generate_srv_lisp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/PlannerService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/PlanningResponse.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)
_generate_srv_lisp(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/Octomap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/octomap_msgs/cmake/../msg/Octomap.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
)

### Generating Module File
_generate_module_lisp(planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(planning_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(planning_msgs_generate_messages planning_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/Octomap.srv" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPointArray.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/PlanningResponse.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/OctomapScan.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WaypointType.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPoint.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/PlannerService.srv" NAME_WE)
add_dependencies(planning_msgs_generate_messages_lisp _planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planning_msgs_genlisp)
add_dependencies(planning_msgs_genlisp planning_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planning_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/OctomapScan.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointField.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/sensor_msgs/cmake/../msg/PointCloud2.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Transform.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/TransformStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPoint.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WaypointType.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPointArray.msg"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPoint.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_msg_py(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/PlanningResponse.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)

### Generating Services
_generate_srv_py(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/PlannerService.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/PlanningResponse.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)
_generate_srv_py(planning_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/Octomap.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/octomap_msgs/cmake/../msg/Octomap.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
)

### Generating Module File
_generate_module_py(planning_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(planning_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(planning_msgs_generate_messages planning_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/Octomap.srv" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPointArray.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/PlanningResponse.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/OctomapScan.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WaypointType.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/msg/WayPoint.msg" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/planning_msgs/srv/PlannerService.srv" NAME_WE)
add_dependencies(planning_msgs_generate_messages_py _planning_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(planning_msgs_genpy)
add_dependencies(planning_msgs_genpy planning_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS planning_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/planning_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(planning_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(planning_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(planning_msgs_generate_messages_cpp octomap_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/planning_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(planning_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(planning_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(planning_msgs_generate_messages_lisp octomap_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/planning_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(planning_msgs_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(planning_msgs_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(planning_msgs_generate_messages_py octomap_msgs_generate_messages_py)
