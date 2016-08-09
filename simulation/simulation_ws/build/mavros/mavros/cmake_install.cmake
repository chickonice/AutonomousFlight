# Install script for directory: /home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/spacecat/AutonomousFlight/simulation/simulation_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  INCLUDE("/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/catkin_generated/safe_execute_install.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros/msg" TYPE FILE FILES
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Mavlink.msg"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/Waypoint.msg"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/WaypointList.msg"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/BatteryStatus.msg"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/State.msg"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCIn.msg"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RCOut.msg"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/RadioStatus.msg"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/OverrideRCIn.msg"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/VFR_HUD.msg"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/FileEntry.msg"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/msg/ActuatorControl.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros/srv" TYPE FILE FILES
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamSet.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamGet.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPull.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/ParamPush.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointSetCurrent.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointClear.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPull.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointPush.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/WaypointGOTO.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandLong.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandInt.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandBool.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandHome.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/CommandTOL.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/StreamRate.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/SetMode.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileOpen.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileClose.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRead.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileWrite.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileList.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemove.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileMakeDir.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRemoveDir.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileTruncate.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileRename.srv"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/srv/FileChecksum.srv"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros/cmake" TYPE FILE FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/catkin_generated/installspace/mavros-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/include/mavros")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/share/common-lisp/ros/mavros")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/python2.7/dist-packages/mavros")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/python2.7/dist-packages/mavros" REGEX "/\\_\\_init\\_\\_\\.py$" EXCLUDE REGEX "/\\_\\_init\\_\\_\\.pyc$" EXCLUDE)
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/python2.7/dist-packages/mavros" FILES_MATCHING REGEX "/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/python2.7/dist-packages/mavros/.+/__init__.pyc?$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/catkin_generated/installspace/mavros.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros/cmake" TYPE FILE FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/catkin_generated/installspace/mavros-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros/cmake" TYPE FILE FILES
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/catkin_generated/installspace/mavrosConfig.cmake"
    "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/catkin_generated/installspace/mavrosConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros" TYPE FILE FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/catkin_generated/installspace/mavparam")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/catkin_generated/installspace/mavcmd")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/catkin_generated/installspace/mavsetp")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/catkin_generated/installspace/mavsys")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/catkin_generated/installspace/mavftp")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/catkin_generated/installspace/mavsafety")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE PROGRAM FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/mavros/mavros/catkin_generated/installspace/mavwp")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/libmavros.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/libmavros_plugins.so")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libmavros_plugins.so")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE EXECUTABLE FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/mavros_node")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/mavros_node")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge")
    FILE(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge"
         RPATH "")
  ENDIF()
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/mavros" TYPE EXECUTABLE FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/devel/lib/mavros/gcs_bridge")
  IF(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge")
    FILE(RPATH_REMOVE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge")
    IF(CMAKE_INSTALL_DO_STRIP)
      EXECUTE_PROCESS(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/mavros/gcs_bridge")
    ENDIF(CMAKE_INSTALL_DO_STRIP)
  ENDIF()
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/mavros" TYPE DIRECTORY FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/include/mavros/" FILES_MATCHING REGEX "/[^/]*\\.h$")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros" TYPE FILE FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/mavros_plugins.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/mavros/launch" TYPE DIRECTORY FILES "/home/spacecat/AutonomousFlight/simulation/simulation_ws/src/mavros/mavros/launch/")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

