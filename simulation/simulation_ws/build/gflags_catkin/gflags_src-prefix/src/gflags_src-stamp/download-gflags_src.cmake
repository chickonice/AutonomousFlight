message(STATUS "downloading...
     src='https://github.com/gflags/gflags/archive/v2.1.2.zip'
     dst='/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/gflags_catkin/gflags_src-prefix/src/v2.1.2.zip'
     timeout='none'")




file(DOWNLOAD
  "https://github.com/gflags/gflags/archive/v2.1.2.zip"
  "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/gflags_catkin/gflags_src-prefix/src/v2.1.2.zip"
  SHOW_PROGRESS
  EXPECTED_HASH;MD5=5cb0a1b38740ed596edb7f86cd5b3bd8
  # no TIMEOUT
  STATUS status
  LOG log)

list(GET status 0 status_code)
list(GET status 1 status_string)

if(NOT status_code EQUAL 0)
  message(FATAL_ERROR "error: downloading 'https://github.com/gflags/gflags/archive/v2.1.2.zip' failed
  status_code: ${status_code}
  status_string: ${status_string}
  log: ${log}
")
endif()

message(STATUS "downloading... done")
