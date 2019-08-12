# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "turtlesim: 2 messages, 5 services")

set(MSG_I_FLAGS "-Iturtlesim:/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(turtlesim_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/SetPen.srv" NAME_WE)
add_custom_target(_turtlesim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlesim" "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/SetPen.srv" ""
)

get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Color.msg" NAME_WE)
add_custom_target(_turtlesim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlesim" "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Color.msg" ""
)

get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportRelative.srv" NAME_WE)
add_custom_target(_turtlesim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlesim" "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportRelative.srv" ""
)

get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportAbsolute.srv" NAME_WE)
add_custom_target(_turtlesim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlesim" "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportAbsolute.srv" ""
)

get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Spawn.srv" NAME_WE)
add_custom_target(_turtlesim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlesim" "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Spawn.srv" ""
)

get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Kill.srv" NAME_WE)
add_custom_target(_turtlesim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlesim" "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Kill.srv" ""
)

get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Pose.msg" NAME_WE)
add_custom_target(_turtlesim_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "turtlesim" "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Pose.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Color.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim
)
_generate_msg_cpp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim
)

### Generating Services
_generate_srv_cpp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim
)
_generate_srv_cpp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportAbsolute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim
)
_generate_srv_cpp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim
)
_generate_srv_cpp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportRelative.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim
)
_generate_srv_cpp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/SetPen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim
)

### Generating Module File
_generate_module_cpp(turtlesim
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(turtlesim_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(turtlesim_generate_messages turtlesim_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/SetPen.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_cpp _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Color.msg" NAME_WE)
add_dependencies(turtlesim_generate_messages_cpp _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportRelative.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_cpp _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportAbsolute.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_cpp _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Spawn.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_cpp _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Kill.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_cpp _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Pose.msg" NAME_WE)
add_dependencies(turtlesim_generate_messages_cpp _turtlesim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlesim_gencpp)
add_dependencies(turtlesim_gencpp turtlesim_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlesim_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Color.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim
)
_generate_msg_eus(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim
)

### Generating Services
_generate_srv_eus(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim
)
_generate_srv_eus(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportAbsolute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim
)
_generate_srv_eus(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim
)
_generate_srv_eus(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportRelative.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim
)
_generate_srv_eus(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/SetPen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim
)

### Generating Module File
_generate_module_eus(turtlesim
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(turtlesim_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(turtlesim_generate_messages turtlesim_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/SetPen.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_eus _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Color.msg" NAME_WE)
add_dependencies(turtlesim_generate_messages_eus _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportRelative.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_eus _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportAbsolute.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_eus _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Spawn.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_eus _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Kill.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_eus _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Pose.msg" NAME_WE)
add_dependencies(turtlesim_generate_messages_eus _turtlesim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlesim_geneus)
add_dependencies(turtlesim_geneus turtlesim_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlesim_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Color.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim
)
_generate_msg_lisp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim
)

### Generating Services
_generate_srv_lisp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim
)
_generate_srv_lisp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportAbsolute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim
)
_generate_srv_lisp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim
)
_generate_srv_lisp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportRelative.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim
)
_generate_srv_lisp(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/SetPen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim
)

### Generating Module File
_generate_module_lisp(turtlesim
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(turtlesim_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(turtlesim_generate_messages turtlesim_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/SetPen.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_lisp _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Color.msg" NAME_WE)
add_dependencies(turtlesim_generate_messages_lisp _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportRelative.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_lisp _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportAbsolute.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_lisp _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Spawn.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_lisp _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Kill.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_lisp _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Pose.msg" NAME_WE)
add_dependencies(turtlesim_generate_messages_lisp _turtlesim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlesim_genlisp)
add_dependencies(turtlesim_genlisp turtlesim_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlesim_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Color.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim
)
_generate_msg_nodejs(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim
)

### Generating Services
_generate_srv_nodejs(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim
)
_generate_srv_nodejs(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportAbsolute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim
)
_generate_srv_nodejs(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim
)
_generate_srv_nodejs(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportRelative.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim
)
_generate_srv_nodejs(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/SetPen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim
)

### Generating Module File
_generate_module_nodejs(turtlesim
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(turtlesim_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(turtlesim_generate_messages turtlesim_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/SetPen.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_nodejs _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Color.msg" NAME_WE)
add_dependencies(turtlesim_generate_messages_nodejs _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportRelative.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_nodejs _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportAbsolute.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_nodejs _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Spawn.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_nodejs _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Kill.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_nodejs _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Pose.msg" NAME_WE)
add_dependencies(turtlesim_generate_messages_nodejs _turtlesim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlesim_gennodejs)
add_dependencies(turtlesim_gennodejs turtlesim_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlesim_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Color.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim
)
_generate_msg_py(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Pose.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim
)

### Generating Services
_generate_srv_py(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Spawn.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim
)
_generate_srv_py(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportAbsolute.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim
)
_generate_srv_py(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Kill.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim
)
_generate_srv_py(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportRelative.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim
)
_generate_srv_py(turtlesim
  "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/SetPen.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim
)

### Generating Module File
_generate_module_py(turtlesim
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(turtlesim_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(turtlesim_generate_messages turtlesim_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/SetPen.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_py _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Color.msg" NAME_WE)
add_dependencies(turtlesim_generate_messages_py _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportRelative.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_py _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/TeleportAbsolute.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_py _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Spawn.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_py _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/srv/Kill.srv" NAME_WE)
add_dependencies(turtlesim_generate_messages_py _turtlesim_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/lei/overlay_ws/src/ros_tutorials/turtlesim/msg/Pose.msg" NAME_WE)
add_dependencies(turtlesim_generate_messages_py _turtlesim_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(turtlesim_genpy)
add_dependencies(turtlesim_genpy turtlesim_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS turtlesim_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/turtlesim
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(turtlesim_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(turtlesim_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET std_srvs_generate_messages_cpp)
  add_dependencies(turtlesim_generate_messages_cpp std_srvs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/turtlesim
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(turtlesim_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(turtlesim_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET std_srvs_generate_messages_eus)
  add_dependencies(turtlesim_generate_messages_eus std_srvs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/turtlesim
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(turtlesim_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(turtlesim_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET std_srvs_generate_messages_lisp)
  add_dependencies(turtlesim_generate_messages_lisp std_srvs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/turtlesim
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(turtlesim_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(turtlesim_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET std_srvs_generate_messages_nodejs)
  add_dependencies(turtlesim_generate_messages_nodejs std_srvs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/turtlesim
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(turtlesim_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(turtlesim_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET std_srvs_generate_messages_py)
  add_dependencies(turtlesim_generate_messages_py std_srvs_generate_messages_py)
endif()
