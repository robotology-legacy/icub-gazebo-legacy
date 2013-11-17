icub_gazebo
===========

Preliminary files for simulation of the iCub humanoid robot in Gazebo

#Installation
Install [Gazebo](http://gazebosim.org/) and [gazebo_yarp_plugins](https://github.com/robotology/gazebo_yarp_plugins)

Clone this repository:
```
git clone https://github.com/traversaro/icub_gazebo.git
```


Copy the icub directory contained in this repository in the directory ~/.gazebo/models/:
```
cp -avr ./icub_gazebo/icub ~/.gazebo/models/icub 
```

#Use 
Run Gazebo with the world file included in the world directory:
```
gazebo ./icub_gazebo/world/icub.world
```
or simply drag and drop the "iCub" model from the Insert tab in Gazebo.
