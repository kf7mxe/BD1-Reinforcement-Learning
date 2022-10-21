# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "bd1_environment_interface: 1 messages, 4 services")

set(MSG_I_FLAGS "-Ibd1_environment_interface:/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(bd1_environment_interface_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg" NAME_WE)
add_custom_target(_bd1_environment_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bd1_environment_interface" "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg" ""
)

get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetAction.srv" NAME_WE)
add_custom_target(_bd1_environment_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bd1_environment_interface" "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetAction.srv" ""
)

get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetVectAction.srv" NAME_WE)
add_custom_target(_bd1_environment_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bd1_environment_interface" "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetVectAction.srv" ""
)

get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetStateAndReward.srv" NAME_WE)
add_custom_target(_bd1_environment_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bd1_environment_interface" "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetStateAndReward.srv" "bd1_environment_interface/State"
)

get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetVectStateAndReward.srv" NAME_WE)
add_custom_target(_bd1_environment_interface_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "bd1_environment_interface" "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetVectStateAndReward.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bd1_environment_interface
)

### Generating Services
_generate_srv_cpp(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_cpp(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetVectAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_cpp(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetStateAndReward.srv"
  "${MSG_I_FLAGS}"
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_cpp(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetVectStateAndReward.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bd1_environment_interface
)

### Generating Module File
_generate_module_cpp(bd1_environment_interface
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bd1_environment_interface
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(bd1_environment_interface_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(bd1_environment_interface_generate_messages bd1_environment_interface_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_cpp _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetAction.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_cpp _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetVectAction.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_cpp _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetStateAndReward.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_cpp _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetVectStateAndReward.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_cpp _bd1_environment_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bd1_environment_interface_gencpp)
add_dependencies(bd1_environment_interface_gencpp bd1_environment_interface_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bd1_environment_interface_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bd1_environment_interface
)

### Generating Services
_generate_srv_eus(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_eus(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetVectAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_eus(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetStateAndReward.srv"
  "${MSG_I_FLAGS}"
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_eus(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetVectStateAndReward.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bd1_environment_interface
)

### Generating Module File
_generate_module_eus(bd1_environment_interface
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bd1_environment_interface
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(bd1_environment_interface_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(bd1_environment_interface_generate_messages bd1_environment_interface_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_eus _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetAction.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_eus _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetVectAction.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_eus _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetStateAndReward.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_eus _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetVectStateAndReward.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_eus _bd1_environment_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bd1_environment_interface_geneus)
add_dependencies(bd1_environment_interface_geneus bd1_environment_interface_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bd1_environment_interface_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bd1_environment_interface
)

### Generating Services
_generate_srv_lisp(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_lisp(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetVectAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_lisp(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetStateAndReward.srv"
  "${MSG_I_FLAGS}"
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_lisp(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetVectStateAndReward.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bd1_environment_interface
)

### Generating Module File
_generate_module_lisp(bd1_environment_interface
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bd1_environment_interface
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(bd1_environment_interface_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(bd1_environment_interface_generate_messages bd1_environment_interface_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_lisp _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetAction.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_lisp _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetVectAction.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_lisp _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetStateAndReward.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_lisp _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetVectStateAndReward.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_lisp _bd1_environment_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bd1_environment_interface_genlisp)
add_dependencies(bd1_environment_interface_genlisp bd1_environment_interface_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bd1_environment_interface_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bd1_environment_interface
)

### Generating Services
_generate_srv_nodejs(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_nodejs(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetVectAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_nodejs(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetStateAndReward.srv"
  "${MSG_I_FLAGS}"
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_nodejs(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetVectStateAndReward.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bd1_environment_interface
)

### Generating Module File
_generate_module_nodejs(bd1_environment_interface
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bd1_environment_interface
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(bd1_environment_interface_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(bd1_environment_interface_generate_messages bd1_environment_interface_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_nodejs _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetAction.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_nodejs _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetVectAction.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_nodejs _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetStateAndReward.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_nodejs _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetVectStateAndReward.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_nodejs _bd1_environment_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bd1_environment_interface_gennodejs)
add_dependencies(bd1_environment_interface_gennodejs bd1_environment_interface_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bd1_environment_interface_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bd1_environment_interface
)

### Generating Services
_generate_srv_py(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_py(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetVectAction.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_py(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetStateAndReward.srv"
  "${MSG_I_FLAGS}"
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bd1_environment_interface
)
_generate_srv_py(bd1_environment_interface
  "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetVectStateAndReward.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bd1_environment_interface
)

### Generating Module File
_generate_module_py(bd1_environment_interface
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bd1_environment_interface
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(bd1_environment_interface_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(bd1_environment_interface_generate_messages bd1_environment_interface_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/msg/State.msg" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_py _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetAction.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_py _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/SetVectAction.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_py _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetStateAndReward.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_py _bd1_environment_interface_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/trax/personal-projects/bd1-2/src/bd1_environment_interface/srv/GetVectStateAndReward.srv" NAME_WE)
add_dependencies(bd1_environment_interface_generate_messages_py _bd1_environment_interface_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(bd1_environment_interface_genpy)
add_dependencies(bd1_environment_interface_genpy bd1_environment_interface_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS bd1_environment_interface_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bd1_environment_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/bd1_environment_interface
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(bd1_environment_interface_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bd1_environment_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/bd1_environment_interface
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(bd1_environment_interface_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bd1_environment_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/bd1_environment_interface
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(bd1_environment_interface_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bd1_environment_interface)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/bd1_environment_interface
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(bd1_environment_interface_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bd1_environment_interface)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bd1_environment_interface\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/bd1_environment_interface
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(bd1_environment_interface_generate_messages_py std_msgs_generate_messages_py)
endif()