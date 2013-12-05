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
cp -avr ./icub_gazebo/icub ~/.gazebo/models/icub 
```
In the repository is also present a model of only the legs of the iCub, you can install it in the same way:
```
cp -avr ./icub_gazebo/icub_legs ~/.gazebo/models/icub_legs 
```

### OS X
If you use OS X you should open the files icub/icub.sdf and icub_legs/icub_legs.sdf and replace 
every occurence of the string ".so" with the string ".dylib". This is the effect of a [Gazebo bug](https://bitbucket.org/osrf/gazebo/issue/800/plugin-loading-on-os-x).


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
