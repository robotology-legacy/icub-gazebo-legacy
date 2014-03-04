icub_gazebo
===========

Preliminary files for simulation of the iCub humanoid robot in Gazebo (meshes courtesy of Joseph Salini - UPMC).

Installation
------------
Install [gazebo_yarp_plugins](https://github.com/robotology/gazebo_yarp_plugins)

Clone this repository:
```
git clone https://github.com/traversaro/icub_gazebo.git
```


Copy the icub directory contained in this repository in the directory ~/.gazebo/models/:
```
cp -avR ./icub_gazebo/icub ~/.gazebo/models/icub 
```
In the repository is also present a model of only the legs of the iCub, you can install it in the same way:
```
cp -avR ./icub_gazebo/icub_legs ~/.gazebo/models/icub_legs 
```

Usage
-----
As the iCub Gazebo models uses [Yarp](yarp.it), remember to start it before starting the simulation, using the following command in a console:
```
yarpserver 
```

Then, run Gazebo with the world file included in the world directory:
```
gazebo ./icub_gazebo/world/icub.world
```
or simply drag and drop the "iCub" model from the Insert tab in Gazebo.
The same instructions work also for the icub_legs model.
