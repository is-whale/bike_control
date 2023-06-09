# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bike_core: 5 messages, 0 services")

set(MSG_I_FLAGS "-Ibike_core:/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bike_core_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/remote_control_msg.msg" NAME_WE)
add_custom_target(_bike_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bike_core" "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/remote_control_msg.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_can_msg.msg" NAME_WE)
add_custom_target(_bike_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bike_core" "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_can_msg.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_motor_feedback_msg.msg" NAME_WE)
add_custom_target(_bike_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bike_core" "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_motor_feedback_msg.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/pid_params_msg.msg" NAME_WE)
add_custom_target(_bike_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bike_core" "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/pid_params_msg.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/sbus_channels_msg.msg" NAME_WE)
add_custom_target(_bike_core_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bike_core" "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/sbus_channels_msg.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/remote_control_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bike_core
)
_generate_msg_cpp(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_can_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bike_core
)
_generate_msg_cpp(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_motor_feedback_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bike_core
)
_generate_msg_cpp(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/pid_params_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bike_core
)
_generate_msg_cpp(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/sbus_channels_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bike_core
)

### Generating Services

### Generating Module File
_generate_module_cpp(bike_core
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bike_core
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bike_core_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bike_core_generate_messages bike_core_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/remote_control_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_cpp _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_can_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_cpp _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_motor_feedback_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_cpp _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/pid_params_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_cpp _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/sbus_channels_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_cpp _bike_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bike_core_gencpp)
add_dependencies(bike_core_gencpp bike_core_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bike_core_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/remote_control_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bike_core
)
_generate_msg_eus(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_can_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bike_core
)
_generate_msg_eus(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_motor_feedback_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bike_core
)
_generate_msg_eus(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/pid_params_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bike_core
)
_generate_msg_eus(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/sbus_channels_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bike_core
)

### Generating Services

### Generating Module File
_generate_module_eus(bike_core
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bike_core
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(bike_core_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(bike_core_generate_messages bike_core_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/remote_control_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_eus _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_can_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_eus _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_motor_feedback_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_eus _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/pid_params_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_eus _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/sbus_channels_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_eus _bike_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bike_core_geneus)
add_dependencies(bike_core_geneus bike_core_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bike_core_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/remote_control_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bike_core
)
_generate_msg_lisp(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_can_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bike_core
)
_generate_msg_lisp(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_motor_feedback_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bike_core
)
_generate_msg_lisp(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/pid_params_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bike_core
)
_generate_msg_lisp(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/sbus_channels_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bike_core
)

### Generating Services

### Generating Module File
_generate_module_lisp(bike_core
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bike_core
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bike_core_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bike_core_generate_messages bike_core_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/remote_control_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_lisp _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_can_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_lisp _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_motor_feedback_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_lisp _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/pid_params_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_lisp _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/sbus_channels_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_lisp _bike_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bike_core_genlisp)
add_dependencies(bike_core_genlisp bike_core_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bike_core_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/remote_control_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bike_core
)
_generate_msg_nodejs(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_can_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bike_core
)
_generate_msg_nodejs(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_motor_feedback_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bike_core
)
_generate_msg_nodejs(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/pid_params_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bike_core
)
_generate_msg_nodejs(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/sbus_channels_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bike_core
)

### Generating Services

### Generating Module File
_generate_module_nodejs(bike_core
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bike_core
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(bike_core_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(bike_core_generate_messages bike_core_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/remote_control_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_nodejs _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_can_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_nodejs _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_motor_feedback_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_nodejs _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/pid_params_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_nodejs _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/sbus_channels_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_nodejs _bike_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bike_core_gennodejs)
add_dependencies(bike_core_gennodejs bike_core_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bike_core_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/remote_control_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bike_core
)
_generate_msg_py(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_can_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bike_core
)
_generate_msg_py(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_motor_feedback_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bike_core
)
_generate_msg_py(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/pid_params_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bike_core
)
_generate_msg_py(bike_core
  "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/sbus_channels_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bike_core
)

### Generating Services

### Generating Module File
_generate_module_py(bike_core
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bike_core
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bike_core_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bike_core_generate_messages bike_core_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/remote_control_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_py _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_can_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_py _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/odrive_motor_feedback_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_py _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/pid_params_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_py _bike_core_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/whale/code/ros/bike_control/bike_control/src/bike_core/msg/sbus_channels_msg.msg" NAME_WE)
add_dependencies(bike_core_generate_messages_py _bike_core_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bike_core_genpy)
add_dependencies(bike_core_genpy bike_core_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bike_core_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bike_core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bike_core
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(bike_core_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bike_core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bike_core
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(bike_core_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bike_core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bike_core
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(bike_core_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bike_core)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bike_core
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(bike_core_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bike_core)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bike_core\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bike_core
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(bike_core_generate_messages_py std_msgs_generate_messages_py)
endif()
