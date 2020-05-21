cmake_minimum_required(VERSION 2.8.11)

project(icub-gazebo)

# Add models (this are tipically contained in a models subdirectory, 
#             but for the time being we keep them in the main folder to 
#             preserve back-compatibility)

# List the subdirectories (http://stackoverflow.com/questions/7787823/cmake-how-to-get-the-name-of-all-subdirectories-of-a-directory)
macro(SUBDIRLIST result curdir)
  file(GLOB children RELATIVE ${curdir} ${curdir}/*)
  set(dirlist "")
  foreach(child ${children})
    if(IS_DIRECTORY ${curdir}/${child})
      list(APPEND dirlist ${child})
    endif()
  endforeach()
  set(${result} ${dirlist})
endmacro()

# Get list of models 
subdirlist(subdirs ${CMAKE_CURRENT_SOURCE_DIR})

# Remove the worlds directory that is not a model 
list(REMOVE_ITEM subdirs "worlds")

# Remove the urdf directory that is not a Gazebo-ready model 
list(REMOVE_ITEM subdirs "urdf")

# Install each model 
foreach (dir ${subdirs})
  install (DIRECTORY ${dir} DESTINATION share/gazebo/models)
endforeach ()

# Add worlds 
add_subdirectory(worlds)

# Install legacy URDF models roughly corresponding to iCub (no hands),
# see https://github.com/robotology/yarp-wholebodyinterface/issues/84 for more info
install(FILES urdf/model.urdf DESTINATION share/iCub/robots/icubGazeboSim)
