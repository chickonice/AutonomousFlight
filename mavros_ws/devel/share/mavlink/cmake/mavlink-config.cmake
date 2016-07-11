if (mavlink_CONFIG_INCLUDED)
  return()
endif()
set(mavlink_CONFIG_INCLUDED TRUE)

set(mavlink_INCLUDE_DIRS "/home/spacecat/AutonomousFlight/AutonomousFlight/mavros_ws/devel/include")
set(mavlink_DIALECTS ASLUAV;ardupilotmega;autoquad;common;matrixpilot;paparazzi;slugs;ualberta)
set(mavlink2_DIALECTS ASLUAV;ardupilotmega;autoquad;common;matrixpilot;paparazzi;slugs;ualberta)

foreach(lib )
  set(onelib "${lib}-NOTFOUND")
  find_library(onelib ${lib}
      PATHS "/home/spacecat/AutonomousFlight/AutonomousFlight/mavros_ws/devel/lib"
    NO_DEFAULT_PATH
    )
  if(NOT onelib)
    message(FATAL_ERROR "Library '${lib}' in package mavlink is not installed properly")
  endif()
  list(APPEND mavlink_LIBRARIES ${onelib})
endforeach()

foreach(dep )
  if(NOT ${dep}_FOUND)
    find_package(${dep})
  endif()
  list(APPEND mavlink_INCLUDE_DIRS ${${dep}_INCLUDE_DIRS})
  list(APPEND mavlink_LIBRARIES ${${dep}_LIBRARIES})
endforeach()
