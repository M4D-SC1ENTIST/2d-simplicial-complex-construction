execute_process(COMMAND "/home/xechariah/projects/entry_level_project/build/rqt_mav_manager/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/xechariah/projects/entry_level_project/build/rqt_mav_manager/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
