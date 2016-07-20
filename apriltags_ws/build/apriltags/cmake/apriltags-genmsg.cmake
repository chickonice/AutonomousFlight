# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "apriltags: 2 messages, 0 services")

set(MSG_I_FLAGS "-Iapriltags:/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg;-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(apriltags_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetections.msg" NAME_WE)
add_custom_target(_apriltags_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "apriltags" "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetections.msg" "geometry_msgs/Point:apriltags/AprilTagDetection:geometry_msgs/Point32:geometry_msgs/Quaternion:geometry_msgs/Pose:std_msgs/Header"
)

get_filename_component(_filename "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetection.msg" NAME_WE)
add_custom_target(_apriltags_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "apriltags" "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetection.msg" "geometry_msgs/Point:geometry_msgs/Point32:geometry_msgs/Quaternion:std_msgs/Header:geometry_msgs/Pose"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(apriltags
  "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetection.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/apriltags
)
_generate_msg_cpp(apriltags
  "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/apriltags
)

### Generating Services

### Generating Module File
_generate_module_cpp(apriltags
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/apriltags
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(apriltags_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(apriltags_generate_messages apriltags_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetections.msg" NAME_WE)
add_dependencies(apriltags_generate_messages_cpp _apriltags_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(apriltags_generate_messages_cpp _apriltags_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(apriltags_gencpp)
add_dependencies(apriltags_gencpp apriltags_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS apriltags_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(apriltags
  "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetection.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/apriltags
)
_generate_msg_lisp(apriltags
  "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/apriltags
)

### Generating Services

### Generating Module File
_generate_module_lisp(apriltags
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/apriltags
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(apriltags_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(apriltags_generate_messages apriltags_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetections.msg" NAME_WE)
add_dependencies(apriltags_generate_messages_lisp _apriltags_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(apriltags_generate_messages_lisp _apriltags_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(apriltags_genlisp)
add_dependencies(apriltags_genlisp apriltags_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS apriltags_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(apriltags
  "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetections.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetection.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/apriltags
)
_generate_msg_py(apriltags
  "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetection.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/apriltags
)

### Generating Services

### Generating Module File
_generate_module_py(apriltags
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/apriltags
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(apriltags_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(apriltags_generate_messages apriltags_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetections.msg" NAME_WE)
add_dependencies(apriltags_generate_messages_py _apriltags_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/odroid/Documents/AutonomousFlight/apriltags_ws/src/apriltags/msg/AprilTagDetection.msg" NAME_WE)
add_dependencies(apriltags_generate_messages_py _apriltags_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(apriltags_genpy)
add_dependencies(apriltags_genpy apriltags_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS apriltags_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/apriltags)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/apriltags
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(apriltags_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(apriltags_generate_messages_cpp geometry_msgs_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/apriltags)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/apriltags
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(apriltags_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(apriltags_generate_messages_lisp geometry_msgs_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/apriltags)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/apriltags\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/apriltags
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(apriltags_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(apriltags_generate_messages_py geometry_msgs_generate_messages_py)
