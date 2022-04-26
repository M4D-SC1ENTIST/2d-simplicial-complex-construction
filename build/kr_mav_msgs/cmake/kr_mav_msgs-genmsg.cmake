# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "kr_mav_msgs: 11 messages, 0 services")

set(MSG_I_FLAGS "-Ikr_mav_msgs:/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(kr_mav_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg" NAME_WE)
add_custom_target(_kr_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_msgs" "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg" ""
)

get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Corrections.msg" NAME_WE)
add_custom_target(_kr_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_msgs" "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Corrections.msg" ""
)

get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/MotorRPM.msg" NAME_WE)
add_custom_target(_kr_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_msgs" "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/MotorRPM.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/OutputData.msg" NAME_WE)
add_custom_target(_kr_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_msgs" "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/OutputData.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:std_msgs/Header"
)

get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PWMCommand.msg" NAME_WE)
add_custom_target(_kr_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_msgs" "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PWMCommand.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PositionCommand.msg" NAME_WE)
add_custom_target(_kr_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_msgs" "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PositionCommand.msg" "geometry_msgs/Vector3:geometry_msgs/Point:std_msgs/Header"
)

get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/SO3Command.msg" NAME_WE)
add_custom_target(_kr_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_msgs" "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/SO3Command.msg" "geometry_msgs/Vector3:geometry_msgs/Quaternion:kr_mav_msgs/AuxCommand:std_msgs/Header"
)

get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Serial.msg" NAME_WE)
add_custom_target(_kr_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_msgs" "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Serial.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/StatusData.msg" NAME_WE)
add_custom_target(_kr_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_msgs" "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/StatusData.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/TRPYCommand.msg" NAME_WE)
add_custom_target(_kr_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_msgs" "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/TRPYCommand.msg" "geometry_msgs/Vector3:kr_mav_msgs/AuxCommand:std_msgs/Header"
)

get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Bspline.msg" NAME_WE)
add_custom_target(_kr_mav_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "kr_mav_msgs" "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Bspline.msg" "geometry_msgs/Point"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_cpp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Corrections.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_cpp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/MotorRPM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_cpp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/OutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_cpp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PWMCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_cpp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_cpp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/SO3Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_cpp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_cpp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/StatusData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_cpp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/TRPYCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_cpp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Bspline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(kr_mav_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(kr_mav_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(kr_mav_msgs_generate_messages kr_mav_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_cpp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Corrections.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_cpp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/MotorRPM.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_cpp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/OutputData.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_cpp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PWMCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_cpp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PositionCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_cpp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/SO3Command.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_cpp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_cpp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/StatusData.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_cpp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/TRPYCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_cpp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Bspline.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_cpp _kr_mav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kr_mav_msgs_gencpp)
add_dependencies(kr_mav_msgs_gencpp kr_mav_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kr_mav_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_eus(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Corrections.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_eus(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/MotorRPM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_eus(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/OutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_eus(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PWMCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_eus(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_eus(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/SO3Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_eus(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_eus(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/StatusData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_eus(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/TRPYCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_eus(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Bspline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(kr_mav_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(kr_mav_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(kr_mav_msgs_generate_messages kr_mav_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_eus _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Corrections.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_eus _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/MotorRPM.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_eus _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/OutputData.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_eus _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PWMCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_eus _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PositionCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_eus _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/SO3Command.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_eus _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_eus _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/StatusData.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_eus _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/TRPYCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_eus _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Bspline.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_eus _kr_mav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kr_mav_msgs_geneus)
add_dependencies(kr_mav_msgs_geneus kr_mav_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kr_mav_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_lisp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Corrections.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_lisp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/MotorRPM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_lisp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/OutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_lisp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PWMCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_lisp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_lisp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/SO3Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_lisp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_lisp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/StatusData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_lisp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/TRPYCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_lisp(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Bspline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(kr_mav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(kr_mav_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(kr_mav_msgs_generate_messages kr_mav_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_lisp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Corrections.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_lisp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/MotorRPM.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_lisp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/OutputData.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_lisp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PWMCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_lisp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PositionCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_lisp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/SO3Command.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_lisp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_lisp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/StatusData.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_lisp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/TRPYCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_lisp _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Bspline.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_lisp _kr_mav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kr_mav_msgs_genlisp)
add_dependencies(kr_mav_msgs_genlisp kr_mav_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kr_mav_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_nodejs(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Corrections.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_nodejs(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/MotorRPM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_nodejs(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/OutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_nodejs(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PWMCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_nodejs(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_nodejs(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/SO3Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_nodejs(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_nodejs(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/StatusData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_nodejs(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/TRPYCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_nodejs(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Bspline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(kr_mav_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(kr_mav_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(kr_mav_msgs_generate_messages kr_mav_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_nodejs _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Corrections.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_nodejs _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/MotorRPM.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_nodejs _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/OutputData.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_nodejs _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PWMCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_nodejs _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PositionCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_nodejs _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/SO3Command.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_nodejs _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_nodejs _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/StatusData.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_nodejs _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/TRPYCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_nodejs _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Bspline.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_nodejs _kr_mav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kr_mav_msgs_gennodejs)
add_dependencies(kr_mav_msgs_gennodejs kr_mav_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kr_mav_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_py(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Corrections.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_py(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/MotorRPM.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_py(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/OutputData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_py(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PWMCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_py(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PositionCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_py(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/SO3Command.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_py(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Serial.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_py(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/StatusData.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_py(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/TRPYCommand.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs
)
_generate_msg_py(kr_mav_msgs
  "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Bspline.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(kr_mav_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(kr_mav_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(kr_mav_msgs_generate_messages kr_mav_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/AuxCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_py _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Corrections.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_py _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/MotorRPM.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_py _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/OutputData.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_py _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PWMCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_py _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/PositionCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_py _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/SO3Command.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_py _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Serial.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_py _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/StatusData.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_py _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/TRPYCommand.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_py _kr_mav_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/xechariah/projects/entry_level_project/src/kr_mav_control/kr_mav_msgs/msg/Bspline.msg" NAME_WE)
add_dependencies(kr_mav_msgs_generate_messages_py _kr_mav_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(kr_mav_msgs_genpy)
add_dependencies(kr_mav_msgs_genpy kr_mav_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS kr_mav_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/kr_mav_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(kr_mav_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/kr_mav_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(kr_mav_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/kr_mav_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(kr_mav_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/kr_mav_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(kr_mav_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/kr_mav_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(kr_mav_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
