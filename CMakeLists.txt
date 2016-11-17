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

# Install each model 
foreach (dir ${subdirs})
  install (DIRECTORY ${dir} DESTINATION share/gazebo/models)
endforeach ()


# Add worlds 
add_subdirectory(worlds)
