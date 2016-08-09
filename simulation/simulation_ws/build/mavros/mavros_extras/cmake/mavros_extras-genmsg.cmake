# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "mavros_extras: 2 messages, 0 services")

set(MSG_I_FLAGS "-Imavros_extras:/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg;-Imavros:/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg;-Isensor_msgs:/opt/ros/indigo/share/sensor_msgs/cmake/../msg;-Idiagnostic_msgs:/opt/ros/indigo/share/diagnostic_msgs/cmake/../msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(mavros_extras_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/Vibration.msg" NAME_WE)
add_custom_target(_mavros_extras_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros_extras" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/Vibration.msg" "geometry_msgs/Vector3:std_msgs/Header"
)

get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/OpticalFlowRad.msg" NAME_WE)
add_custom_target(_mavros_extras_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "mavros_extras" "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/OpticalFlowRad.msg" "std_msgs/Header"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(mavros_extras
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/Vibration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros_extras
)
_generate_msg_cpp(mavros_extras
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/OpticalFlowRad.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros_extras
)

### Generating Services

### Generating Module File
_generate_module_cpp(mavros_extras
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros_extras
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(mavros_extras_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(mavros_extras_generate_messages mavros_extras_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/Vibration.msg" NAME_WE)
add_dependencies(mavros_extras_generate_messages_cpp _mavros_extras_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/OpticalFlowRad.msg" NAME_WE)
add_dependencies(mavros_extras_generate_messages_cpp _mavros_extras_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mavros_extras_gencpp)
add_dependencies(mavros_extras_gencpp mavros_extras_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mavros_extras_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(mavros_extras
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/Vibration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros_extras
)
_generate_msg_lisp(mavros_extras
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/OpticalFlowRad.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros_extras
)

### Generating Services

### Generating Module File
_generate_module_lisp(mavros_extras
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros_extras
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(mavros_extras_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(mavros_extras_generate_messages mavros_extras_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/Vibration.msg" NAME_WE)
add_dependencies(mavros_extras_generate_messages_lisp _mavros_extras_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/OpticalFlowRad.msg" NAME_WE)
add_dependencies(mavros_extras_generate_messages_lisp _mavros_extras_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mavros_extras_genlisp)
add_dependencies(mavros_extras_genlisp mavros_extras_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mavros_extras_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(mavros_extras
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/Vibration.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros_extras
)
_generate_msg_py(mavros_extras
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/OpticalFlowRad.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros_extras
)

### Generating Services

### Generating Module File
_generate_module_py(mavros_extras
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros_extras
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(mavros_extras_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(mavros_extras_generate_messages mavros_extras_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/Vibration.msg" NAME_WE)
add_dependencies(mavros_extras_generate_messages_py _mavros_extras_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros_extras/msg/OpticalFlowRad.msg" NAME_WE)
add_dependencies(mavros_extras_generate_messages_py _mavros_extras_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(mavros_extras_genpy)
add_dependencies(mavros_extras_genpy mavros_extras_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS mavros_extras_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros_extras)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/mavros_extras
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(mavros_extras_generate_messages_cpp mavros_generate_messages_cpp)
add_dependencies(mavros_extras_generate_messages_cpp sensor_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros_extras)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/mavros_extras
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(mavros_extras_generate_messages_lisp mavros_generate_messages_lisp)
add_dependencies(mavros_extras_generate_messages_lisp sensor_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros_extras)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros_extras\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/mavros_extras
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(mavros_extras_generate_messages_py mavros_generate_messages_py)
add_dependencies(mavros_extras_generate_messages_py sensor_msgs_generate_messages_py)
