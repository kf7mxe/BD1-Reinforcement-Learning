execute_process(COMMAND "/home/trax/personal-projects/bd1-2/build/bd1_train/catkin_generated/python_distutils_install.sh" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(/home/trax/personal-projects/bd1-2/build/bd1_train/catkin_generated/python_distutils_install.sh) returned error code ")
endif()
