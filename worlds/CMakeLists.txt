file(GLOB world_files "*.world")

install(FILES ${world_files} DESTINATION share/gazebo/worlds)
