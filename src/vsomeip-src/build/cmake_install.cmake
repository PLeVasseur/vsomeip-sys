# Install script for directory: /home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "RelWithDebInfo")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/application.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/constants.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/defines.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/enumeration_types.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/error.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/export.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/function_types.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/handler.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip/internal" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/internal/deserializable.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip/internal" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/internal/serializable.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/message.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/message_base.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/payload.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/plugin.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip/plugins" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/plugins/application_plugin.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip/plugins" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/plugins/pre_configuration_plugin.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/primitive_types.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/runtime.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/trace.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/../compat/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/../compat/vsomeip/vsomeip.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/application.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/constants.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/defines.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/deprecated.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/enumeration_types.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/error.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/export.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/function_types.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/handler.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/internal" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/internal/deserializable.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/internal" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/internal/logger.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/internal" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/internal/policy_manager.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/internal" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/internal/serializable.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/message.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/message_base.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/payload.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/plugin.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/plugins" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/plugins/application_plugin.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip/plugins" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/plugins/pre_configuration_plugin.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/primitive_types.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/runtime.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/structured_types.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/trace.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/vsomeip.hpp")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/vsomeip" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/interface/vsomeip/vsomeip_sec.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3.so.3.4.10"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3.so.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/libvsomeip3.so.3.4.10"
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/libvsomeip3.so.3"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3.so.3.4.10"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3.so.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/libvsomeip3.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "shlib" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3-e2e.so.3.4.10"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3-e2e.so.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/libvsomeip3-e2e.so.3.4.10"
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/libvsomeip3-e2e.so.3"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3-e2e.so.3.4.10"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3-e2e.so.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "shlib" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/libvsomeip3-e2e.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "shlib" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3-cfg.so.3.4.10"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3-cfg.so.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/libvsomeip3-cfg.so.3.4.10"
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/libvsomeip3-cfg.so.3"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3-cfg.so.3.4.10"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3-cfg.so.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "shlib" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/libvsomeip3-cfg.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "shlib" OR NOT CMAKE_INSTALL_COMPONENT)
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3-sd.so.3.4.10"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3-sd.so.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHECK
           FILE "${file}"
           RPATH "")
    endif()
  endforeach()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/libvsomeip3-sd.so.3.4.10"
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/libvsomeip3-sd.so.3"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3-sd.so.3.4.10"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libvsomeip3-sd.so.3"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      file(RPATH_CHANGE
           FILE "${file}"
           OLD_RPATH "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build:"
           NEW_RPATH "")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "shlib" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/libvsomeip3-sd.so")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "config" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/etc/vsomeip" TYPE FILE FILES
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/config/vsomeip.json"
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/config/vsomeip-local.json"
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/config/vsomeip-tcp-client.json"
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/config/vsomeip-tcp-service.json"
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/config/vsomeip-udp-client.json"
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/config/vsomeip-udp-service.json"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vsomeip3" TYPE FILE FILES
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/vsomeip3Config.cmake"
    "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/vsomeip3ConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "dev" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vsomeip3/vsomeip3Targets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vsomeip3/vsomeip3Targets.cmake"
         "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/CMakeFiles/Export/e8383bd2cd2e54bc69fd055144e4fcbf/vsomeip3Targets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vsomeip3/vsomeip3Targets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/vsomeip3/vsomeip3Targets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vsomeip3" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/CMakeFiles/Export/e8383bd2cd2e54bc69fd055144e4fcbf/vsomeip3Targets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ww][Ii][Tt][Hh][Dd][Ee][Bb][Ii][Nn][Ff][Oo])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/vsomeip3" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/CMakeFiles/Export/e8383bd2cd2e54bc69fd055144e4fcbf/vsomeip3Targets-relwithdebinfo.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/vsomeip3.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/examples/routingmanagerd/cmake_install.cmake")
  include("/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/tools/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/xzwgzy/uProtocol/vsomeip-sys/src/vsomeip-src/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")