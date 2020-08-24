# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "laser_reader: 1 messages, 0 services")

set(MSG_I_FLAGS "-Ilaser_reader:/home/ssequeira/scott/scott_ws/src/laser_reader/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(laser_reader_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/ssequeira/scott/scott_ws/src/laser_reader/msg/my_msg.msg" NAME_WE)
add_custom_target(_laser_reader_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "laser_reader" "/home/ssequeira/scott/scott_ws/src/laser_reader/msg/my_msg.msg" "geometry_msgs/Vector3"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(laser_reader
  "/home/ssequeira/scott/scott_ws/src/laser_reader/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_reader
)

### Generating Services

### Generating Module File
_generate_module_cpp(laser_reader
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_reader
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(laser_reader_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(laser_reader_generate_messages laser_reader_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssequeira/scott/scott_ws/src/laser_reader/msg/my_msg.msg" NAME_WE)
add_dependencies(laser_reader_generate_messages_cpp _laser_reader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_reader_gencpp)
add_dependencies(laser_reader_gencpp laser_reader_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_reader_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(laser_reader
  "/home/ssequeira/scott/scott_ws/src/laser_reader/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laser_reader
)

### Generating Services

### Generating Module File
_generate_module_eus(laser_reader
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laser_reader
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(laser_reader_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(laser_reader_generate_messages laser_reader_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssequeira/scott/scott_ws/src/laser_reader/msg/my_msg.msg" NAME_WE)
add_dependencies(laser_reader_generate_messages_eus _laser_reader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_reader_geneus)
add_dependencies(laser_reader_geneus laser_reader_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_reader_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(laser_reader
  "/home/ssequeira/scott/scott_ws/src/laser_reader/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_reader
)

### Generating Services

### Generating Module File
_generate_module_lisp(laser_reader
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_reader
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(laser_reader_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(laser_reader_generate_messages laser_reader_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssequeira/scott/scott_ws/src/laser_reader/msg/my_msg.msg" NAME_WE)
add_dependencies(laser_reader_generate_messages_lisp _laser_reader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_reader_genlisp)
add_dependencies(laser_reader_genlisp laser_reader_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_reader_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(laser_reader
  "/home/ssequeira/scott/scott_ws/src/laser_reader/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laser_reader
)

### Generating Services

### Generating Module File
_generate_module_nodejs(laser_reader
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laser_reader
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(laser_reader_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(laser_reader_generate_messages laser_reader_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssequeira/scott/scott_ws/src/laser_reader/msg/my_msg.msg" NAME_WE)
add_dependencies(laser_reader_generate_messages_nodejs _laser_reader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_reader_gennodejs)
add_dependencies(laser_reader_gennodejs laser_reader_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_reader_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(laser_reader
  "/home/ssequeira/scott/scott_ws/src/laser_reader/msg/my_msg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_reader
)

### Generating Services

### Generating Module File
_generate_module_py(laser_reader
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_reader
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(laser_reader_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(laser_reader_generate_messages laser_reader_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/ssequeira/scott/scott_ws/src/laser_reader/msg/my_msg.msg" NAME_WE)
add_dependencies(laser_reader_generate_messages_py _laser_reader_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(laser_reader_genpy)
add_dependencies(laser_reader_genpy laser_reader_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS laser_reader_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_reader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/laser_reader
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(laser_reader_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laser_reader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/laser_reader
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(laser_reader_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_reader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/laser_reader
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(laser_reader_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laser_reader)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/laser_reader
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(laser_reader_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_reader)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_reader\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/laser_reader
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(laser_reader_generate_messages_py geometry_msgs_generate_messages_py)
endif()
