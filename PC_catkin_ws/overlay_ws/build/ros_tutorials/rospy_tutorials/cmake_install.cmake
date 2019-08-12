# Install script for directory: /home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/lei/overlay_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/msg" TYPE FILE FILES
    "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg"
    "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/srv" TYPE FILE FILES
    "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv"
    "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/cmake" TYPE FILE FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/rospy_tutorials-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/lei/overlay_ws/devel/include/rospy_tutorials")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/lei/overlay_ws/devel/share/roseus/ros/rospy_tutorials")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/lei/overlay_ws/devel/share/common-lisp/ros/rospy_tutorials")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/lei/overlay_ws/devel/share/gennodejs/ros/rospy_tutorials")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/lei/overlay_ws/devel/lib/python2.7/dist-packages/rospy_tutorials")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/lei/overlay_ws/devel/lib/python2.7/dist-packages/rospy_tutorials")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/rospy_tutorials.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/cmake" TYPE FILE FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/rospy_tutorials-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/cmake" TYPE FILE FILES
    "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/rospy_tutorialsConfig.cmake"
    "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/rospy_tutorialsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials" TYPE FILE FILES "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/package.xml")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/001_talker_listener" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/listener")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/001_talker_listener" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/listener.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/001_talker_listener" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/talker")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/001_talker_listener" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/talker.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/001_talker_listener" TYPE FILE FILES
    "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/001_talker_listener/README"
    "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/001_talker_listener/talker_listener.launch"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/002_headers" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/listener_header.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/002_headers" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/talker_header.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/002_headers" TYPE FILE FILES "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/002_headers/headers.launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/003_listener_with_user_data" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/listener_with_user_data.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/003_listener_with_user_data" TYPE FILE FILES "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/003_listener_with_user_data/listener_with_user_data.launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/004_listener_subscribe_notify" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/listener_subscribe_notify.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/004_listener_subscribe_notify" TYPE FILE FILES "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/004_listener_subscribe_notify/listener_subscribe_notify.launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/005_add_two_ints" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/add_two_ints_client")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/005_add_two_ints" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/add_two_ints_server")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/006_parameters" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/param_talker.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/006_parameters" TYPE FILE FILES "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/006_parameters/param_talker.launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/007_connection_header" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/client_connection_header.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/007_connection_header" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/listener_connection_header.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/007_connection_header" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/server_connection_header.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/007_connection_header" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/talker_connection_header.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/007_connection_header" TYPE FILE FILES
    "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/007_connection_header/connection_header.launch"
    "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/007_connection_header/README"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/008_on_shutdown" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/publish_on_shutdown.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/008_on_shutdown" TYPE FILE FILES "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/008_on_shutdown/on_shutdown.launch")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/009_advanced_publish" TYPE PROGRAM FILES "/home/lei/overlay_ws/build/ros_tutorials/rospy_tutorials/catkin_generated/installspace/advanced_publish.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rospy_tutorials/009_advanced_publish" TYPE FILE FILES "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/009_advanced_publish/advanced_publish.launch")
endif()

