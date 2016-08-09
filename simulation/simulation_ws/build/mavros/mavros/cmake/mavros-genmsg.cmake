# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mavros: 12 messages, 27 services")

set(MSG_I_FLAGS "-Imavros:/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg;-Idiagnostic_msgs:/opt/ros/indigo/share/diagnostic_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mavros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileWrite.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileWrite.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/WaypointList.msg" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/WaypointList.msg" "mavros/Waypoint"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointGOTO.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointGOTO.srv" "mavros/Waypoint"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/SetMode.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/SetMode.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Mavlink.msg" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Mavlink.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCIn.msg" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCIn.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileList.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileList.srv" "mavros/FileEntry"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileTruncate.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileTruncate.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/OverrideRCIn.msg" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/OverrideRCIn.msg" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPull.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPull.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemove.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemove.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandTOL.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandTOL.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointClear.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointClear.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamGet.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamGet.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRead.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRead.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandHome.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandHome.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCOut.msg" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCOut.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemoveDir.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemoveDir.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/BatteryStatus.msg" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/BatteryStatus.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileClose.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileClose.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileOpen.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileOpen.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/FileEntry.msg" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/FileEntry.msg" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamSet.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamSet.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/VFR_HUD.msg" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/VFR_HUD.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/StreamRate.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/StreamRate.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPush.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPush.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointSetCurrent.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointSetCurrent.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPush.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPush.srv" "mavros/Waypoint"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileChecksum.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileChecksum.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRename.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRename.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandLong.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandLong.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandInt.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandInt.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/ActuatorControl.msg" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/ActuatorControl.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/State.msg" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/State.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileMakeDir.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileMakeDir.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandBool.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandBool.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPull.srv" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPull.srv" ""
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RadioStatus.msg" NAME_WE)
add_custom_target(_mavros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RadioStatus.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_msg_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/BatteryStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_msg_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Mavlink.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_msg_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_msg_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCIn.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_msg_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/FileEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_msg_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/VFR_HUD.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_msg_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_msg_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/OverrideRCIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_msg_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/ActuatorControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_msg_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RadioStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_msg_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCOut.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)

### Generating Services
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileWrite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointGOTO.srv"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/StreamRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileList.srv"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/FileEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileTruncate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPull.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandTOL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointClear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamGet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRead.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandHome.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemoveDir.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileClose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileOpen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPull.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPush.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPush.srv"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileChecksum.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRename.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandLong.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileMakeDir.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)
_generate_srv_cpp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointSetCurrent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
)

### Generating Module File
_generate_module_cpp(mavros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mavros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mavros_generate_messages mavros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileWrite.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/WaypointList.msg" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointGOTO.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/SetMode.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Mavlink.msg" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCIn.msg" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileList.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileTruncate.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/OverrideRCIn.msg" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPull.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemove.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandTOL.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointClear.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamGet.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRead.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandHome.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCOut.msg" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemoveDir.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/BatteryStatus.msg" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileClose.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileOpen.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/FileEntry.msg" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamSet.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/VFR_HUD.msg" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/StreamRate.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPush.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointSetCurrent.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPush.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileChecksum.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRename.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandLong.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandInt.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/ActuatorControl.msg" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/State.msg" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileMakeDir.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandBool.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPull.srv" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RadioStatus.msg" NAME_WE)
add_dependencies(mavros_generate_messages_cpp _mavros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mavros_gencpp)
add_dependencies(mavros_gencpp mavros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mavros_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_msg_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/BatteryStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_msg_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Mavlink.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_msg_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_msg_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCIn.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_msg_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/FileEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_msg_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/VFR_HUD.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_msg_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_msg_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/OverrideRCIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_msg_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/ActuatorControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_msg_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RadioStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_msg_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCOut.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)

### Generating Services
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileWrite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointGOTO.srv"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/StreamRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileList.srv"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/FileEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileTruncate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPull.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandTOL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointClear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamGet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRead.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandHome.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemoveDir.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileClose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileOpen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPull.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPush.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPush.srv"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileChecksum.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRename.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandLong.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileMakeDir.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)
_generate_srv_lisp(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointSetCurrent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
)

### Generating Module File
_generate_module_lisp(mavros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mavros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mavros_generate_messages mavros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileWrite.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/WaypointList.msg" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointGOTO.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/SetMode.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Mavlink.msg" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCIn.msg" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileList.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileTruncate.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/OverrideRCIn.msg" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPull.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemove.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandTOL.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointClear.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamGet.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRead.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandHome.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCOut.msg" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemoveDir.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/BatteryStatus.msg" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileClose.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileOpen.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/FileEntry.msg" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamSet.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/VFR_HUD.msg" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/StreamRate.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPush.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointSetCurrent.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPush.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileChecksum.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRename.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandLong.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandInt.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/ActuatorControl.msg" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/State.msg" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileMakeDir.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandBool.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPull.srv" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RadioStatus.msg" NAME_WE)
add_dependencies(mavros_generate_messages_lisp _mavros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mavros_genlisp)
add_dependencies(mavros_genlisp mavros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mavros_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/WaypointList.msg"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_msg_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/BatteryStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_msg_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Mavlink.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_msg_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_msg_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCIn.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_msg_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/FileEntry.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_msg_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/VFR_HUD.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_msg_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/State.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_msg_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/OverrideRCIn.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_msg_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/ActuatorControl.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_msg_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RadioStatus.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_msg_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCOut.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)

### Generating Services
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileWrite.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointGOTO.srv"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/SetMode.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/StreamRate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileList.srv"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/FileEntry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileTruncate.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPull.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemove.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandTOL.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointClear.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamGet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRead.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandHome.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemoveDir.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandBool.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileClose.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileOpen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamSet.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPull.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPush.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPush.srv"
  "${MSG_I_FLAGS}"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileChecksum.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRename.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandLong.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandInt.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileMakeDir.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)
_generate_srv_py(mavros
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointSetCurrent.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
)

### Generating Module File
_generate_module_py(mavros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mavros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mavros_generate_messages mavros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileWrite.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/WaypointList.msg" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointGOTO.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/SetMode.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Mavlink.msg" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCIn.msg" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileList.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileTruncate.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/OverrideRCIn.msg" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPull.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemove.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandTOL.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointClear.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamGet.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRead.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandHome.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCOut.msg" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemoveDir.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/BatteryStatus.msg" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileClose.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileOpen.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/FileEntry.msg" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamSet.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/VFR_HUD.msg" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/StreamRate.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPush.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointSetCurrent.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPush.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileChecksum.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRename.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandLong.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandInt.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/ActuatorControl.msg" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/State.msg" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileMakeDir.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandBool.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPull.srv" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RadioStatus.msg" NAME_WE)
add_dependencies(mavros_generate_messages_py _mavros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mavros_genpy)
add_dependencies(mavros_genpy mavros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mavros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(mavros_generate_messages_cpp diagnostic_msgs_generate_messages_cpp)
add_dependencies(mavros_generate_messages_cpp sensor_msgs_generate_messages_cpp)
add_dependencies(mavros_generate_messages_cpp std_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(mavros_generate_messages_lisp diagnostic_msgs_generate_messages_lisp)
add_dependencies(mavros_generate_messages_lisp sensor_msgs_generate_messages_lisp)
add_dependencies(mavros_generate_messages_lisp std_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros/.+/__init__.pyc?$"
  )
endif()
add_dependencies(mavros_generate_messages_py diagnostic_msgs_generate_messages_py)
add_dependencies(mavros_generate_messages_py sensor_msgs_generate_messages_py)
add_dependencies(mavros_generate_messages_py std_msgs_generate_messages_py)
