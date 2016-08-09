set(file "/home/spacecat/AutonomousFlight/simulation/simulation_ws/build/gflags_catkin/gflags_src-prefix/src/v2.1.2.zip")
message(STATUS "verifying file...
     file='${file}'")
set(expect_value "5cb0a1b38740ed596edb7f86cd5b3bd8")
file(MD5 "${file}" actual_value)
if("${actual_value}" STREQUAL "${expect_value}")
  message(STATUS "verifying file... done")
else()
  message(FATAL_ERROR "error: MD5 hash of
  ${file}
does not match expected value
  expected: ${expect_value}
    actual: ${actual_value}
")
endif()
