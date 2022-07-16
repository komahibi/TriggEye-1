# Install script for directory: /home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/lib/local/FaceAnalyser

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
    set(CMAKE_INSTALL_CONFIG_NAME "RELEASE")
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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/build/lib/local/FaceAnalyser/libFaceAnalyser.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/OpenFace" TYPE FILE FILES
    "/home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/lib/local/FaceAnalyser/include/Face_utils.h"
    "/home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/lib/local/FaceAnalyser/include/FaceAnalyser.h"
    "/home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/lib/local/FaceAnalyser/include/FaceAnalyserParameters.h"
    "/home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/lib/local/FaceAnalyser/include/stdafx_fa.h"
    "/home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/lib/local/FaceAnalyser/include/SVM_dynamic_lin.h"
    "/home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/lib/local/FaceAnalyser/include/SVM_static_lin.h"
    "/home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/lib/local/FaceAnalyser/include/SVR_dynamic_lin_regressors.h"
    "/home/ikomahibiki/TriggEye/OpenFace-OpenFace_2.2.0/lib/local/FaceAnalyser/include/SVR_static_lin_regressors.h"
    )
endif()

