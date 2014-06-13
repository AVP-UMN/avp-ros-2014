# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^debug|optimized|general$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(ps4Controller_CONFIG_INCLUDED)
  return()
endif()
set(ps4Controller_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(ps4Controller_SOURCE_PREFIX /home/avp/avp-repo/avp-ros/src/ps4Controller)
  set(ps4Controller_DEVEL_PREFIX /home/avp/avp-repo/avp-ros/devel)
  set(ps4Controller_INSTALL_PREFIX "")
  set(ps4Controller_PREFIX ${ps4Controller_DEVEL_PREFIX})
else()
  set(ps4Controller_SOURCE_PREFIX "")
  set(ps4Controller_DEVEL_PREFIX "")
  set(ps4Controller_INSTALL_PREFIX /home/avp/avp-repo/avp-ros/install)
  set(ps4Controller_PREFIX ${ps4Controller_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'ps4Controller' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(ps4Controller_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/avp/avp-repo/avp-ros/devel/include" STREQUAL "")
  set(ps4Controller_INCLUDE_DIRS "")
  set(_include_dirs "/home/avp/avp-repo/avp-ros/devel/include")
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir}" STREQUAL "include")
      get_filename_component(include "${ps4Controller_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'ps4Controller' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  Ask the maintainer 'avp <avp@todo.todo>' to fix it.")
      endif()
    else()
      message(FATAL_ERROR "Project 'ps4Controller' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/avp/avp-repo/avp-ros/src/ps4Controller/${idir}'.  Ask the maintainer 'avp <avp@todo.todo>' to fix it.")
    endif()
    _list_append_unique(ps4Controller_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^debug|optimized|general$")
    list(APPEND ps4Controller_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND ps4Controller_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND ps4Controller_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/avp/avp-repo/avp-ros/devel/lib;/home/avp/avp-repo/avp-ros/devel/lib;/opt/ros/hydro/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(ps4Controller_LIBRARY_DIRS ${lib_path})
      list(APPEND ps4Controller_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'ps4Controller'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND ps4Controller_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(ps4Controller_EXPORTED_TARGETS "ps4Controller_generate_messages_cpp;ps4Controller_generate_messages_lisp;ps4Controller_generate_messages_py")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${ps4Controller_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "message_runtime")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 ps4Controller_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${ps4Controller_dep}_FOUND)
      find_package(${ps4Controller_dep} REQUIRED)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${ps4Controller_dep} REQUIRED ${depend_list})
  endif()
  _list_append_unique(ps4Controller_INCLUDE_DIRS ${${ps4Controller_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(ps4Controller_LIBRARIES ${ps4Controller_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${ps4Controller_dep}_LIBRARIES})
  _list_append_deduplicate(ps4Controller_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(ps4Controller_LIBRARIES ${ps4Controller_LIBRARIES})

  _list_append_unique(ps4Controller_LIBRARY_DIRS ${${ps4Controller_dep}_LIBRARY_DIRS})
  list(APPEND ps4Controller_EXPORTED_TARGETS ${${ps4Controller_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "ps4Controller-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${ps4Controller_DIR}/${extra})
  endif()
  include(${extra})
endforeach()