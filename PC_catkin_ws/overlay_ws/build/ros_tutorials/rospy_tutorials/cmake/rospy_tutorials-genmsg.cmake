# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "rospy_tutorials: 2 messages, 2 services")

set(MSG_I_FLAGS "-Irospy_tutorials:/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(rospy_tutorials_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg" NAME_WE)
add_custom_target(_rospy_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rospy_tutorials" "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg" ""
)

get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg" NAME_WE)
add_custom_target(_rospy_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rospy_tutorials" "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_custom_target(_rospy_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rospy_tutorials" "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv" ""
)

get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv" NAME_WE)
add_custom_target(_rospy_tutorials_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "rospy_tutorials" "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospy_tutorials
)
_generate_msg_cpp(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospy_tutorials
)

### Generating Services
_generate_srv_cpp(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospy_tutorials
)
_generate_srv_cpp(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospy_tutorials
)

### Generating Module File
_generate_module_cpp(rospy_tutorials
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospy_tutorials
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(rospy_tutorials_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(rospy_tutorials_generate_messages rospy_tutorials_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_cpp _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_cpp _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_cpp _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_cpp _rospy_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rospy_tutorials_gencpp)
add_dependencies(rospy_tutorials_gencpp rospy_tutorials_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rospy_tutorials_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rospy_tutorials
)
_generate_msg_eus(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rospy_tutorials
)

### Generating Services
_generate_srv_eus(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rospy_tutorials
)
_generate_srv_eus(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rospy_tutorials
)

### Generating Module File
_generate_module_eus(rospy_tutorials
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rospy_tutorials
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(rospy_tutorials_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(rospy_tutorials_generate_messages rospy_tutorials_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_eus _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_eus _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_eus _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_eus _rospy_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rospy_tutorials_geneus)
add_dependencies(rospy_tutorials_geneus rospy_tutorials_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rospy_tutorials_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospy_tutorials
)
_generate_msg_lisp(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospy_tutorials
)

### Generating Services
_generate_srv_lisp(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospy_tutorials
)
_generate_srv_lisp(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospy_tutorials
)

### Generating Module File
_generate_module_lisp(rospy_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospy_tutorials
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(rospy_tutorials_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(rospy_tutorials_generate_messages rospy_tutorials_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_lisp _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_lisp _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_lisp _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_lisp _rospy_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rospy_tutorials_genlisp)
add_dependencies(rospy_tutorials_genlisp rospy_tutorials_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rospy_tutorials_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rospy_tutorials
)
_generate_msg_nodejs(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rospy_tutorials
)

### Generating Services
_generate_srv_nodejs(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rospy_tutorials
)
_generate_srv_nodejs(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rospy_tutorials
)

### Generating Module File
_generate_module_nodejs(rospy_tutorials
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rospy_tutorials
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(rospy_tutorials_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(rospy_tutorials_generate_messages rospy_tutorials_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_nodejs _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_nodejs _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_nodejs _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_nodejs _rospy_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rospy_tutorials_gennodejs)
add_dependencies(rospy_tutorials_gennodejs rospy_tutorials_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rospy_tutorials_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_tutorials
)
_generate_msg_py(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_tutorials
)

### Generating Services
_generate_srv_py(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_tutorials
)
_generate_srv_py(rospy_tutorials
  "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_tutorials
)

### Generating Module File
_generate_module_py(rospy_tutorials
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_tutorials
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(rospy_tutorials_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(rospy_tutorials_generate_messages rospy_tutorials_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/Floats.msg" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_py _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/msg/HeaderString.msg" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_py _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/AddTwoInts.srv" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_py _rospy_tutorials_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/rospy_tutorials/srv/BadTwoInts.srv" NAME_WE)
add_dependencies(rospy_tutorials_generate_messages_py _rospy_tutorials_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(rospy_tutorials_genpy)
add_dependencies(rospy_tutorials_genpy rospy_tutorials_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS rospy_tutorials_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospy_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/rospy_tutorials
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(rospy_tutorials_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rospy_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/rospy_tutorials
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(rospy_tutorials_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospy_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/rospy_tutorials
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(rospy_tutorials_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rospy_tutorials)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/rospy_tutorials
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(rospy_tutorials_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_tutorials)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_tutorials\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/rospy_tutorials
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(rospy_tutorials_generate_messages_py std_msgs_generate_messages_py)
endif()
