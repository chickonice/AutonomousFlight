# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mav_msgs: 7 messages, 0 services")

set(MSG_I_FLAGS "-Imav_msgs:/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mav_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRateThrust.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRateThrust.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandVelocityTrajectory.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandVelocityTrajectory.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandAttitudeThrust.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandAttitudeThrust.msg" "std_msgs/Header:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandTrajectory.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandTrajectory.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/MotorSpeed.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/MotorSpeed.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandMotorSpeed.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandMotorSpeed.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRollPitchYawrateThrust.msg" NAME_WE)
add_custom_target(_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mav_msgs" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRollPitchYawrateThrust.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandVelocityTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandAttitudeThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/MotorSpeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandMotorSpeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)
_generate_msg_cpp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRollPitchYawrateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(mav_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mav_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mav_msgs_generate_messages mav_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandVelocityTrajectory.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandAttitudeThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandTrajectory.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/MotorSpeed.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandMotorSpeed.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRollPitchYawrateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_cpp _mav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_msgs_gencpp)
add_dependencies(mav_msgs_gencpp mav_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_msgs_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandVelocityTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandAttitudeThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/MotorSpeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandMotorSpeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)
_generate_msg_lisp(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRollPitchYawrateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(mav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mav_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mav_msgs_generate_messages mav_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandVelocityTrajectory.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandAttitudeThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandTrajectory.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/MotorSpeed.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandMotorSpeed.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRollPitchYawrateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_lisp _mav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_msgs_genlisp)
add_dependencies(mav_msgs_genlisp mav_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_msgs_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandVelocityTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandAttitudeThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandTrajectory.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/MotorSpeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandMotorSpeed.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)
_generate_msg_py(mav_msgs
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRollPitchYawrateThrust.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(mav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mav_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mav_msgs_generate_messages mav_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandVelocityTrajectory.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandAttitudeThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandTrajectory.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/MotorSpeed.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandMotorSpeed.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mav_comm/mav_msgs/msg/CommandRollPitchYawrateThrust.msg" NAME_WE)
add_dependencies(mav_msgs_generate_messages_py _mav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mav_msgs_genpy)
add_dependencies(mav_msgs_genpy mav_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mav_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mav_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(mav_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(mav_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mav_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(mav_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(mav_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mav_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(mav_msgs_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(mav_msgs_generate_messages_py geometry_msgs_generate_messages_py)
