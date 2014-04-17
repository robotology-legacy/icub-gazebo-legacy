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

To let know to Gazebo that models are present in this directory, you can add it to the `GAZEBO_MODEL_PATH` enviroment variable. To ensure you do not have to modify it every time you want to run a simulation, you can add a line to 
your the `.bashrc` file in your home:
```
export GAZEBO_MODEL_PATH=${GAZEBO_MODEL_PATH}:/home/user/path/to/icub_gazebo
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
