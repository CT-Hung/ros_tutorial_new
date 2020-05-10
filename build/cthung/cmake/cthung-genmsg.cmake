# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "cthung: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icthung:/home/yufen/ros_tutorial_new/src/cthung/msg;-Istd_msgs:/opt/ros/melodic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(cthung_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/yufen/ros_tutorial_new/src/cthung/msg/PrimeMsg.msg" NAME_WE)
add_custom_target(_cthung_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "cthung" "/home/yufen/ros_tutorial_new/src/cthung/msg/PrimeMsg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(cthung
  "/home/yufen/ros_tutorial_new/src/cthung/msg/PrimeMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cthung
)

### Generating Services

### Generating Module File
_generate_module_cpp(cthung
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cthung
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(cthung_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(cthung_generate_messages cthung_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yufen/ros_tutorial_new/src/cthung/msg/PrimeMsg.msg" NAME_WE)
add_dependencies(cthung_generate_messages_cpp _cthung_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cthung_gencpp)
add_dependencies(cthung_gencpp cthung_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cthung_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(cthung
  "/home/yufen/ros_tutorial_new/src/cthung/msg/PrimeMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cthung
)

### Generating Services

### Generating Module File
_generate_module_eus(cthung
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cthung
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(cthung_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(cthung_generate_messages cthung_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yufen/ros_tutorial_new/src/cthung/msg/PrimeMsg.msg" NAME_WE)
add_dependencies(cthung_generate_messages_eus _cthung_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cthung_geneus)
add_dependencies(cthung_geneus cthung_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cthung_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(cthung
  "/home/yufen/ros_tutorial_new/src/cthung/msg/PrimeMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cthung
)

### Generating Services

### Generating Module File
_generate_module_lisp(cthung
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cthung
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(cthung_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(cthung_generate_messages cthung_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yufen/ros_tutorial_new/src/cthung/msg/PrimeMsg.msg" NAME_WE)
add_dependencies(cthung_generate_messages_lisp _cthung_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cthung_genlisp)
add_dependencies(cthung_genlisp cthung_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cthung_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(cthung
  "/home/yufen/ros_tutorial_new/src/cthung/msg/PrimeMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cthung
)

### Generating Services

### Generating Module File
_generate_module_nodejs(cthung
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cthung
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(cthung_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(cthung_generate_messages cthung_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yufen/ros_tutorial_new/src/cthung/msg/PrimeMsg.msg" NAME_WE)
add_dependencies(cthung_generate_messages_nodejs _cthung_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cthung_gennodejs)
add_dependencies(cthung_gennodejs cthung_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cthung_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(cthung
  "/home/yufen/ros_tutorial_new/src/cthung/msg/PrimeMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cthung
)

### Generating Services

### Generating Module File
_generate_module_py(cthung
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cthung
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(cthung_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(cthung_generate_messages cthung_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/yufen/ros_tutorial_new/src/cthung/msg/PrimeMsg.msg" NAME_WE)
add_dependencies(cthung_generate_messages_py _cthung_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(cthung_genpy)
add_dependencies(cthung_genpy cthung_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS cthung_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cthung)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/cthung
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(cthung_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cthung)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/cthung
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(cthung_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cthung)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/cthung
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(cthung_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cthung)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/cthung
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(cthung_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cthung)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cthung\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/cthung
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(cthung_generate_messages_py std_msgs_generate_messages_py)
endif()
