# Install script for directory: /home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/whale/code/ros/bike_control/bike_control/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Debug")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/astra_camera" TYPE FILE FILES "/home/whale/code/ros/bike_control/bike_control/devel/include/astra_camera/AstraConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/astra_camera" TYPE FILE FILES "/home/whale/code/ros/bike_control/bike_control/devel/include/astra_camera/UVCCameraConfig.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/astra_camera" TYPE FILE FILES "/home/whale/code/ros/bike_control/bike_control/devel/lib/python3/dist-packages/astra_camera/__init__.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/whale/code/ros/bike_control/bike_control/devel/lib/python3/dist-packages/astra_camera/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages/astra_camera" TYPE DIRECTORY FILES "/home/whale/code/ros/bike_control/bike_control/devel/lib/python3/dist-packages/astra_camera/cfg")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/astra_camera/srv" TYPE FILE FILES
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/GetSerial.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/GetDeviceType.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/GetIRGain.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/GetCameraInfo.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/GetUVCExposure.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/GetIRExposure.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/GetUVCGain.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/GetUVCWhiteBalance.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetUVCWhiteBalance.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetUVCGain.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetIRExposure.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetIRGain.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetIRFlood.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetLaser.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetLDP.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetFan.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetUVCExposure.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/ResetIRGain.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/ResetIRExposure.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SwitchIRCamera.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetDistortioncal.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetAeEnable.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/GetVersion.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetAutoExposure.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetAutoWhiteBalance.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetMirror.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/SetUVCMirror.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/GetUVCMirror.srv"
    "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/srv/GetCameraParams.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/astra_camera/cmake" TYPE FILE FILES "/home/whale/code/ros/bike_control/bike_control/build/ros_astra_camera/catkin_generated/installspace/astra_camera-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/whale/code/ros/bike_control/bike_control/devel/include/astra_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/whale/code/ros/bike_control/bike_control/devel/share/roseus/ros/astra_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/whale/code/ros/bike_control/bike_control/devel/share/common-lisp/ros/astra_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/whale/code/ros/bike_control/bike_control/devel/share/gennodejs/ros/astra_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/whale/code/ros/bike_control/bike_control/devel/lib/python3/dist-packages/astra_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/whale/code/ros/bike_control/bike_control/devel/lib/python3/dist-packages/astra_camera")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/whale/code/ros/bike_control/bike_control/build/ros_astra_camera/catkin_generated/installspace/astra_camera.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/astra_camera/cmake" TYPE FILE FILES "/home/whale/code/ros/bike_control/bike_control/build/ros_astra_camera/catkin_generated/installspace/astra_camera-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/astra_camera/cmake" TYPE FILE FILES
    "/home/whale/code/ros/bike_control/bike_control/build/ros_astra_camera/catkin_generated/installspace/astra_cameraConfig.cmake"
    "/home/whale/code/ros/bike_control/bike_control/build/ros_astra_camera/catkin_generated/installspace/astra_cameraConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/astra_camera" TYPE FILE FILES "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_wrapper.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_wrapper.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_wrapper.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/whale/code/ros/bike_control/bike_control/devel/lib/libastra_wrapper.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_wrapper.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_wrapper.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_wrapper.so"
         OLD_RPATH "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/include/openni2_redist/x64:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_calib3d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_core:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_features2d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_flann:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_highgui:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgcodecs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ml:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_photo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stitching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_video:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videoio:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_aruco:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bgsegm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bioinspired:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ccalib:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_datasets:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dpm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_face:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_freetype:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_fuzzy:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hdf:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hfs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_img_hash:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_line_descriptor:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_optflow:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_phase_unwrapping:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_plot:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_quality:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_reg:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_rgbd:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_saliency:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_shape:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stereo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_structured_light:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_surface_matching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_text:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_tracking:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videostab:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_viz:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ximgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xobjdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xphoto:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_wrapper.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_camera_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_camera_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_camera_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/whale/code/ros/bike_control/bike_control/devel/lib/libastra_camera_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_camera_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_camera_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_camera_nodelet.so"
         OLD_RPATH "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/include/openni2_redist/x64:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_calib3d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_core:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_features2d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_flann:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_highgui:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgcodecs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ml:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_photo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stitching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_video:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videoio:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_aruco:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bgsegm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bioinspired:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ccalib:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_datasets:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dpm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_face:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_freetype:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_fuzzy:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hdf:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hfs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_img_hash:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_line_descriptor:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_optflow:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_phase_unwrapping:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_plot:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_quality:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_reg:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_rgbd:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_saliency:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_shape:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stereo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_structured_light:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_surface_matching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_text:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_tracking:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videostab:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_viz:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ximgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xobjdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xphoto:/home/whale/code/ros/bike_control/bike_control/devel/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_camera_nodelet.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_camera_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_camera_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/astra_camera" TYPE EXECUTABLE FILES "/home/whale/code/ros/bike_control/bike_control/devel/lib/astra_camera/astra_camera_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_camera_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_camera_node"
         OLD_RPATH "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/include/openni2_redist/x64:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_calib3d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_core:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_features2d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_flann:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_highgui:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgcodecs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ml:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_photo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stitching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_video:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videoio:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_aruco:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bgsegm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bioinspired:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ccalib:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_datasets:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dpm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_face:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_freetype:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_fuzzy:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hdf:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hfs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_img_hash:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_line_descriptor:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_optflow:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_phase_unwrapping:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_plot:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_quality:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_reg:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_rgbd:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_saliency:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_shape:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stereo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_structured_light:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_surface_matching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_text:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_tracking:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videostab:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_viz:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ximgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xobjdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xphoto:/home/whale/code/ros/bike_control/bike_control/devel/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_camera_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_list_devices" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_list_devices")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_list_devices"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/astra_camera" TYPE EXECUTABLE FILES "/home/whale/code/ros/bike_control/bike_control/devel/lib/astra_camera/astra_list_devices")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_list_devices" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_list_devices")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_list_devices"
         OLD_RPATH "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/include/openni2_redist/x64:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_calib3d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_core:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_features2d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_flann:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_highgui:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgcodecs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ml:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_photo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stitching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_video:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videoio:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_aruco:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bgsegm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bioinspired:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ccalib:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_datasets:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dpm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_face:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_freetype:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_fuzzy:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hdf:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hfs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_img_hash:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_line_descriptor:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_optflow:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_phase_unwrapping:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_plot:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_quality:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_reg:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_rgbd:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_saliency:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_shape:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stereo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_structured_light:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_surface_matching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_text:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_tracking:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videostab:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_viz:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ximgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xobjdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xphoto:/home/whale/code/ros/bike_control/bike_control/devel/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_list_devices")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_driver_lib.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_driver_lib.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_driver_lib.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/whale/code/ros/bike_control/bike_control/devel/lib/libastra_driver_lib.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_driver_lib.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_driver_lib.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_driver_lib.so"
         OLD_RPATH "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/include/openni2_redist/x64:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_calib3d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_core:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_features2d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_flann:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_highgui:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgcodecs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ml:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_photo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stitching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_video:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videoio:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_aruco:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bgsegm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bioinspired:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ccalib:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_datasets:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dpm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_face:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_freetype:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_fuzzy:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hdf:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hfs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_img_hash:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_line_descriptor:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_optflow:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_phase_unwrapping:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_plot:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_quality:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_reg:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_rgbd:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_saliency:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_shape:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stereo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_structured_light:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_surface_matching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_text:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_tracking:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videostab:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_viz:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ximgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xobjdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xphoto:/home/whale/code/ros/bike_control/bike_control/devel/lib:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libastra_driver_lib.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_usb_reset" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_usb_reset")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_usb_reset"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/astra_camera" TYPE EXECUTABLE FILES "/home/whale/code/ros/bike_control/bike_control/devel/lib/astra_camera/astra_usb_reset")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_usb_reset" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_usb_reset")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/astra_usb_reset")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/include/openni2_redist/x64/libOpenNI2.so")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/" TYPE DIRECTORY FILES "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/include/openni2_redist/x64/OpenNI2")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/astra_camera" TYPE FILE FILES "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/astra_nodelets.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/astra_camera" TYPE FILE FILES "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/56-orbbec-usb.rules")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/astra_camera" TYPE DIRECTORY FILES "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/scripts")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/astra_camera" TYPE FILE FILES "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/56-orbbec-usb.rules")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/astra_camera" TYPE DIRECTORY FILES "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/scripts")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/camera_node")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/camera_node"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/astra_camera" TYPE EXECUTABLE FILES "/home/whale/code/ros/bike_control/bike_control/devel/lib/astra_camera/camera_node")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/camera_node" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/camera_node")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/camera_node"
         OLD_RPATH "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/include/openni2_redist/x64:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_calib3d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_core:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_features2d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_flann:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_highgui:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgcodecs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ml:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_photo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stitching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_video:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videoio:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_aruco:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bgsegm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bioinspired:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ccalib:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_datasets:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dpm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_face:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_freetype:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_fuzzy:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hdf:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hfs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_img_hash:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_line_descriptor:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_optflow:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_phase_unwrapping:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_plot:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_quality:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_reg:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_rgbd:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_saliency:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_shape:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stereo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_structured_light:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_surface_matching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_text:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_tracking:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videostab:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_viz:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ximgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xobjdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xphoto:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/astra_camera/camera_node")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblibuvc_camera_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblibuvc_camera_nodelet.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblibuvc_camera_nodelet.so"
         RPATH "")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/home/whale/code/ros/bike_control/bike_control/devel/lib/liblibuvc_camera_nodelet.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblibuvc_camera_nodelet.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblibuvc_camera_nodelet.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblibuvc_camera_nodelet.so"
         OLD_RPATH "/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/include/openni2_redist/x64:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_calib3d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_core:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_features2d:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_flann:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_highgui:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgcodecs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_imgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ml:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_photo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stitching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_video:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videoio:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_aruco:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bgsegm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_bioinspired:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ccalib:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_datasets:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_objdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dnn_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_dpm:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_face:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_freetype:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_fuzzy:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hdf:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_hfs:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_img_hash:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_line_descriptor:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_optflow:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_phase_unwrapping:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_plot:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_quality:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_reg:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_rgbd:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_saliency:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_shape:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_stereo:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_structured_light:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_superres:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_surface_matching:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_text:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_tracking:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_videostab:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_viz:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_ximgproc:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xobjdetect:/home/whale/code/ros/bike_control/bike_control/src/ros_astra_camera/opencv_xphoto:/opt/ros/noetic/lib:"
         NEW_RPATH "")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/liblibuvc_camera_nodelet.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
endif()

