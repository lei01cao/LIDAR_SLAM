# Install script for directory: /home/lei/catkin_ws/src/navigation_msgs/map_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lei/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/map_msgs/msg" TYPE FILE FILES
    "/home/lei/catkin_ws/src/navigation_msgs/map_msgs/msg/OccupancyGridUpdate.msg"
    "/home/lei/catkin_ws/src/navigation_msgs/map_msgs/msg/PointCloud2Update.msg"
    "/home/lei/catkin_ws/src/navigation_msgs/map_msgs/msg/ProjectedMapInfo.msg"
    "/home/lei/catkin_ws/src/navigation_msgs/map_msgs/msg/ProjectedMap.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/map_msgs/srv" TYPE FILE FILES
    "/home/lei/catkin_ws/src/navigation_msgs/map_msgs/srv/GetMapROI.srv"
    "/home/lei/catkin_ws/src/navigation_msgs/map_msgs/srv/GetPointMapROI.srv"
    "/home/lei/catkin_ws/src/navigation_msgs/map_msgs/srv/GetPointMap.srv"
    "/home/lei/catkin_ws/src/navigation_msgs/map_msgs/srv/ProjectedMapsInfo.srv"
    "/home/lei/catkin_ws/src/navigation_msgs/map_msgs/srv/SaveMap.srv"
    "/home/lei/catkin_ws/src/navigation_msgs/map_msgs/srv/SetMapProjections.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/map_msgs/cmake" TYPE FILE FILES "/home/lei/catkin_ws/build/navigation_msgs/map_msgs/catkin_generated/installspace/map_msgs-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lei/catkin_ws/devel/include/map_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lei/catkin_ws/devel/share/roseus/ros/map_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lei/catkin_ws/devel/share/common-lisp/ros/map_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lei/catkin_ws/devel/share/gennodejs/ros/map_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/lei/catkin_ws/devel/lib/python2.7/dist-packages/map_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/lei/catkin_ws/devel/lib/python2.7/dist-packages/map_msgs")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lei/catkin_ws/build/navigation_msgs/map_msgs/catkin_generated/installspace/map_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/map_msgs/cmake" TYPE FILE FILES "/home/lei/catkin_ws/build/navigation_msgs/map_msgs/catkin_generated/installspace/map_msgs-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/map_msgs/cmake" TYPE FILE FILES
    "/home/lei/catkin_ws/build/navigation_msgs/map_msgs/catkin_generated/installspace/map_msgsConfig.cmake"
    "/home/lei/catkin_ws/build/navigation_msgs/map_msgs/catkin_generated/installspace/map_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/map_msgs" TYPE FILE FILES "/home/lei/catkin_ws/src/navigation_msgs/map_msgs/package.xml")
endif()

